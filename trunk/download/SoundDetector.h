#pragma once
#include "Prerequisites.h"
#include <OgreNewt.h>
#include "Event.h"
#include "ClassPack.h"
#include "EventManager.h"
#include "ObjectManager.h"
#include "Object.h"


/**
*	The Sound Detector Class will create a sphere around a node,
*	A MovableObject listener is placed on the sphere and will save
*	incoming and outgoing lists of MovableObjects to generate Events
*/
class SoundDetector
{
protected :

	bool debug;	// debug mode if true

	Ogre::String mName;
	Ogre::Sphere mSphere; // Shape of the listener
	Ogre::Entity* mSphereEnt; // Sphere entity
	Ogre::SphereSceneQuery* mSphereScQry; // The actual listener
	Ogre::SceneQueryResultMovableList mSqMovableList; // The saved list of movables
	Ogre::SceneQueryResultMovableList::iterator j;
	Ogre::SceneNode* mNode;	// The node representing the center of the sphere
	ObjectManager* mObjMng; 
	EventManager* eventMng;


	std::map<Ogre::String, bool> mDetectableObjects; // Map of predefined visible objects
	std::map< Ogre::String, bool >::iterator i; // map iterator

	Ogre::String value1;
	Ogre::String value2;

	/**
	*	This method will go through the map to see if preselected visible objects 
	*	are seen by the visual detection
	*/
	void _processMap( void );

	/**
	*	Outputs an event that says that a preselected visible object came into view
	*
	*		@param
	*
	*			-objectName String representing an Incoming object
	*/
	void _generateEventIncomingObject( Ogre::String objectName );

	/**
	*	Outputs an event that says that a preselected visible object exited the view
	*
	*		@param
	*
	*			-objectName String representing an outgoing object
	*/
	void _generateEventOutgoingObject( Ogre::String objectName );


public:

	/**
	*	Constructor
	*	@param
	*			attachedNode - node that will be the center of the sphere
	*			radius - radius of the sphere
	*			name
	*/
	SoundDetector( Ogre::String name, Ogre::SceneNode* attachedNode, Ogre::Real radius );

	/**
	 *	Destructor
	 */
	~SoundDetector( void );

	/**
	 *	Update position and object lists - must be in a FrameListener
	 */
	void refresh( void );

	/**
	*	Add a preselected visable object to the preselected visible object map
	*/
	void addDetectableObject( Ogre::String objectName );

	/**
	*	returns current preselected visible object map
	*/
	std::map<Ogre::String, bool> getDetectableObjectList( void );

	/**
	*	SetDebug to true
	*/
	void setDebug( bool debugValue ){ debug = debugValue; }

	/**
	*	Get debug value
	*/
	bool getDebug(){ return debug; }

};


