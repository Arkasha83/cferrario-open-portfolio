#include "SoundDetector.h"

SoundDetector::SoundDetector( Ogre::String name, Ogre::SceneNode* parentNode, 
							 Ogre::Real radius )
{
	// set to true if you want debugging
	setDebug( false );

	// create the sphereQuery
	mName = name;
	mNode = parentNode->createChildSceneNode( mName );

	//Create Sphere query
	Ogre::Sphere sphere( parentNode->getPosition(), radius );
	mSphere = sphere;
	mSphereScQry = ClassPack::getSingleton()->getSceneManager()->createSphereQuery( mSphere );

	//Create Sphere Entity
	mSphereEnt = ClassPack::getSingleton()->getSceneManager()->createEntity( mName+"ShpQry", "sphere.mesh" );
	mNode->setScale( radius, radius, radius );
	mNode->createChildSceneNode( mName+"Sphere" )->attachObject( mSphereEnt );
	mSphereEnt->setMaterialName( "Simple/Translucent" );
	mSphereEnt->setVisible( false );

	// Get initial results
	mSqMovableList = mSphereScQry->execute().movables;

	mObjMng = ObjectManager::getSingleton();
	eventMng = EventManager::getSingleton();
}

SoundDetector::~SoundDetector( void )
{
	delete mNode;
}

void SoundDetector::refresh( void )
{
	// Update sphere position
	mSphere.setCenter( mNode->getParentSceneNode()->getPosition() );
	mSphereScQry->setSphere( mSphere );

	// execute Query
	mSqMovableList =  mSphereScQry->execute().movables;

	_processMap();

	mSphereEnt->setVisible( debug );
}

void SoundDetector::_processMap( void )
{
	bool foundMatch = false;

	for( i = mDetectableObjects.begin(); i != mDetectableObjects.end(); i++ )
	{
		value1 = i->first;

		if( mObjMng->getObject( value1 ) )
		{
			for( j = mSqMovableList.begin(); j != mSqMovableList.end(); j++ )
			{
				value2 = (*j)->getName();
				if( value1 == value2 )
					foundMatch = true;

				if( value1 == value2 && !i->second )
				{					
					if( debug )
						mObjMng->getObject( value1 )->getNode()->showBoundingBox( true );
					_generateEventIncomingObject( value1 );
					i->second = true;
				}
			}

			if( !foundMatch && i->second )
			{
				mObjMng->getObject( value1 )->getNode()->showBoundingBox( false );
				_generateEventOutgoingObject( value1 );
				i->second = false;
			}
		}
	}
}

void SoundDetector::addDetectableObject( Ogre::String objectName )
{
	mDetectableObjects[ objectName ] = false; 
}

std::map< Ogre::String, bool > SoundDetector::getDetectableObjectList()
{
	return mDetectableObjects;
}

void SoundDetector::_generateEventIncomingObject( Ogre::String objectName )
{
	if( debug )
	{
		Ogre::RenderWindow* win = ClassPack::getSingleton()->getRenderWindow();
		Ogre::String str = "Incoming : ";
		str.append( objectName );
		win->setDebugText( str );
	}
	eventMng->createDetectionEvent("incomingSound_" + mName, objectName );
	eventMng->createDetectionEvent("incomingSound_" + objectName, mName );
}

void SoundDetector::_generateEventOutgoingObject(Ogre::String objectName)
{
	if(debug)
	{
		Ogre::RenderWindow* win = ClassPack::getSingleton()->getRenderWindow();
		Ogre::String str = "Outgoing : ";
		str.append( objectName );
		win->setDebugText( str );
	}
	eventMng->createDetectionEvent("outgoingSound_" + mName, objectName);
}
