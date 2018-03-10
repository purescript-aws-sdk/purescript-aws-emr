

-- | <p>Amazon EMR is a web service that makes it easy to process large amounts of data efficiently. Amazon EMR uses Hadoop processing combined with several AWS products to do tasks such as web indexing, data mining, log file analysis, machine learning, scientific simulation, and data warehousing.</p>
module AWS.EMR where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "EMR" :: String


-- | <p>Adds an instance fleet to a running cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x.</p> </note>
addInstanceFleet :: forall eff. AddInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) AddInstanceFleetOutput
addInstanceFleet = Request.request serviceName "addInstanceFleet" 


-- | <p>Adds one or more instance groups to a running cluster.</p>
addInstanceGroups :: forall eff. AddInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) AddInstanceGroupsOutput
addInstanceGroups = Request.request serviceName "addInstanceGroups" 


-- | <p>AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step.</p> <p>Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully.</p> <p>You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.</p>
addJobFlowSteps :: forall eff. AddJobFlowStepsInput -> Aff (exception :: EXCEPTION | eff) AddJobFlowStepsOutput
addJobFlowSteps = Request.request serviceName "addJobFlowSteps" 


-- | <p>Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>
addTags :: forall eff. AddTagsInput -> Aff (exception :: EXCEPTION | eff) AddTagsOutput
addTags = Request.request serviceName "addTags" 


-- | <p>Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a <code>PENDING</code> state.</p>
cancelSteps :: forall eff. CancelStepsInput -> Aff (exception :: EXCEPTION | eff) CancelStepsOutput
cancelSteps = Request.request serviceName "cancelSteps" 


-- | <p>Creates a security configuration, which is stored in the service and can be specified when a cluster is created.</p>
createSecurityConfiguration :: forall eff. CreateSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) CreateSecurityConfigurationOutput
createSecurityConfiguration = Request.request serviceName "createSecurityConfiguration" 


-- | <p>Deletes a security configuration.</p>
deleteSecurityConfiguration :: forall eff. DeleteSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) DeleteSecurityConfigurationOutput
deleteSecurityConfiguration = Request.request serviceName "deleteSecurityConfiguration" 


-- | <p>Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. For information about the cluster steps, see <a>ListSteps</a>.</p>
describeCluster :: forall eff. DescribeClusterInput -> Aff (exception :: EXCEPTION | eff) DescribeClusterOutput
describeCluster = Request.request serviceName "describeCluster" 


-- | <p>This API is deprecated and will eventually be removed. We recommend you use <a>ListClusters</a>, <a>DescribeCluster</a>, <a>ListSteps</a>, <a>ListInstanceGroups</a> and <a>ListBootstrapActions</a> instead.</p> <p>DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time.</p> <p>Regardless of supplied parameters, only job flows created within the last two months are returned.</p> <p>If no parameters are supplied, then job flows matching either of the following criteria are returned:</p> <ul> <li> <p>Job flows created and completed in the last two weeks</p> </li> <li> <p> Job flows created within the last two months that are in one of the following states: <code>RUNNING</code>, <code>WAITING</code>, <code>SHUTTING_DOWN</code>, <code>STARTING</code> </p> </li> </ul> <p>Amazon EMR can return a maximum of 512 job flow descriptions.</p>
describeJobFlows :: forall eff. DescribeJobFlowsInput -> Aff (exception :: EXCEPTION | eff) DescribeJobFlowsOutput
describeJobFlows = Request.request serviceName "describeJobFlows" 


-- | <p>Provides the details of a security configuration by returning the configuration JSON.</p>
describeSecurityConfiguration :: forall eff. DescribeSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) DescribeSecurityConfigurationOutput
describeSecurityConfiguration = Request.request serviceName "describeSecurityConfiguration" 


-- | <p>Provides more detail about the cluster step.</p>
describeStep :: forall eff. DescribeStepInput -> Aff (exception :: EXCEPTION | eff) DescribeStepOutput
describeStep = Request.request serviceName "describeStep" 


-- | <p>Provides information about the bootstrap actions associated with a cluster.</p>
listBootstrapActions :: forall eff. ListBootstrapActionsInput -> Aff (exception :: EXCEPTION | eff) ListBootstrapActionsOutput
listBootstrapActions = Request.request serviceName "listBootstrapActions" 


-- | <p>Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.</p>
listClusters :: forall eff. ListClustersInput -> Aff (exception :: EXCEPTION | eff) ListClustersOutput
listClusters = Request.request serviceName "listClusters" 


-- | <p>Lists all available details about the instance fleets in a cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
listInstanceFleets :: forall eff. ListInstanceFleetsInput -> Aff (exception :: EXCEPTION | eff) ListInstanceFleetsOutput
listInstanceFleets = Request.request serviceName "listInstanceFleets" 


-- | <p>Provides all available details about the instance groups in a cluster.</p>
listInstanceGroups :: forall eff. ListInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) ListInstanceGroupsOutput
listInstanceGroups = Request.request serviceName "listInstanceGroups" 


-- | <p>Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.</p>
listInstances :: forall eff. ListInstancesInput -> Aff (exception :: EXCEPTION | eff) ListInstancesOutput
listInstances = Request.request serviceName "listInstances" 


-- | <p>Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.</p>
listSecurityConfigurations :: forall eff. ListSecurityConfigurationsInput -> Aff (exception :: EXCEPTION | eff) ListSecurityConfigurationsOutput
listSecurityConfigurations = Request.request serviceName "listSecurityConfigurations" 


-- | <p>Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.</p>
listSteps :: forall eff. ListStepsInput -> Aff (exception :: EXCEPTION | eff) ListStepsOutput
listSteps = Request.request serviceName "listSteps" 


-- | <p>Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
modifyInstanceFleet :: forall eff. ModifyInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
modifyInstanceFleet = Request.request serviceName "modifyInstanceFleet" 


-- | <p>ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.</p>
modifyInstanceGroups :: forall eff. ModifyInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
modifyInstanceGroups = Request.request serviceName "modifyInstanceGroups" 


-- | <p>Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.</p>
putAutoScalingPolicy :: forall eff. PutAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) PutAutoScalingPolicyOutput
putAutoScalingPolicy = Request.request serviceName "putAutoScalingPolicy" 


-- | <p>Removes an automatic scaling policy from a specified instance group within an EMR cluster.</p>
removeAutoScalingPolicy :: forall eff. RemoveAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) RemoveAutoScalingPolicyOutput
removeAutoScalingPolicy = Request.request serviceName "removeAutoScalingPolicy" 


-- | <p>Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p> <p>The following example removes the stack tag with value Prod from a cluster:</p>
removeTags :: forall eff. RemoveTagsInput -> Aff (exception :: EXCEPTION | eff) RemoveTagsOutput
removeTags = Request.request serviceName "removeTags" 


-- | <p>RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the <a>JobFlowInstancesConfig</a> <code>KeepJobFlowAliveWhenNoSteps</code> parameter is set to <code>TRUE</code>, the cluster transitions to the WAITING state rather than shutting down after the steps have completed. </p> <p>For additional protection, you can set the <a>JobFlowInstancesConfig</a> <code>TerminationProtected</code> parameter to <code>TRUE</code> to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error.</p> <p>A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>For long running clusters, we recommend that you periodically store your results.</p> <note> <p>The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both.</p> </note>
runJobFlow :: forall eff. RunJobFlowInput -> Aff (exception :: EXCEPTION | eff) RunJobFlowOutput
runJobFlow = Request.request serviceName "runJobFlow" 


-- | <p>SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling <code>SetTerminationProtection</code> on a cluster is similar to calling the Amazon EC2 <code>DisableAPITermination</code> API on all EC2 instances in a cluster.</p> <p> <code>SetTerminationProtection</code> is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.</p> <p> To terminate a cluster that has been locked by setting <code>SetTerminationProtection</code> to <code>true</code>, you must first unlock the job flow by a subsequent call to <code>SetTerminationProtection</code> in which you set the value to <code>false</code>. </p> <p> For more information, see<a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html">Managing Cluster Termination</a> in the <i>Amazon EMR Management Guide</i>. </p>
setTerminationProtection :: forall eff. SetTerminationProtectionInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setTerminationProtection = Request.request serviceName "setTerminationProtection" 


-- | <p>Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the <code>VisibleToAllUsers</code> parameter of <a>RunJobFlow</a>. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.</p>
setVisibleToAllUsers :: forall eff. SetVisibleToAllUsersInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
setVisibleToAllUsers = Request.request serviceName "setVisibleToAllUsers" 


-- | <p>TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.</p> <p>The maximum number of clusters allowed is 10. The call to <code>TerminateJobFlows</code> is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.</p>
terminateJobFlows :: forall eff. TerminateJobFlowsInput -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
terminateJobFlows = Request.request serviceName "terminateJobFlows" 


newtype ActionOnFailure = ActionOnFailure String
derive instance newtypeActionOnFailure :: Newtype ActionOnFailure _
derive instance repGenericActionOnFailure :: Generic ActionOnFailure _
instance showActionOnFailure :: Show ActionOnFailure where
  show = genericShow
instance decodeActionOnFailure :: Decode ActionOnFailure where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActionOnFailure :: Encode ActionOnFailure where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AddInstanceFleetInput = AddInstanceFleetInput 
  { "ClusterId" :: (XmlStringMaxLen256)
  , "InstanceFleet" :: (InstanceFleetConfig)
  }
derive instance newtypeAddInstanceFleetInput :: Newtype AddInstanceFleetInput _
derive instance repGenericAddInstanceFleetInput :: Generic AddInstanceFleetInput _
instance showAddInstanceFleetInput :: Show AddInstanceFleetInput where
  show = genericShow
instance decodeAddInstanceFleetInput :: Decode AddInstanceFleetInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddInstanceFleetInput :: Encode AddInstanceFleetInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddInstanceFleetInput from required parameters
newAddInstanceFleetInput :: XmlStringMaxLen256 -> InstanceFleetConfig -> AddInstanceFleetInput
newAddInstanceFleetInput _ClusterId _InstanceFleet = AddInstanceFleetInput { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }

-- | Constructs AddInstanceFleetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceFleetInput' :: XmlStringMaxLen256 -> InstanceFleetConfig -> ( { "ClusterId" :: (XmlStringMaxLen256) , "InstanceFleet" :: (InstanceFleetConfig) } -> {"ClusterId" :: (XmlStringMaxLen256) , "InstanceFleet" :: (InstanceFleetConfig) } ) -> AddInstanceFleetInput
newAddInstanceFleetInput' _ClusterId _InstanceFleet customize = (AddInstanceFleetInput <<< customize) { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }



newtype AddInstanceFleetOutput = AddInstanceFleetOutput 
  { "ClusterId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId)
  }
derive instance newtypeAddInstanceFleetOutput :: Newtype AddInstanceFleetOutput _
derive instance repGenericAddInstanceFleetOutput :: Generic AddInstanceFleetOutput _
instance showAddInstanceFleetOutput :: Show AddInstanceFleetOutput where
  show = genericShow
instance decodeAddInstanceFleetOutput :: Decode AddInstanceFleetOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddInstanceFleetOutput :: Encode AddInstanceFleetOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddInstanceFleetOutput from required parameters
newAddInstanceFleetOutput :: AddInstanceFleetOutput
newAddInstanceFleetOutput  = AddInstanceFleetOutput { "ClusterId": (NullOrUndefined Nothing), "InstanceFleetId": (NullOrUndefined Nothing) }

-- | Constructs AddInstanceFleetOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceFleetOutput' :: ( { "ClusterId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) } -> {"ClusterId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) } ) -> AddInstanceFleetOutput
newAddInstanceFleetOutput'  customize = (AddInstanceFleetOutput <<< customize) { "ClusterId": (NullOrUndefined Nothing), "InstanceFleetId": (NullOrUndefined Nothing) }



-- | <p>Input to an AddInstanceGroups call.</p>
newtype AddInstanceGroupsInput = AddInstanceGroupsInput 
  { "InstanceGroups" :: (InstanceGroupConfigList)
  , "JobFlowId" :: (XmlStringMaxLen256)
  }
derive instance newtypeAddInstanceGroupsInput :: Newtype AddInstanceGroupsInput _
derive instance repGenericAddInstanceGroupsInput :: Generic AddInstanceGroupsInput _
instance showAddInstanceGroupsInput :: Show AddInstanceGroupsInput where
  show = genericShow
instance decodeAddInstanceGroupsInput :: Decode AddInstanceGroupsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddInstanceGroupsInput :: Encode AddInstanceGroupsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddInstanceGroupsInput from required parameters
newAddInstanceGroupsInput :: InstanceGroupConfigList -> XmlStringMaxLen256 -> AddInstanceGroupsInput
newAddInstanceGroupsInput _InstanceGroups _JobFlowId = AddInstanceGroupsInput { "InstanceGroups": _InstanceGroups, "JobFlowId": _JobFlowId }

-- | Constructs AddInstanceGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceGroupsInput' :: InstanceGroupConfigList -> XmlStringMaxLen256 -> ( { "InstanceGroups" :: (InstanceGroupConfigList) , "JobFlowId" :: (XmlStringMaxLen256) } -> {"InstanceGroups" :: (InstanceGroupConfigList) , "JobFlowId" :: (XmlStringMaxLen256) } ) -> AddInstanceGroupsInput
newAddInstanceGroupsInput' _InstanceGroups _JobFlowId customize = (AddInstanceGroupsInput <<< customize) { "InstanceGroups": _InstanceGroups, "JobFlowId": _JobFlowId }



-- | <p>Output from an AddInstanceGroups call.</p>
newtype AddInstanceGroupsOutput = AddInstanceGroupsOutput 
  { "JobFlowId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "InstanceGroupIds" :: NullOrUndefined.NullOrUndefined (InstanceGroupIdsList)
  }
derive instance newtypeAddInstanceGroupsOutput :: Newtype AddInstanceGroupsOutput _
derive instance repGenericAddInstanceGroupsOutput :: Generic AddInstanceGroupsOutput _
instance showAddInstanceGroupsOutput :: Show AddInstanceGroupsOutput where
  show = genericShow
instance decodeAddInstanceGroupsOutput :: Decode AddInstanceGroupsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddInstanceGroupsOutput :: Encode AddInstanceGroupsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddInstanceGroupsOutput from required parameters
newAddInstanceGroupsOutput :: AddInstanceGroupsOutput
newAddInstanceGroupsOutput  = AddInstanceGroupsOutput { "InstanceGroupIds": (NullOrUndefined Nothing), "JobFlowId": (NullOrUndefined Nothing) }

-- | Constructs AddInstanceGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceGroupsOutput' :: ( { "JobFlowId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceGroupIds" :: NullOrUndefined.NullOrUndefined (InstanceGroupIdsList) } -> {"JobFlowId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceGroupIds" :: NullOrUndefined.NullOrUndefined (InstanceGroupIdsList) } ) -> AddInstanceGroupsOutput
newAddInstanceGroupsOutput'  customize = (AddInstanceGroupsOutput <<< customize) { "InstanceGroupIds": (NullOrUndefined Nothing), "JobFlowId": (NullOrUndefined Nothing) }



-- | <p> The input argument to the <a>AddJobFlowSteps</a> operation. </p>
newtype AddJobFlowStepsInput = AddJobFlowStepsInput 
  { "JobFlowId" :: (XmlStringMaxLen256)
  , "Steps" :: (StepConfigList)
  }
derive instance newtypeAddJobFlowStepsInput :: Newtype AddJobFlowStepsInput _
derive instance repGenericAddJobFlowStepsInput :: Generic AddJobFlowStepsInput _
instance showAddJobFlowStepsInput :: Show AddJobFlowStepsInput where
  show = genericShow
instance decodeAddJobFlowStepsInput :: Decode AddJobFlowStepsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddJobFlowStepsInput :: Encode AddJobFlowStepsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddJobFlowStepsInput from required parameters
newAddJobFlowStepsInput :: XmlStringMaxLen256 -> StepConfigList -> AddJobFlowStepsInput
newAddJobFlowStepsInput _JobFlowId _Steps = AddJobFlowStepsInput { "JobFlowId": _JobFlowId, "Steps": _Steps }

-- | Constructs AddJobFlowStepsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddJobFlowStepsInput' :: XmlStringMaxLen256 -> StepConfigList -> ( { "JobFlowId" :: (XmlStringMaxLen256) , "Steps" :: (StepConfigList) } -> {"JobFlowId" :: (XmlStringMaxLen256) , "Steps" :: (StepConfigList) } ) -> AddJobFlowStepsInput
newAddJobFlowStepsInput' _JobFlowId _Steps customize = (AddJobFlowStepsInput <<< customize) { "JobFlowId": _JobFlowId, "Steps": _Steps }



-- | <p> The output for the <a>AddJobFlowSteps</a> operation. </p>
newtype AddJobFlowStepsOutput = AddJobFlowStepsOutput 
  { "StepIds" :: NullOrUndefined.NullOrUndefined (StepIdsList)
  }
derive instance newtypeAddJobFlowStepsOutput :: Newtype AddJobFlowStepsOutput _
derive instance repGenericAddJobFlowStepsOutput :: Generic AddJobFlowStepsOutput _
instance showAddJobFlowStepsOutput :: Show AddJobFlowStepsOutput where
  show = genericShow
instance decodeAddJobFlowStepsOutput :: Decode AddJobFlowStepsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddJobFlowStepsOutput :: Encode AddJobFlowStepsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddJobFlowStepsOutput from required parameters
newAddJobFlowStepsOutput :: AddJobFlowStepsOutput
newAddJobFlowStepsOutput  = AddJobFlowStepsOutput { "StepIds": (NullOrUndefined Nothing) }

-- | Constructs AddJobFlowStepsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddJobFlowStepsOutput' :: ( { "StepIds" :: NullOrUndefined.NullOrUndefined (StepIdsList) } -> {"StepIds" :: NullOrUndefined.NullOrUndefined (StepIdsList) } ) -> AddJobFlowStepsOutput
newAddJobFlowStepsOutput'  customize = (AddJobFlowStepsOutput <<< customize) { "StepIds": (NullOrUndefined Nothing) }



-- | <p>This input identifies a cluster and a list of tags to attach.</p>
newtype AddTagsInput = AddTagsInput 
  { "ResourceId" :: (ResourceId)
  , "Tags" :: (TagList)
  }
derive instance newtypeAddTagsInput :: Newtype AddTagsInput _
derive instance repGenericAddTagsInput :: Generic AddTagsInput _
instance showAddTagsInput :: Show AddTagsInput where
  show = genericShow
instance decodeAddTagsInput :: Decode AddTagsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddTagsInput :: Encode AddTagsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AddTagsInput from required parameters
newAddTagsInput :: ResourceId -> TagList -> AddTagsInput
newAddTagsInput _ResourceId _Tags = AddTagsInput { "ResourceId": _ResourceId, "Tags": _Tags }

-- | Constructs AddTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddTagsInput' :: ResourceId -> TagList -> ( { "ResourceId" :: (ResourceId) , "Tags" :: (TagList) } -> {"ResourceId" :: (ResourceId) , "Tags" :: (TagList) } ) -> AddTagsInput
newAddTagsInput' _ResourceId _Tags customize = (AddTagsInput <<< customize) { "ResourceId": _ResourceId, "Tags": _Tags }



-- | <p>This output indicates the result of adding tags to a resource.</p>
newtype AddTagsOutput = AddTagsOutput Types.NoArguments
derive instance newtypeAddTagsOutput :: Newtype AddTagsOutput _
derive instance repGenericAddTagsOutput :: Generic AddTagsOutput _
instance showAddTagsOutput :: Show AddTagsOutput where
  show = genericShow
instance decodeAddTagsOutput :: Decode AddTagsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAddTagsOutput :: Encode AddTagsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AdjustmentType = AdjustmentType String
derive instance newtypeAdjustmentType :: Newtype AdjustmentType _
derive instance repGenericAdjustmentType :: Generic AdjustmentType _
instance showAdjustmentType :: Show AdjustmentType where
  show = genericShow
instance decodeAdjustmentType :: Decode AdjustmentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAdjustmentType :: Encode AdjustmentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An application is any Amazon or third-party software that you can add to the cluster. This structure contains a list of strings that indicates the software to use with the cluster and accepts a user argument list. Amazon EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action argument. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-mapr.html">Using the MapR Distribution for Hadoop</a>. Currently supported values are:</p> <ul> <li> <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p> </li> <li> <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p> </li> <li> <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" - launch the cluster using MapR M3 or M5 Edition, respectively.</p> </li> </ul> <note> <p>In Amazon EMR releases 4.x and later, the only accepted parameter is the application name. To pass arguments to applications, you supply a configuration for each application.</p> </note>
newtype Application = Application 
  { "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Version" :: NullOrUndefined.NullOrUndefined (String)
  , "Args" :: NullOrUndefined.NullOrUndefined (StringList)
  , "AdditionalInfo" :: NullOrUndefined.NullOrUndefined (StringMap)
  }
derive instance newtypeApplication :: Newtype Application _
derive instance repGenericApplication :: Generic Application _
instance showApplication :: Show Application where
  show = genericShow
instance decodeApplication :: Decode Application where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplication :: Encode Application where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Application from required parameters
newApplication :: Application
newApplication  = Application { "AdditionalInfo": (NullOrUndefined Nothing), "Args": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }

-- | Constructs Application's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplication' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) , "Args" :: NullOrUndefined.NullOrUndefined (StringList) , "AdditionalInfo" :: NullOrUndefined.NullOrUndefined (StringMap) } -> {"Name" :: NullOrUndefined.NullOrUndefined (String) , "Version" :: NullOrUndefined.NullOrUndefined (String) , "Args" :: NullOrUndefined.NullOrUndefined (StringList) , "AdditionalInfo" :: NullOrUndefined.NullOrUndefined (StringMap) } ) -> Application
newApplication'  customize = (Application <<< customize) { "AdditionalInfo": (NullOrUndefined Nothing), "Args": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Version": (NullOrUndefined Nothing) }



newtype ApplicationList = ApplicationList (Array Application)
derive instance newtypeApplicationList :: Newtype ApplicationList _
derive instance repGenericApplicationList :: Generic ApplicationList _
instance showApplicationList :: Show ApplicationList where
  show = genericShow
instance decodeApplicationList :: Decode ApplicationList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeApplicationList :: Encode ApplicationList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. An automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>
newtype AutoScalingPolicy = AutoScalingPolicy 
  { "Constraints" :: (ScalingConstraints)
  , "Rules" :: (ScalingRuleList)
  }
derive instance newtypeAutoScalingPolicy :: Newtype AutoScalingPolicy _
derive instance repGenericAutoScalingPolicy :: Generic AutoScalingPolicy _
instance showAutoScalingPolicy :: Show AutoScalingPolicy where
  show = genericShow
instance decodeAutoScalingPolicy :: Decode AutoScalingPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingPolicy :: Encode AutoScalingPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AutoScalingPolicy from required parameters
newAutoScalingPolicy :: ScalingConstraints -> ScalingRuleList -> AutoScalingPolicy
newAutoScalingPolicy _Constraints _Rules = AutoScalingPolicy { "Constraints": _Constraints, "Rules": _Rules }

-- | Constructs AutoScalingPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicy' :: ScalingConstraints -> ScalingRuleList -> ( { "Constraints" :: (ScalingConstraints) , "Rules" :: (ScalingRuleList) } -> {"Constraints" :: (ScalingConstraints) , "Rules" :: (ScalingRuleList) } ) -> AutoScalingPolicy
newAutoScalingPolicy' _Constraints _Rules customize = (AutoScalingPolicy <<< customize) { "Constraints": _Constraints, "Rules": _Rules }



-- | <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>
newtype AutoScalingPolicyDescription = AutoScalingPolicyDescription 
  { "Status" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStatus)
  , "Constraints" :: NullOrUndefined.NullOrUndefined (ScalingConstraints)
  , "Rules" :: NullOrUndefined.NullOrUndefined (ScalingRuleList)
  }
derive instance newtypeAutoScalingPolicyDescription :: Newtype AutoScalingPolicyDescription _
derive instance repGenericAutoScalingPolicyDescription :: Generic AutoScalingPolicyDescription _
instance showAutoScalingPolicyDescription :: Show AutoScalingPolicyDescription where
  show = genericShow
instance decodeAutoScalingPolicyDescription :: Decode AutoScalingPolicyDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingPolicyDescription :: Encode AutoScalingPolicyDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AutoScalingPolicyDescription from required parameters
newAutoScalingPolicyDescription :: AutoScalingPolicyDescription
newAutoScalingPolicyDescription  = AutoScalingPolicyDescription { "Constraints": (NullOrUndefined Nothing), "Rules": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs AutoScalingPolicyDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicyDescription' :: ( { "Status" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStatus) , "Constraints" :: NullOrUndefined.NullOrUndefined (ScalingConstraints) , "Rules" :: NullOrUndefined.NullOrUndefined (ScalingRuleList) } -> {"Status" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStatus) , "Constraints" :: NullOrUndefined.NullOrUndefined (ScalingConstraints) , "Rules" :: NullOrUndefined.NullOrUndefined (ScalingRuleList) } ) -> AutoScalingPolicyDescription
newAutoScalingPolicyDescription'  customize = (AutoScalingPolicyDescription <<< customize) { "Constraints": (NullOrUndefined Nothing), "Rules": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype AutoScalingPolicyState = AutoScalingPolicyState String
derive instance newtypeAutoScalingPolicyState :: Newtype AutoScalingPolicyState _
derive instance repGenericAutoScalingPolicyState :: Generic AutoScalingPolicyState _
instance showAutoScalingPolicyState :: Show AutoScalingPolicyState where
  show = genericShow
instance decodeAutoScalingPolicyState :: Decode AutoScalingPolicyState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingPolicyState :: Encode AutoScalingPolicyState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The reason for an <a>AutoScalingPolicyStatus</a> change.</p>
newtype AutoScalingPolicyStateChangeReason = AutoScalingPolicyStateChangeReason 
  { "Code" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStateChangeReasonCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeAutoScalingPolicyStateChangeReason :: Newtype AutoScalingPolicyStateChangeReason _
derive instance repGenericAutoScalingPolicyStateChangeReason :: Generic AutoScalingPolicyStateChangeReason _
instance showAutoScalingPolicyStateChangeReason :: Show AutoScalingPolicyStateChangeReason where
  show = genericShow
instance decodeAutoScalingPolicyStateChangeReason :: Decode AutoScalingPolicyStateChangeReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingPolicyStateChangeReason :: Encode AutoScalingPolicyStateChangeReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AutoScalingPolicyStateChangeReason from required parameters
newAutoScalingPolicyStateChangeReason :: AutoScalingPolicyStateChangeReason
newAutoScalingPolicyStateChangeReason  = AutoScalingPolicyStateChangeReason { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs AutoScalingPolicyStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicyStateChangeReason' :: ( { "Code" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Code" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> AutoScalingPolicyStateChangeReason
newAutoScalingPolicyStateChangeReason'  customize = (AutoScalingPolicyStateChangeReason <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype AutoScalingPolicyStateChangeReasonCode = AutoScalingPolicyStateChangeReasonCode String
derive instance newtypeAutoScalingPolicyStateChangeReasonCode :: Newtype AutoScalingPolicyStateChangeReasonCode _
derive instance repGenericAutoScalingPolicyStateChangeReasonCode :: Generic AutoScalingPolicyStateChangeReasonCode _
instance showAutoScalingPolicyStateChangeReasonCode :: Show AutoScalingPolicyStateChangeReasonCode where
  show = genericShow
instance decodeAutoScalingPolicyStateChangeReasonCode :: Decode AutoScalingPolicyStateChangeReasonCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingPolicyStateChangeReasonCode :: Encode AutoScalingPolicyStateChangeReasonCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The status of an automatic scaling policy. </p>
newtype AutoScalingPolicyStatus = AutoScalingPolicyStatus 
  { "State" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyState)
  , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStateChangeReason)
  }
derive instance newtypeAutoScalingPolicyStatus :: Newtype AutoScalingPolicyStatus _
derive instance repGenericAutoScalingPolicyStatus :: Generic AutoScalingPolicyStatus _
instance showAutoScalingPolicyStatus :: Show AutoScalingPolicyStatus where
  show = genericShow
instance decodeAutoScalingPolicyStatus :: Decode AutoScalingPolicyStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAutoScalingPolicyStatus :: Encode AutoScalingPolicyStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AutoScalingPolicyStatus from required parameters
newAutoScalingPolicyStatus :: AutoScalingPolicyStatus
newAutoScalingPolicyStatus  = AutoScalingPolicyStatus { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing) }

-- | Constructs AutoScalingPolicyStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicyStatus' :: ( { "State" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStateChangeReason) } -> {"State" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyStateChangeReason) } ) -> AutoScalingPolicyStatus
newAutoScalingPolicyStatus'  customize = (AutoScalingPolicyStatus <<< customize) { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing) }



newtype BooleanObject = BooleanObject Boolean
derive instance newtypeBooleanObject :: Newtype BooleanObject _
derive instance repGenericBooleanObject :: Generic BooleanObject _
instance showBooleanObject :: Show BooleanObject where
  show = genericShow
instance decodeBooleanObject :: Decode BooleanObject where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBooleanObject :: Encode BooleanObject where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Configuration of a bootstrap action.</p>
newtype BootstrapActionConfig = BootstrapActionConfig 
  { "Name" :: (XmlStringMaxLen256)
  , "ScriptBootstrapAction" :: (ScriptBootstrapActionConfig)
  }
derive instance newtypeBootstrapActionConfig :: Newtype BootstrapActionConfig _
derive instance repGenericBootstrapActionConfig :: Generic BootstrapActionConfig _
instance showBootstrapActionConfig :: Show BootstrapActionConfig where
  show = genericShow
instance decodeBootstrapActionConfig :: Decode BootstrapActionConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBootstrapActionConfig :: Encode BootstrapActionConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BootstrapActionConfig from required parameters
newBootstrapActionConfig :: XmlStringMaxLen256 -> ScriptBootstrapActionConfig -> BootstrapActionConfig
newBootstrapActionConfig _Name _ScriptBootstrapAction = BootstrapActionConfig { "Name": _Name, "ScriptBootstrapAction": _ScriptBootstrapAction }

-- | Constructs BootstrapActionConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBootstrapActionConfig' :: XmlStringMaxLen256 -> ScriptBootstrapActionConfig -> ( { "Name" :: (XmlStringMaxLen256) , "ScriptBootstrapAction" :: (ScriptBootstrapActionConfig) } -> {"Name" :: (XmlStringMaxLen256) , "ScriptBootstrapAction" :: (ScriptBootstrapActionConfig) } ) -> BootstrapActionConfig
newBootstrapActionConfig' _Name _ScriptBootstrapAction customize = (BootstrapActionConfig <<< customize) { "Name": _Name, "ScriptBootstrapAction": _ScriptBootstrapAction }



newtype BootstrapActionConfigList = BootstrapActionConfigList (Array BootstrapActionConfig)
derive instance newtypeBootstrapActionConfigList :: Newtype BootstrapActionConfigList _
derive instance repGenericBootstrapActionConfigList :: Generic BootstrapActionConfigList _
instance showBootstrapActionConfigList :: Show BootstrapActionConfigList where
  show = genericShow
instance decodeBootstrapActionConfigList :: Decode BootstrapActionConfigList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBootstrapActionConfigList :: Encode BootstrapActionConfigList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Reports the configuration of a bootstrap action in a cluster (job flow).</p>
newtype BootstrapActionDetail = BootstrapActionDetail 
  { "BootstrapActionConfig" :: NullOrUndefined.NullOrUndefined (BootstrapActionConfig)
  }
derive instance newtypeBootstrapActionDetail :: Newtype BootstrapActionDetail _
derive instance repGenericBootstrapActionDetail :: Generic BootstrapActionDetail _
instance showBootstrapActionDetail :: Show BootstrapActionDetail where
  show = genericShow
instance decodeBootstrapActionDetail :: Decode BootstrapActionDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBootstrapActionDetail :: Encode BootstrapActionDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs BootstrapActionDetail from required parameters
newBootstrapActionDetail :: BootstrapActionDetail
newBootstrapActionDetail  = BootstrapActionDetail { "BootstrapActionConfig": (NullOrUndefined Nothing) }

-- | Constructs BootstrapActionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBootstrapActionDetail' :: ( { "BootstrapActionConfig" :: NullOrUndefined.NullOrUndefined (BootstrapActionConfig) } -> {"BootstrapActionConfig" :: NullOrUndefined.NullOrUndefined (BootstrapActionConfig) } ) -> BootstrapActionDetail
newBootstrapActionDetail'  customize = (BootstrapActionDetail <<< customize) { "BootstrapActionConfig": (NullOrUndefined Nothing) }



newtype BootstrapActionDetailList = BootstrapActionDetailList (Array BootstrapActionDetail)
derive instance newtypeBootstrapActionDetailList :: Newtype BootstrapActionDetailList _
derive instance repGenericBootstrapActionDetailList :: Generic BootstrapActionDetailList _
instance showBootstrapActionDetailList :: Show BootstrapActionDetailList where
  show = genericShow
instance decodeBootstrapActionDetailList :: Decode BootstrapActionDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeBootstrapActionDetailList :: Encode BootstrapActionDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Specification of the status of a CancelSteps request. Available only in Amazon EMR version 4.8.0 and later, excluding version 5.0.0.</p>
newtype CancelStepsInfo = CancelStepsInfo 
  { "StepId" :: NullOrUndefined.NullOrUndefined (StepId)
  , "Status" :: NullOrUndefined.NullOrUndefined (CancelStepsRequestStatus)
  , "Reason" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeCancelStepsInfo :: Newtype CancelStepsInfo _
derive instance repGenericCancelStepsInfo :: Generic CancelStepsInfo _
instance showCancelStepsInfo :: Show CancelStepsInfo where
  show = genericShow
instance decodeCancelStepsInfo :: Decode CancelStepsInfo where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelStepsInfo :: Encode CancelStepsInfo where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelStepsInfo from required parameters
newCancelStepsInfo :: CancelStepsInfo
newCancelStepsInfo  = CancelStepsInfo { "Reason": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StepId": (NullOrUndefined Nothing) }

-- | Constructs CancelStepsInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelStepsInfo' :: ( { "StepId" :: NullOrUndefined.NullOrUndefined (StepId) , "Status" :: NullOrUndefined.NullOrUndefined (CancelStepsRequestStatus) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } -> {"StepId" :: NullOrUndefined.NullOrUndefined (StepId) , "Status" :: NullOrUndefined.NullOrUndefined (CancelStepsRequestStatus) , "Reason" :: NullOrUndefined.NullOrUndefined (String) } ) -> CancelStepsInfo
newCancelStepsInfo'  customize = (CancelStepsInfo <<< customize) { "Reason": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "StepId": (NullOrUndefined Nothing) }



newtype CancelStepsInfoList = CancelStepsInfoList (Array CancelStepsInfo)
derive instance newtypeCancelStepsInfoList :: Newtype CancelStepsInfoList _
derive instance repGenericCancelStepsInfoList :: Generic CancelStepsInfoList _
instance showCancelStepsInfoList :: Show CancelStepsInfoList where
  show = genericShow
instance decodeCancelStepsInfoList :: Decode CancelStepsInfoList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelStepsInfoList :: Encode CancelStepsInfoList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The input argument to the <a>CancelSteps</a> operation.</p>
newtype CancelStepsInput = CancelStepsInput 
  { "ClusterId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "StepIds" :: NullOrUndefined.NullOrUndefined (StepIdsList)
  }
derive instance newtypeCancelStepsInput :: Newtype CancelStepsInput _
derive instance repGenericCancelStepsInput :: Generic CancelStepsInput _
instance showCancelStepsInput :: Show CancelStepsInput where
  show = genericShow
instance decodeCancelStepsInput :: Decode CancelStepsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelStepsInput :: Encode CancelStepsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelStepsInput from required parameters
newCancelStepsInput :: CancelStepsInput
newCancelStepsInput  = CancelStepsInput { "ClusterId": (NullOrUndefined Nothing), "StepIds": (NullOrUndefined Nothing) }

-- | Constructs CancelStepsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelStepsInput' :: ( { "ClusterId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "StepIds" :: NullOrUndefined.NullOrUndefined (StepIdsList) } -> {"ClusterId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "StepIds" :: NullOrUndefined.NullOrUndefined (StepIdsList) } ) -> CancelStepsInput
newCancelStepsInput'  customize = (CancelStepsInput <<< customize) { "ClusterId": (NullOrUndefined Nothing), "StepIds": (NullOrUndefined Nothing) }



-- | <p> The output for the <a>CancelSteps</a> operation. </p>
newtype CancelStepsOutput = CancelStepsOutput 
  { "CancelStepsInfoList" :: NullOrUndefined.NullOrUndefined (CancelStepsInfoList)
  }
derive instance newtypeCancelStepsOutput :: Newtype CancelStepsOutput _
derive instance repGenericCancelStepsOutput :: Generic CancelStepsOutput _
instance showCancelStepsOutput :: Show CancelStepsOutput where
  show = genericShow
instance decodeCancelStepsOutput :: Decode CancelStepsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelStepsOutput :: Encode CancelStepsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelStepsOutput from required parameters
newCancelStepsOutput :: CancelStepsOutput
newCancelStepsOutput  = CancelStepsOutput { "CancelStepsInfoList": (NullOrUndefined Nothing) }

-- | Constructs CancelStepsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelStepsOutput' :: ( { "CancelStepsInfoList" :: NullOrUndefined.NullOrUndefined (CancelStepsInfoList) } -> {"CancelStepsInfoList" :: NullOrUndefined.NullOrUndefined (CancelStepsInfoList) } ) -> CancelStepsOutput
newCancelStepsOutput'  customize = (CancelStepsOutput <<< customize) { "CancelStepsInfoList": (NullOrUndefined Nothing) }



newtype CancelStepsRequestStatus = CancelStepsRequestStatus String
derive instance newtypeCancelStepsRequestStatus :: Newtype CancelStepsRequestStatus _
derive instance repGenericCancelStepsRequestStatus :: Generic CancelStepsRequestStatus _
instance showCancelStepsRequestStatus :: Show CancelStepsRequestStatus where
  show = genericShow
instance decodeCancelStepsRequestStatus :: Decode CancelStepsRequestStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelStepsRequestStatus :: Encode CancelStepsRequestStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The definition of a CloudWatch metric alarm, which determines when an automatic scaling activity is triggered. When the defined alarm conditions are satisfied, scaling activity begins.</p>
newtype CloudWatchAlarmDefinition = CloudWatchAlarmDefinition 
  { "ComparisonOperator" :: (ComparisonOperator)
  , "EvaluationPeriods" :: NullOrUndefined.NullOrUndefined (Int)
  , "MetricName" :: (String)
  , "Namespace" :: NullOrUndefined.NullOrUndefined (String)
  , "Period" :: (Int)
  , "Statistic" :: NullOrUndefined.NullOrUndefined (Statistic)
  , "Threshold" :: (NonNegativeDouble)
  , "Unit" :: NullOrUndefined.NullOrUndefined (Unit'')
  , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensionList)
  }
derive instance newtypeCloudWatchAlarmDefinition :: Newtype CloudWatchAlarmDefinition _
derive instance repGenericCloudWatchAlarmDefinition :: Generic CloudWatchAlarmDefinition _
instance showCloudWatchAlarmDefinition :: Show CloudWatchAlarmDefinition where
  show = genericShow
instance decodeCloudWatchAlarmDefinition :: Decode CloudWatchAlarmDefinition where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCloudWatchAlarmDefinition :: Encode CloudWatchAlarmDefinition where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CloudWatchAlarmDefinition from required parameters
newCloudWatchAlarmDefinition :: ComparisonOperator -> String -> Int -> NonNegativeDouble -> CloudWatchAlarmDefinition
newCloudWatchAlarmDefinition _ComparisonOperator _MetricName _Period _Threshold = CloudWatchAlarmDefinition { "ComparisonOperator": _ComparisonOperator, "MetricName": _MetricName, "Period": _Period, "Threshold": _Threshold, "Dimensions": (NullOrUndefined Nothing), "EvaluationPeriods": (NullOrUndefined Nothing), "Namespace": (NullOrUndefined Nothing), "Statistic": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }

-- | Constructs CloudWatchAlarmDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchAlarmDefinition' :: ComparisonOperator -> String -> Int -> NonNegativeDouble -> ( { "ComparisonOperator" :: (ComparisonOperator) , "EvaluationPeriods" :: NullOrUndefined.NullOrUndefined (Int) , "MetricName" :: (String) , "Namespace" :: NullOrUndefined.NullOrUndefined (String) , "Period" :: (Int) , "Statistic" :: NullOrUndefined.NullOrUndefined (Statistic) , "Threshold" :: (NonNegativeDouble) , "Unit" :: NullOrUndefined.NullOrUndefined (Unit'') , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensionList) } -> {"ComparisonOperator" :: (ComparisonOperator) , "EvaluationPeriods" :: NullOrUndefined.NullOrUndefined (Int) , "MetricName" :: (String) , "Namespace" :: NullOrUndefined.NullOrUndefined (String) , "Period" :: (Int) , "Statistic" :: NullOrUndefined.NullOrUndefined (Statistic) , "Threshold" :: (NonNegativeDouble) , "Unit" :: NullOrUndefined.NullOrUndefined (Unit'') , "Dimensions" :: NullOrUndefined.NullOrUndefined (MetricDimensionList) } ) -> CloudWatchAlarmDefinition
newCloudWatchAlarmDefinition' _ComparisonOperator _MetricName _Period _Threshold customize = (CloudWatchAlarmDefinition <<< customize) { "ComparisonOperator": _ComparisonOperator, "MetricName": _MetricName, "Period": _Period, "Threshold": _Threshold, "Dimensions": (NullOrUndefined Nothing), "EvaluationPeriods": (NullOrUndefined Nothing), "Namespace": (NullOrUndefined Nothing), "Statistic": (NullOrUndefined Nothing), "Unit": (NullOrUndefined Nothing) }



-- | <p>The detailed description of the cluster.</p>
newtype Cluster = Cluster 
  { "Id" :: NullOrUndefined.NullOrUndefined (ClusterId)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Status" :: NullOrUndefined.NullOrUndefined (ClusterStatus)
  , "Ec2InstanceAttributes" :: NullOrUndefined.NullOrUndefined (Ec2InstanceAttributes)
  , "InstanceCollectionType" :: NullOrUndefined.NullOrUndefined (InstanceCollectionType)
  , "LogUri" :: NullOrUndefined.NullOrUndefined (String)
  , "RequestedAmiVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "RunningAmiVersion" :: NullOrUndefined.NullOrUndefined (String)
  , "ReleaseLabel" :: NullOrUndefined.NullOrUndefined (String)
  , "AutoTerminate" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "Applications" :: NullOrUndefined.NullOrUndefined (ApplicationList)
  , "Tags" :: NullOrUndefined.NullOrUndefined (TagList)
  , "ServiceRole" :: NullOrUndefined.NullOrUndefined (String)
  , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int)
  , "MasterPublicDnsName" :: NullOrUndefined.NullOrUndefined (String)
  , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList)
  , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior)
  , "CustomAmiId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "EbsRootVolumeSize" :: NullOrUndefined.NullOrUndefined (Int)
  , "RepoUpgradeOnBoot" :: NullOrUndefined.NullOrUndefined (RepoUpgradeOnBoot)
  , "KerberosAttributes" :: NullOrUndefined.NullOrUndefined (KerberosAttributes)
  }
derive instance newtypeCluster :: Newtype Cluster _
derive instance repGenericCluster :: Generic Cluster _
instance showCluster :: Show Cluster where
  show = genericShow
instance decodeCluster :: Decode Cluster where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCluster :: Encode Cluster where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Cluster from required parameters
newCluster :: Cluster
newCluster  = Cluster { "Applications": (NullOrUndefined Nothing), "AutoScalingRole": (NullOrUndefined Nothing), "AutoTerminate": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "CustomAmiId": (NullOrUndefined Nothing), "EbsRootVolumeSize": (NullOrUndefined Nothing), "Ec2InstanceAttributes": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceCollectionType": (NullOrUndefined Nothing), "KerberosAttributes": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MasterPublicDnsName": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NormalizedInstanceHours": (NullOrUndefined Nothing), "ReleaseLabel": (NullOrUndefined Nothing), "RepoUpgradeOnBoot": (NullOrUndefined Nothing), "RequestedAmiVersion": (NullOrUndefined Nothing), "RunningAmiVersion": (NullOrUndefined Nothing), "ScaleDownBehavior": (NullOrUndefined Nothing), "SecurityConfiguration": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "TerminationProtected": (NullOrUndefined Nothing), "VisibleToAllUsers": (NullOrUndefined Nothing) }

-- | Constructs Cluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCluster' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ClusterId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (ClusterStatus) , "Ec2InstanceAttributes" :: NullOrUndefined.NullOrUndefined (Ec2InstanceAttributes) , "InstanceCollectionType" :: NullOrUndefined.NullOrUndefined (InstanceCollectionType) , "LogUri" :: NullOrUndefined.NullOrUndefined (String) , "RequestedAmiVersion" :: NullOrUndefined.NullOrUndefined (String) , "RunningAmiVersion" :: NullOrUndefined.NullOrUndefined (String) , "ReleaseLabel" :: NullOrUndefined.NullOrUndefined (String) , "AutoTerminate" :: NullOrUndefined.NullOrUndefined (Boolean) , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean) , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean) , "Applications" :: NullOrUndefined.NullOrUndefined (ApplicationList) , "Tags" :: NullOrUndefined.NullOrUndefined (TagList) , "ServiceRole" :: NullOrUndefined.NullOrUndefined (String) , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int) , "MasterPublicDnsName" :: NullOrUndefined.NullOrUndefined (String) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (XmlString) , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior) , "CustomAmiId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "EbsRootVolumeSize" :: NullOrUndefined.NullOrUndefined (Int) , "RepoUpgradeOnBoot" :: NullOrUndefined.NullOrUndefined (RepoUpgradeOnBoot) , "KerberosAttributes" :: NullOrUndefined.NullOrUndefined (KerberosAttributes) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ClusterId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (ClusterStatus) , "Ec2InstanceAttributes" :: NullOrUndefined.NullOrUndefined (Ec2InstanceAttributes) , "InstanceCollectionType" :: NullOrUndefined.NullOrUndefined (InstanceCollectionType) , "LogUri" :: NullOrUndefined.NullOrUndefined (String) , "RequestedAmiVersion" :: NullOrUndefined.NullOrUndefined (String) , "RunningAmiVersion" :: NullOrUndefined.NullOrUndefined (String) , "ReleaseLabel" :: NullOrUndefined.NullOrUndefined (String) , "AutoTerminate" :: NullOrUndefined.NullOrUndefined (Boolean) , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean) , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean) , "Applications" :: NullOrUndefined.NullOrUndefined (ApplicationList) , "Tags" :: NullOrUndefined.NullOrUndefined (TagList) , "ServiceRole" :: NullOrUndefined.NullOrUndefined (String) , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int) , "MasterPublicDnsName" :: NullOrUndefined.NullOrUndefined (String) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (XmlString) , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior) , "CustomAmiId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "EbsRootVolumeSize" :: NullOrUndefined.NullOrUndefined (Int) , "RepoUpgradeOnBoot" :: NullOrUndefined.NullOrUndefined (RepoUpgradeOnBoot) , "KerberosAttributes" :: NullOrUndefined.NullOrUndefined (KerberosAttributes) } ) -> Cluster
newCluster'  customize = (Cluster <<< customize) { "Applications": (NullOrUndefined Nothing), "AutoScalingRole": (NullOrUndefined Nothing), "AutoTerminate": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "CustomAmiId": (NullOrUndefined Nothing), "EbsRootVolumeSize": (NullOrUndefined Nothing), "Ec2InstanceAttributes": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceCollectionType": (NullOrUndefined Nothing), "KerberosAttributes": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "MasterPublicDnsName": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NormalizedInstanceHours": (NullOrUndefined Nothing), "ReleaseLabel": (NullOrUndefined Nothing), "RepoUpgradeOnBoot": (NullOrUndefined Nothing), "RequestedAmiVersion": (NullOrUndefined Nothing), "RunningAmiVersion": (NullOrUndefined Nothing), "ScaleDownBehavior": (NullOrUndefined Nothing), "SecurityConfiguration": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "TerminationProtected": (NullOrUndefined Nothing), "VisibleToAllUsers": (NullOrUndefined Nothing) }



newtype ClusterId = ClusterId String
derive instance newtypeClusterId :: Newtype ClusterId _
derive instance repGenericClusterId :: Generic ClusterId _
instance showClusterId :: Show ClusterId where
  show = genericShow
instance decodeClusterId :: Decode ClusterId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterId :: Encode ClusterId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ClusterState = ClusterState String
derive instance newtypeClusterState :: Newtype ClusterState _
derive instance repGenericClusterState :: Generic ClusterState _
instance showClusterState :: Show ClusterState where
  show = genericShow
instance decodeClusterState :: Decode ClusterState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterState :: Encode ClusterState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The reason that the cluster changed to its current state.</p>
newtype ClusterStateChangeReason = ClusterStateChangeReason 
  { "Code" :: NullOrUndefined.NullOrUndefined (ClusterStateChangeReasonCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeClusterStateChangeReason :: Newtype ClusterStateChangeReason _
derive instance repGenericClusterStateChangeReason :: Generic ClusterStateChangeReason _
instance showClusterStateChangeReason :: Show ClusterStateChangeReason where
  show = genericShow
instance decodeClusterStateChangeReason :: Decode ClusterStateChangeReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterStateChangeReason :: Encode ClusterStateChangeReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClusterStateChangeReason from required parameters
newClusterStateChangeReason :: ClusterStateChangeReason
newClusterStateChangeReason  = ClusterStateChangeReason { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs ClusterStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterStateChangeReason' :: ( { "Code" :: NullOrUndefined.NullOrUndefined (ClusterStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Code" :: NullOrUndefined.NullOrUndefined (ClusterStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> ClusterStateChangeReason
newClusterStateChangeReason'  customize = (ClusterStateChangeReason <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype ClusterStateChangeReasonCode = ClusterStateChangeReasonCode String
derive instance newtypeClusterStateChangeReasonCode :: Newtype ClusterStateChangeReasonCode _
derive instance repGenericClusterStateChangeReasonCode :: Generic ClusterStateChangeReasonCode _
instance showClusterStateChangeReasonCode :: Show ClusterStateChangeReasonCode where
  show = genericShow
instance decodeClusterStateChangeReasonCode :: Decode ClusterStateChangeReasonCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterStateChangeReasonCode :: Encode ClusterStateChangeReasonCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ClusterStateList = ClusterStateList (Array ClusterState)
derive instance newtypeClusterStateList :: Newtype ClusterStateList _
derive instance repGenericClusterStateList :: Generic ClusterStateList _
instance showClusterStateList :: Show ClusterStateList where
  show = genericShow
instance decodeClusterStateList :: Decode ClusterStateList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterStateList :: Encode ClusterStateList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The detailed status of the cluster.</p>
newtype ClusterStatus = ClusterStatus 
  { "State" :: NullOrUndefined.NullOrUndefined (ClusterState)
  , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (ClusterStateChangeReason)
  , "Timeline" :: NullOrUndefined.NullOrUndefined (ClusterTimeline)
  }
derive instance newtypeClusterStatus :: Newtype ClusterStatus _
derive instance repGenericClusterStatus :: Generic ClusterStatus _
instance showClusterStatus :: Show ClusterStatus where
  show = genericShow
instance decodeClusterStatus :: Decode ClusterStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterStatus :: Encode ClusterStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClusterStatus from required parameters
newClusterStatus :: ClusterStatus
newClusterStatus  = ClusterStatus { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }

-- | Constructs ClusterStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterStatus' :: ( { "State" :: NullOrUndefined.NullOrUndefined (ClusterState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (ClusterStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (ClusterTimeline) } -> {"State" :: NullOrUndefined.NullOrUndefined (ClusterState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (ClusterStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (ClusterTimeline) } ) -> ClusterStatus
newClusterStatus'  customize = (ClusterStatus <<< customize) { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }



-- | <p>The summary description of the cluster.</p>
newtype ClusterSummary = ClusterSummary 
  { "Id" :: NullOrUndefined.NullOrUndefined (ClusterId)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Status" :: NullOrUndefined.NullOrUndefined (ClusterStatus)
  , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeClusterSummary :: Newtype ClusterSummary _
derive instance repGenericClusterSummary :: Generic ClusterSummary _
instance showClusterSummary :: Show ClusterSummary where
  show = genericShow
instance decodeClusterSummary :: Decode ClusterSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterSummary :: Encode ClusterSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClusterSummary from required parameters
newClusterSummary :: ClusterSummary
newClusterSummary  = ClusterSummary { "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NormalizedInstanceHours": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs ClusterSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterSummary' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ClusterId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (ClusterStatus) , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ClusterId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (ClusterStatus) , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int) } ) -> ClusterSummary
newClusterSummary'  customize = (ClusterSummary <<< customize) { "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "NormalizedInstanceHours": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype ClusterSummaryList = ClusterSummaryList (Array ClusterSummary)
derive instance newtypeClusterSummaryList :: Newtype ClusterSummaryList _
derive instance repGenericClusterSummaryList :: Generic ClusterSummaryList _
instance showClusterSummaryList :: Show ClusterSummaryList where
  show = genericShow
instance decodeClusterSummaryList :: Decode ClusterSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterSummaryList :: Encode ClusterSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Represents the timeline of the cluster's lifecycle.</p>
newtype ClusterTimeline = ClusterTimeline 
  { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeClusterTimeline :: Newtype ClusterTimeline _
derive instance repGenericClusterTimeline :: Generic ClusterTimeline _
instance showClusterTimeline :: Show ClusterTimeline where
  show = genericShow
instance decodeClusterTimeline :: Decode ClusterTimeline where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeClusterTimeline :: Encode ClusterTimeline where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ClusterTimeline from required parameters
newClusterTimeline :: ClusterTimeline
newClusterTimeline  = ClusterTimeline { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }

-- | Constructs ClusterTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterTimeline' :: ( { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> ClusterTimeline
newClusterTimeline'  customize = (ClusterTimeline <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }



-- | <p>An entity describing an executable that runs on a cluster.</p>
newtype Command = Command 
  { "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "ScriptPath" :: NullOrUndefined.NullOrUndefined (String)
  , "Args" :: NullOrUndefined.NullOrUndefined (StringList)
  }
derive instance newtypeCommand :: Newtype Command _
derive instance repGenericCommand :: Generic Command _
instance showCommand :: Show Command where
  show = genericShow
instance decodeCommand :: Decode Command where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCommand :: Encode Command where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Command from required parameters
newCommand :: Command
newCommand  = Command { "Args": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ScriptPath": (NullOrUndefined Nothing) }

-- | Constructs Command's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCommand' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (String) , "ScriptPath" :: NullOrUndefined.NullOrUndefined (String) , "Args" :: NullOrUndefined.NullOrUndefined (StringList) } -> {"Name" :: NullOrUndefined.NullOrUndefined (String) , "ScriptPath" :: NullOrUndefined.NullOrUndefined (String) , "Args" :: NullOrUndefined.NullOrUndefined (StringList) } ) -> Command
newCommand'  customize = (Command <<< customize) { "Args": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ScriptPath": (NullOrUndefined Nothing) }



newtype CommandList = CommandList (Array Command)
derive instance newtypeCommandList :: Newtype CommandList _
derive instance repGenericCommandList :: Generic CommandList _
instance showCommandList :: Show CommandList where
  show = genericShow
instance decodeCommandList :: Decode CommandList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCommandList :: Encode CommandList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ComparisonOperator = ComparisonOperator String
derive instance newtypeComparisonOperator :: Newtype ComparisonOperator _
derive instance repGenericComparisonOperator :: Generic ComparisonOperator _
instance showComparisonOperator :: Show ComparisonOperator where
  show = genericShow
instance decodeComparisonOperator :: Decode ComparisonOperator where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeComparisonOperator :: Encode ComparisonOperator where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <note> <p>Amazon EMR releases 4.x or later.</p> </note> <p>An optional configuration specification to be used when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html">Configuring Applications</a>.</p>
newtype Configuration = Configuration 
  { "Classification" :: NullOrUndefined.NullOrUndefined (String)
  , "Properties" :: NullOrUndefined.NullOrUndefined (StringMap)
  }
derive instance newtypeConfiguration :: Newtype Configuration _
derive instance repGenericConfiguration :: Generic Configuration _
instance showConfiguration :: Show Configuration where
  show = genericShow
instance decodeConfiguration :: Decode Configuration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConfiguration :: Encode Configuration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Configuration from required parameters
newConfiguration :: Configuration
newConfiguration  = Configuration { "Classification": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing) }

-- | Constructs Configuration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfiguration' :: ( { "Classification" :: NullOrUndefined.NullOrUndefined (String) , "Properties" :: NullOrUndefined.NullOrUndefined (StringMap) } -> {"Classification" :: NullOrUndefined.NullOrUndefined (String) , "Properties" :: NullOrUndefined.NullOrUndefined (StringMap) } ) -> Configuration
newConfiguration'  customize = (Configuration <<< customize) { "Classification": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing) }



newtype ConfigurationList = ConfigurationList (Array Configuration)
derive instance newtypeConfigurationList :: Newtype ConfigurationList _
derive instance repGenericConfigurationList :: Generic ConfigurationList _
instance showConfigurationList :: Show ConfigurationList where
  show = genericShow
instance decodeConfigurationList :: Decode ConfigurationList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConfigurationList :: Encode ConfigurationList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateSecurityConfigurationInput = CreateSecurityConfigurationInput 
  { "Name" :: (XmlString)
  , "SecurityConfiguration" :: (String)
  }
derive instance newtypeCreateSecurityConfigurationInput :: Newtype CreateSecurityConfigurationInput _
derive instance repGenericCreateSecurityConfigurationInput :: Generic CreateSecurityConfigurationInput _
instance showCreateSecurityConfigurationInput :: Show CreateSecurityConfigurationInput where
  show = genericShow
instance decodeCreateSecurityConfigurationInput :: Decode CreateSecurityConfigurationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateSecurityConfigurationInput :: Encode CreateSecurityConfigurationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateSecurityConfigurationInput from required parameters
newCreateSecurityConfigurationInput :: XmlString -> String -> CreateSecurityConfigurationInput
newCreateSecurityConfigurationInput _Name _SecurityConfiguration = CreateSecurityConfigurationInput { "Name": _Name, "SecurityConfiguration": _SecurityConfiguration }

-- | Constructs CreateSecurityConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSecurityConfigurationInput' :: XmlString -> String -> ( { "Name" :: (XmlString) , "SecurityConfiguration" :: (String) } -> {"Name" :: (XmlString) , "SecurityConfiguration" :: (String) } ) -> CreateSecurityConfigurationInput
newCreateSecurityConfigurationInput' _Name _SecurityConfiguration customize = (CreateSecurityConfigurationInput <<< customize) { "Name": _Name, "SecurityConfiguration": _SecurityConfiguration }



newtype CreateSecurityConfigurationOutput = CreateSecurityConfigurationOutput 
  { "Name" :: (XmlString)
  , "CreationDateTime" :: (Date)
  }
derive instance newtypeCreateSecurityConfigurationOutput :: Newtype CreateSecurityConfigurationOutput _
derive instance repGenericCreateSecurityConfigurationOutput :: Generic CreateSecurityConfigurationOutput _
instance showCreateSecurityConfigurationOutput :: Show CreateSecurityConfigurationOutput where
  show = genericShow
instance decodeCreateSecurityConfigurationOutput :: Decode CreateSecurityConfigurationOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateSecurityConfigurationOutput :: Encode CreateSecurityConfigurationOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateSecurityConfigurationOutput from required parameters
newCreateSecurityConfigurationOutput :: Date -> XmlString -> CreateSecurityConfigurationOutput
newCreateSecurityConfigurationOutput _CreationDateTime _Name = CreateSecurityConfigurationOutput { "CreationDateTime": _CreationDateTime, "Name": _Name }

-- | Constructs CreateSecurityConfigurationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateSecurityConfigurationOutput' :: Date -> XmlString -> ( { "Name" :: (XmlString) , "CreationDateTime" :: (Date) } -> {"Name" :: (XmlString) , "CreationDateTime" :: (Date) } ) -> CreateSecurityConfigurationOutput
newCreateSecurityConfigurationOutput' _CreationDateTime _Name customize = (CreateSecurityConfigurationOutput <<< customize) { "CreationDateTime": _CreationDateTime, "Name": _Name }



newtype Date = Date Types.Timestamp
derive instance newtypeDate :: Newtype Date _
derive instance repGenericDate :: Generic Date _
instance showDate :: Show Date where
  show = genericShow
instance decodeDate :: Decode Date where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDate :: Encode Date where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype DeleteSecurityConfigurationInput = DeleteSecurityConfigurationInput 
  { "Name" :: (XmlString)
  }
derive instance newtypeDeleteSecurityConfigurationInput :: Newtype DeleteSecurityConfigurationInput _
derive instance repGenericDeleteSecurityConfigurationInput :: Generic DeleteSecurityConfigurationInput _
instance showDeleteSecurityConfigurationInput :: Show DeleteSecurityConfigurationInput where
  show = genericShow
instance decodeDeleteSecurityConfigurationInput :: Decode DeleteSecurityConfigurationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteSecurityConfigurationInput :: Encode DeleteSecurityConfigurationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeleteSecurityConfigurationInput from required parameters
newDeleteSecurityConfigurationInput :: XmlString -> DeleteSecurityConfigurationInput
newDeleteSecurityConfigurationInput _Name = DeleteSecurityConfigurationInput { "Name": _Name }

-- | Constructs DeleteSecurityConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteSecurityConfigurationInput' :: XmlString -> ( { "Name" :: (XmlString) } -> {"Name" :: (XmlString) } ) -> DeleteSecurityConfigurationInput
newDeleteSecurityConfigurationInput' _Name customize = (DeleteSecurityConfigurationInput <<< customize) { "Name": _Name }



newtype DeleteSecurityConfigurationOutput = DeleteSecurityConfigurationOutput Types.NoArguments
derive instance newtypeDeleteSecurityConfigurationOutput :: Newtype DeleteSecurityConfigurationOutput _
derive instance repGenericDeleteSecurityConfigurationOutput :: Generic DeleteSecurityConfigurationOutput _
instance showDeleteSecurityConfigurationOutput :: Show DeleteSecurityConfigurationOutput where
  show = genericShow
instance decodeDeleteSecurityConfigurationOutput :: Decode DeleteSecurityConfigurationOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteSecurityConfigurationOutput :: Encode DeleteSecurityConfigurationOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>This input determines which cluster to describe.</p>
newtype DescribeClusterInput = DescribeClusterInput 
  { "ClusterId" :: (ClusterId)
  }
derive instance newtypeDescribeClusterInput :: Newtype DescribeClusterInput _
derive instance repGenericDescribeClusterInput :: Generic DescribeClusterInput _
instance showDescribeClusterInput :: Show DescribeClusterInput where
  show = genericShow
instance decodeDescribeClusterInput :: Decode DescribeClusterInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeClusterInput :: Encode DescribeClusterInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeClusterInput from required parameters
newDescribeClusterInput :: ClusterId -> DescribeClusterInput
newDescribeClusterInput _ClusterId = DescribeClusterInput { "ClusterId": _ClusterId }

-- | Constructs DescribeClusterInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) } -> {"ClusterId" :: (ClusterId) } ) -> DescribeClusterInput
newDescribeClusterInput' _ClusterId customize = (DescribeClusterInput <<< customize) { "ClusterId": _ClusterId }



-- | <p>This output contains the description of the cluster.</p>
newtype DescribeClusterOutput = DescribeClusterOutput 
  { "Cluster" :: NullOrUndefined.NullOrUndefined (Cluster)
  }
derive instance newtypeDescribeClusterOutput :: Newtype DescribeClusterOutput _
derive instance repGenericDescribeClusterOutput :: Generic DescribeClusterOutput _
instance showDescribeClusterOutput :: Show DescribeClusterOutput where
  show = genericShow
instance decodeDescribeClusterOutput :: Decode DescribeClusterOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeClusterOutput :: Encode DescribeClusterOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeClusterOutput from required parameters
newDescribeClusterOutput :: DescribeClusterOutput
newDescribeClusterOutput  = DescribeClusterOutput { "Cluster": (NullOrUndefined Nothing) }

-- | Constructs DescribeClusterOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterOutput' :: ( { "Cluster" :: NullOrUndefined.NullOrUndefined (Cluster) } -> {"Cluster" :: NullOrUndefined.NullOrUndefined (Cluster) } ) -> DescribeClusterOutput
newDescribeClusterOutput'  customize = (DescribeClusterOutput <<< customize) { "Cluster": (NullOrUndefined Nothing) }



-- | <p> The input for the <a>DescribeJobFlows</a> operation. </p>
newtype DescribeJobFlowsInput = DescribeJobFlowsInput 
  { "CreatedAfter" :: NullOrUndefined.NullOrUndefined (Date)
  , "CreatedBefore" :: NullOrUndefined.NullOrUndefined (Date)
  , "JobFlowIds" :: NullOrUndefined.NullOrUndefined (XmlStringList)
  , "JobFlowStates" :: NullOrUndefined.NullOrUndefined (JobFlowExecutionStateList)
  }
derive instance newtypeDescribeJobFlowsInput :: Newtype DescribeJobFlowsInput _
derive instance repGenericDescribeJobFlowsInput :: Generic DescribeJobFlowsInput _
instance showDescribeJobFlowsInput :: Show DescribeJobFlowsInput where
  show = genericShow
instance decodeDescribeJobFlowsInput :: Decode DescribeJobFlowsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobFlowsInput :: Encode DescribeJobFlowsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobFlowsInput from required parameters
newDescribeJobFlowsInput :: DescribeJobFlowsInput
newDescribeJobFlowsInput  = DescribeJobFlowsInput { "CreatedAfter": (NullOrUndefined Nothing), "CreatedBefore": (NullOrUndefined Nothing), "JobFlowIds": (NullOrUndefined Nothing), "JobFlowStates": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobFlowsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobFlowsInput' :: ( { "CreatedAfter" :: NullOrUndefined.NullOrUndefined (Date) , "CreatedBefore" :: NullOrUndefined.NullOrUndefined (Date) , "JobFlowIds" :: NullOrUndefined.NullOrUndefined (XmlStringList) , "JobFlowStates" :: NullOrUndefined.NullOrUndefined (JobFlowExecutionStateList) } -> {"CreatedAfter" :: NullOrUndefined.NullOrUndefined (Date) , "CreatedBefore" :: NullOrUndefined.NullOrUndefined (Date) , "JobFlowIds" :: NullOrUndefined.NullOrUndefined (XmlStringList) , "JobFlowStates" :: NullOrUndefined.NullOrUndefined (JobFlowExecutionStateList) } ) -> DescribeJobFlowsInput
newDescribeJobFlowsInput'  customize = (DescribeJobFlowsInput <<< customize) { "CreatedAfter": (NullOrUndefined Nothing), "CreatedBefore": (NullOrUndefined Nothing), "JobFlowIds": (NullOrUndefined Nothing), "JobFlowStates": (NullOrUndefined Nothing) }



-- | <p> The output for the <a>DescribeJobFlows</a> operation. </p>
newtype DescribeJobFlowsOutput = DescribeJobFlowsOutput 
  { "JobFlows" :: NullOrUndefined.NullOrUndefined (JobFlowDetailList)
  }
derive instance newtypeDescribeJobFlowsOutput :: Newtype DescribeJobFlowsOutput _
derive instance repGenericDescribeJobFlowsOutput :: Generic DescribeJobFlowsOutput _
instance showDescribeJobFlowsOutput :: Show DescribeJobFlowsOutput where
  show = genericShow
instance decodeDescribeJobFlowsOutput :: Decode DescribeJobFlowsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeJobFlowsOutput :: Encode DescribeJobFlowsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeJobFlowsOutput from required parameters
newDescribeJobFlowsOutput :: DescribeJobFlowsOutput
newDescribeJobFlowsOutput  = DescribeJobFlowsOutput { "JobFlows": (NullOrUndefined Nothing) }

-- | Constructs DescribeJobFlowsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobFlowsOutput' :: ( { "JobFlows" :: NullOrUndefined.NullOrUndefined (JobFlowDetailList) } -> {"JobFlows" :: NullOrUndefined.NullOrUndefined (JobFlowDetailList) } ) -> DescribeJobFlowsOutput
newDescribeJobFlowsOutput'  customize = (DescribeJobFlowsOutput <<< customize) { "JobFlows": (NullOrUndefined Nothing) }



newtype DescribeSecurityConfigurationInput = DescribeSecurityConfigurationInput 
  { "Name" :: (XmlString)
  }
derive instance newtypeDescribeSecurityConfigurationInput :: Newtype DescribeSecurityConfigurationInput _
derive instance repGenericDescribeSecurityConfigurationInput :: Generic DescribeSecurityConfigurationInput _
instance showDescribeSecurityConfigurationInput :: Show DescribeSecurityConfigurationInput where
  show = genericShow
instance decodeDescribeSecurityConfigurationInput :: Decode DescribeSecurityConfigurationInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeSecurityConfigurationInput :: Encode DescribeSecurityConfigurationInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeSecurityConfigurationInput from required parameters
newDescribeSecurityConfigurationInput :: XmlString -> DescribeSecurityConfigurationInput
newDescribeSecurityConfigurationInput _Name = DescribeSecurityConfigurationInput { "Name": _Name }

-- | Constructs DescribeSecurityConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSecurityConfigurationInput' :: XmlString -> ( { "Name" :: (XmlString) } -> {"Name" :: (XmlString) } ) -> DescribeSecurityConfigurationInput
newDescribeSecurityConfigurationInput' _Name customize = (DescribeSecurityConfigurationInput <<< customize) { "Name": _Name }



newtype DescribeSecurityConfigurationOutput = DescribeSecurityConfigurationOutput 
  { "Name" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (String)
  , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeDescribeSecurityConfigurationOutput :: Newtype DescribeSecurityConfigurationOutput _
derive instance repGenericDescribeSecurityConfigurationOutput :: Generic DescribeSecurityConfigurationOutput _
instance showDescribeSecurityConfigurationOutput :: Show DescribeSecurityConfigurationOutput where
  show = genericShow
instance decodeDescribeSecurityConfigurationOutput :: Decode DescribeSecurityConfigurationOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeSecurityConfigurationOutput :: Encode DescribeSecurityConfigurationOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeSecurityConfigurationOutput from required parameters
newDescribeSecurityConfigurationOutput :: DescribeSecurityConfigurationOutput
newDescribeSecurityConfigurationOutput  = DescribeSecurityConfigurationOutput { "CreationDateTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SecurityConfiguration": (NullOrUndefined Nothing) }

-- | Constructs DescribeSecurityConfigurationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSecurityConfigurationOutput' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (XmlString) , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (String) , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"Name" :: NullOrUndefined.NullOrUndefined (XmlString) , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (String) , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> DescribeSecurityConfigurationOutput
newDescribeSecurityConfigurationOutput'  customize = (DescribeSecurityConfigurationOutput <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "SecurityConfiguration": (NullOrUndefined Nothing) }



-- | <p>This input determines which step to describe.</p>
newtype DescribeStepInput = DescribeStepInput 
  { "ClusterId" :: (ClusterId)
  , "StepId" :: (StepId)
  }
derive instance newtypeDescribeStepInput :: Newtype DescribeStepInput _
derive instance repGenericDescribeStepInput :: Generic DescribeStepInput _
instance showDescribeStepInput :: Show DescribeStepInput where
  show = genericShow
instance decodeDescribeStepInput :: Decode DescribeStepInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStepInput :: Encode DescribeStepInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStepInput from required parameters
newDescribeStepInput :: ClusterId -> StepId -> DescribeStepInput
newDescribeStepInput _ClusterId _StepId = DescribeStepInput { "ClusterId": _ClusterId, "StepId": _StepId }

-- | Constructs DescribeStepInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStepInput' :: ClusterId -> StepId -> ( { "ClusterId" :: (ClusterId) , "StepId" :: (StepId) } -> {"ClusterId" :: (ClusterId) , "StepId" :: (StepId) } ) -> DescribeStepInput
newDescribeStepInput' _ClusterId _StepId customize = (DescribeStepInput <<< customize) { "ClusterId": _ClusterId, "StepId": _StepId }



-- | <p>This output contains the description of the cluster step.</p>
newtype DescribeStepOutput = DescribeStepOutput 
  { "Step" :: NullOrUndefined.NullOrUndefined (Step)
  }
derive instance newtypeDescribeStepOutput :: Newtype DescribeStepOutput _
derive instance repGenericDescribeStepOutput :: Generic DescribeStepOutput _
instance showDescribeStepOutput :: Show DescribeStepOutput where
  show = genericShow
instance decodeDescribeStepOutput :: Decode DescribeStepOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeStepOutput :: Encode DescribeStepOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeStepOutput from required parameters
newDescribeStepOutput :: DescribeStepOutput
newDescribeStepOutput  = DescribeStepOutput { "Step": (NullOrUndefined Nothing) }

-- | Constructs DescribeStepOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStepOutput' :: ( { "Step" :: NullOrUndefined.NullOrUndefined (Step) } -> {"Step" :: NullOrUndefined.NullOrUndefined (Step) } ) -> DescribeStepOutput
newDescribeStepOutput'  customize = (DescribeStepOutput <<< customize) { "Step": (NullOrUndefined Nothing) }



newtype EC2InstanceIdsList = EC2InstanceIdsList (Array InstanceId)
derive instance newtypeEC2InstanceIdsList :: Newtype EC2InstanceIdsList _
derive instance repGenericEC2InstanceIdsList :: Generic EC2InstanceIdsList _
instance showEC2InstanceIdsList :: Show EC2InstanceIdsList where
  show = genericShow
instance decodeEC2InstanceIdsList :: Decode EC2InstanceIdsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEC2InstanceIdsList :: Encode EC2InstanceIdsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EC2InstanceIdsToTerminateList = EC2InstanceIdsToTerminateList (Array InstanceId)
derive instance newtypeEC2InstanceIdsToTerminateList :: Newtype EC2InstanceIdsToTerminateList _
derive instance repGenericEC2InstanceIdsToTerminateList :: Generic EC2InstanceIdsToTerminateList _
instance showEC2InstanceIdsToTerminateList :: Show EC2InstanceIdsToTerminateList where
  show = genericShow
instance decodeEC2InstanceIdsToTerminateList :: Decode EC2InstanceIdsToTerminateList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEC2InstanceIdsToTerminateList :: Encode EC2InstanceIdsToTerminateList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Configuration of requested EBS block device associated with the instance group.</p>
newtype EbsBlockDevice = EbsBlockDevice 
  { "VolumeSpecification" :: NullOrUndefined.NullOrUndefined (VolumeSpecification)
  , "Device" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeEbsBlockDevice :: Newtype EbsBlockDevice _
derive instance repGenericEbsBlockDevice :: Generic EbsBlockDevice _
instance showEbsBlockDevice :: Show EbsBlockDevice where
  show = genericShow
instance decodeEbsBlockDevice :: Decode EbsBlockDevice where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsBlockDevice :: Encode EbsBlockDevice where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EbsBlockDevice from required parameters
newEbsBlockDevice :: EbsBlockDevice
newEbsBlockDevice  = EbsBlockDevice { "Device": (NullOrUndefined Nothing), "VolumeSpecification": (NullOrUndefined Nothing) }

-- | Constructs EbsBlockDevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsBlockDevice' :: ( { "VolumeSpecification" :: NullOrUndefined.NullOrUndefined (VolumeSpecification) , "Device" :: NullOrUndefined.NullOrUndefined (String) } -> {"VolumeSpecification" :: NullOrUndefined.NullOrUndefined (VolumeSpecification) , "Device" :: NullOrUndefined.NullOrUndefined (String) } ) -> EbsBlockDevice
newEbsBlockDevice'  customize = (EbsBlockDevice <<< customize) { "Device": (NullOrUndefined Nothing), "VolumeSpecification": (NullOrUndefined Nothing) }



-- | <p>Configuration of requested EBS block device associated with the instance group with count of volumes that will be associated to every instance.</p>
newtype EbsBlockDeviceConfig = EbsBlockDeviceConfig 
  { "VolumeSpecification" :: (VolumeSpecification)
  , "VolumesPerInstance" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeEbsBlockDeviceConfig :: Newtype EbsBlockDeviceConfig _
derive instance repGenericEbsBlockDeviceConfig :: Generic EbsBlockDeviceConfig _
instance showEbsBlockDeviceConfig :: Show EbsBlockDeviceConfig where
  show = genericShow
instance decodeEbsBlockDeviceConfig :: Decode EbsBlockDeviceConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsBlockDeviceConfig :: Encode EbsBlockDeviceConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EbsBlockDeviceConfig from required parameters
newEbsBlockDeviceConfig :: VolumeSpecification -> EbsBlockDeviceConfig
newEbsBlockDeviceConfig _VolumeSpecification = EbsBlockDeviceConfig { "VolumeSpecification": _VolumeSpecification, "VolumesPerInstance": (NullOrUndefined Nothing) }

-- | Constructs EbsBlockDeviceConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsBlockDeviceConfig' :: VolumeSpecification -> ( { "VolumeSpecification" :: (VolumeSpecification) , "VolumesPerInstance" :: NullOrUndefined.NullOrUndefined (Int) } -> {"VolumeSpecification" :: (VolumeSpecification) , "VolumesPerInstance" :: NullOrUndefined.NullOrUndefined (Int) } ) -> EbsBlockDeviceConfig
newEbsBlockDeviceConfig' _VolumeSpecification customize = (EbsBlockDeviceConfig <<< customize) { "VolumeSpecification": _VolumeSpecification, "VolumesPerInstance": (NullOrUndefined Nothing) }



newtype EbsBlockDeviceConfigList = EbsBlockDeviceConfigList (Array EbsBlockDeviceConfig)
derive instance newtypeEbsBlockDeviceConfigList :: Newtype EbsBlockDeviceConfigList _
derive instance repGenericEbsBlockDeviceConfigList :: Generic EbsBlockDeviceConfigList _
instance showEbsBlockDeviceConfigList :: Show EbsBlockDeviceConfigList where
  show = genericShow
instance decodeEbsBlockDeviceConfigList :: Decode EbsBlockDeviceConfigList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsBlockDeviceConfigList :: Encode EbsBlockDeviceConfigList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EbsBlockDeviceList = EbsBlockDeviceList (Array EbsBlockDevice)
derive instance newtypeEbsBlockDeviceList :: Newtype EbsBlockDeviceList _
derive instance repGenericEbsBlockDeviceList :: Generic EbsBlockDeviceList _
instance showEbsBlockDeviceList :: Show EbsBlockDeviceList where
  show = genericShow
instance decodeEbsBlockDeviceList :: Decode EbsBlockDeviceList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsBlockDeviceList :: Encode EbsBlockDeviceList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The Amazon EBS configuration of a cluster instance.</p>
newtype EbsConfiguration = EbsConfiguration 
  { "EbsBlockDeviceConfigs" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceConfigList)
  , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject)
  }
derive instance newtypeEbsConfiguration :: Newtype EbsConfiguration _
derive instance repGenericEbsConfiguration :: Generic EbsConfiguration _
instance showEbsConfiguration :: Show EbsConfiguration where
  show = genericShow
instance decodeEbsConfiguration :: Decode EbsConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsConfiguration :: Encode EbsConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EbsConfiguration from required parameters
newEbsConfiguration :: EbsConfiguration
newEbsConfiguration  = EbsConfiguration { "EbsBlockDeviceConfigs": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing) }

-- | Constructs EbsConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsConfiguration' :: ( { "EbsBlockDeviceConfigs" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceConfigList) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject) } -> {"EbsBlockDeviceConfigs" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceConfigList) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject) } ) -> EbsConfiguration
newEbsConfiguration'  customize = (EbsConfiguration <<< customize) { "EbsBlockDeviceConfigs": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing) }



-- | <p>EBS block device that's attached to an EC2 instance.</p>
newtype EbsVolume = EbsVolume 
  { "Device" :: NullOrUndefined.NullOrUndefined (String)
  , "VolumeId" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeEbsVolume :: Newtype EbsVolume _
derive instance repGenericEbsVolume :: Generic EbsVolume _
instance showEbsVolume :: Show EbsVolume where
  show = genericShow
instance decodeEbsVolume :: Decode EbsVolume where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsVolume :: Encode EbsVolume where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EbsVolume from required parameters
newEbsVolume :: EbsVolume
newEbsVolume  = EbsVolume { "Device": (NullOrUndefined Nothing), "VolumeId": (NullOrUndefined Nothing) }

-- | Constructs EbsVolume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsVolume' :: ( { "Device" :: NullOrUndefined.NullOrUndefined (String) , "VolumeId" :: NullOrUndefined.NullOrUndefined (String) } -> {"Device" :: NullOrUndefined.NullOrUndefined (String) , "VolumeId" :: NullOrUndefined.NullOrUndefined (String) } ) -> EbsVolume
newEbsVolume'  customize = (EbsVolume <<< customize) { "Device": (NullOrUndefined Nothing), "VolumeId": (NullOrUndefined Nothing) }



newtype EbsVolumeList = EbsVolumeList (Array EbsVolume)
derive instance newtypeEbsVolumeList :: Newtype EbsVolumeList _
derive instance repGenericEbsVolumeList :: Generic EbsVolumeList _
instance showEbsVolumeList :: Show EbsVolumeList where
  show = genericShow
instance decodeEbsVolumeList :: Decode EbsVolumeList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEbsVolumeList :: Encode EbsVolumeList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Provides information about the EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.</p>
newtype Ec2InstanceAttributes = Ec2InstanceAttributes 
  { "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (String)
  , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (String)
  , "RequestedEc2SubnetIds" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List)
  , "Ec2AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String)
  , "RequestedEc2AvailabilityZones" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List)
  , "IamInstanceProfile" :: NullOrUndefined.NullOrUndefined (String)
  , "EmrManagedMasterSecurityGroup" :: NullOrUndefined.NullOrUndefined (String)
  , "EmrManagedSlaveSecurityGroup" :: NullOrUndefined.NullOrUndefined (String)
  , "ServiceAccessSecurityGroup" :: NullOrUndefined.NullOrUndefined (String)
  , "AdditionalMasterSecurityGroups" :: NullOrUndefined.NullOrUndefined (StringList)
  , "AdditionalSlaveSecurityGroups" :: NullOrUndefined.NullOrUndefined (StringList)
  }
derive instance newtypeEc2InstanceAttributes :: Newtype Ec2InstanceAttributes _
derive instance repGenericEc2InstanceAttributes :: Generic Ec2InstanceAttributes _
instance showEc2InstanceAttributes :: Show Ec2InstanceAttributes where
  show = genericShow
instance decodeEc2InstanceAttributes :: Decode Ec2InstanceAttributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEc2InstanceAttributes :: Encode Ec2InstanceAttributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Ec2InstanceAttributes from required parameters
newEc2InstanceAttributes :: Ec2InstanceAttributes
newEc2InstanceAttributes  = Ec2InstanceAttributes { "AdditionalMasterSecurityGroups": (NullOrUndefined Nothing), "AdditionalSlaveSecurityGroups": (NullOrUndefined Nothing), "Ec2AvailabilityZone": (NullOrUndefined Nothing), "Ec2KeyName": (NullOrUndefined Nothing), "Ec2SubnetId": (NullOrUndefined Nothing), "EmrManagedMasterSecurityGroup": (NullOrUndefined Nothing), "EmrManagedSlaveSecurityGroup": (NullOrUndefined Nothing), "IamInstanceProfile": (NullOrUndefined Nothing), "RequestedEc2AvailabilityZones": (NullOrUndefined Nothing), "RequestedEc2SubnetIds": (NullOrUndefined Nothing), "ServiceAccessSecurityGroup": (NullOrUndefined Nothing) }

-- | Constructs Ec2InstanceAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEc2InstanceAttributes' :: ( { "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (String) , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (String) , "RequestedEc2SubnetIds" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) , "Ec2AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "RequestedEc2AvailabilityZones" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) , "IamInstanceProfile" :: NullOrUndefined.NullOrUndefined (String) , "EmrManagedMasterSecurityGroup" :: NullOrUndefined.NullOrUndefined (String) , "EmrManagedSlaveSecurityGroup" :: NullOrUndefined.NullOrUndefined (String) , "ServiceAccessSecurityGroup" :: NullOrUndefined.NullOrUndefined (String) , "AdditionalMasterSecurityGroups" :: NullOrUndefined.NullOrUndefined (StringList) , "AdditionalSlaveSecurityGroups" :: NullOrUndefined.NullOrUndefined (StringList) } -> {"Ec2KeyName" :: NullOrUndefined.NullOrUndefined (String) , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (String) , "RequestedEc2SubnetIds" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) , "Ec2AvailabilityZone" :: NullOrUndefined.NullOrUndefined (String) , "RequestedEc2AvailabilityZones" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) , "IamInstanceProfile" :: NullOrUndefined.NullOrUndefined (String) , "EmrManagedMasterSecurityGroup" :: NullOrUndefined.NullOrUndefined (String) , "EmrManagedSlaveSecurityGroup" :: NullOrUndefined.NullOrUndefined (String) , "ServiceAccessSecurityGroup" :: NullOrUndefined.NullOrUndefined (String) , "AdditionalMasterSecurityGroups" :: NullOrUndefined.NullOrUndefined (StringList) , "AdditionalSlaveSecurityGroups" :: NullOrUndefined.NullOrUndefined (StringList) } ) -> Ec2InstanceAttributes
newEc2InstanceAttributes'  customize = (Ec2InstanceAttributes <<< customize) { "AdditionalMasterSecurityGroups": (NullOrUndefined Nothing), "AdditionalSlaveSecurityGroups": (NullOrUndefined Nothing), "Ec2AvailabilityZone": (NullOrUndefined Nothing), "Ec2KeyName": (NullOrUndefined Nothing), "Ec2SubnetId": (NullOrUndefined Nothing), "EmrManagedMasterSecurityGroup": (NullOrUndefined Nothing), "EmrManagedSlaveSecurityGroup": (NullOrUndefined Nothing), "IamInstanceProfile": (NullOrUndefined Nothing), "RequestedEc2AvailabilityZones": (NullOrUndefined Nothing), "RequestedEc2SubnetIds": (NullOrUndefined Nothing), "ServiceAccessSecurityGroup": (NullOrUndefined Nothing) }



newtype ErrorCode = ErrorCode String
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where
  show = genericShow
instance decodeErrorCode :: Decode ErrorCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorCode :: Encode ErrorCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where
  show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeErrorMessage :: Encode ErrorMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The details of the step failure. The service attempts to detect the root cause for many common failures.</p>
newtype FailureDetails = FailureDetails 
  { "Reason" :: NullOrUndefined.NullOrUndefined (String)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  , "LogFile" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeFailureDetails :: Newtype FailureDetails _
derive instance repGenericFailureDetails :: Generic FailureDetails _
instance showFailureDetails :: Show FailureDetails where
  show = genericShow
instance decodeFailureDetails :: Decode FailureDetails where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFailureDetails :: Encode FailureDetails where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs FailureDetails from required parameters
newFailureDetails :: FailureDetails
newFailureDetails  = FailureDetails { "LogFile": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }

-- | Constructs FailureDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailureDetails' :: ( { "Reason" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) , "LogFile" :: NullOrUndefined.NullOrUndefined (String) } -> {"Reason" :: NullOrUndefined.NullOrUndefined (String) , "Message" :: NullOrUndefined.NullOrUndefined (String) , "LogFile" :: NullOrUndefined.NullOrUndefined (String) } ) -> FailureDetails
newFailureDetails'  customize = (FailureDetails <<< customize) { "LogFile": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }



-- | <p>A job flow step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>
newtype HadoopJarStepConfig = HadoopJarStepConfig 
  { "Properties" :: NullOrUndefined.NullOrUndefined (KeyValueList)
  , "Jar" :: (XmlString)
  , "MainClass" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList)
  }
derive instance newtypeHadoopJarStepConfig :: Newtype HadoopJarStepConfig _
derive instance repGenericHadoopJarStepConfig :: Generic HadoopJarStepConfig _
instance showHadoopJarStepConfig :: Show HadoopJarStepConfig where
  show = genericShow
instance decodeHadoopJarStepConfig :: Decode HadoopJarStepConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHadoopJarStepConfig :: Encode HadoopJarStepConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HadoopJarStepConfig from required parameters
newHadoopJarStepConfig :: XmlString -> HadoopJarStepConfig
newHadoopJarStepConfig _Jar = HadoopJarStepConfig { "Jar": _Jar, "Args": (NullOrUndefined Nothing), "MainClass": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing) }

-- | Constructs HadoopJarStepConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHadoopJarStepConfig' :: XmlString -> ( { "Properties" :: NullOrUndefined.NullOrUndefined (KeyValueList) , "Jar" :: (XmlString) , "MainClass" :: NullOrUndefined.NullOrUndefined (XmlString) , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList) } -> {"Properties" :: NullOrUndefined.NullOrUndefined (KeyValueList) , "Jar" :: (XmlString) , "MainClass" :: NullOrUndefined.NullOrUndefined (XmlString) , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList) } ) -> HadoopJarStepConfig
newHadoopJarStepConfig' _Jar customize = (HadoopJarStepConfig <<< customize) { "Jar": _Jar, "Args": (NullOrUndefined Nothing), "MainClass": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing) }



-- | <p>A cluster step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>
newtype HadoopStepConfig = HadoopStepConfig 
  { "Jar" :: NullOrUndefined.NullOrUndefined (String)
  , "Properties" :: NullOrUndefined.NullOrUndefined (StringMap)
  , "MainClass" :: NullOrUndefined.NullOrUndefined (String)
  , "Args" :: NullOrUndefined.NullOrUndefined (StringList)
  }
derive instance newtypeHadoopStepConfig :: Newtype HadoopStepConfig _
derive instance repGenericHadoopStepConfig :: Generic HadoopStepConfig _
instance showHadoopStepConfig :: Show HadoopStepConfig where
  show = genericShow
instance decodeHadoopStepConfig :: Decode HadoopStepConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHadoopStepConfig :: Encode HadoopStepConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HadoopStepConfig from required parameters
newHadoopStepConfig :: HadoopStepConfig
newHadoopStepConfig  = HadoopStepConfig { "Args": (NullOrUndefined Nothing), "Jar": (NullOrUndefined Nothing), "MainClass": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing) }

-- | Constructs HadoopStepConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHadoopStepConfig' :: ( { "Jar" :: NullOrUndefined.NullOrUndefined (String) , "Properties" :: NullOrUndefined.NullOrUndefined (StringMap) , "MainClass" :: NullOrUndefined.NullOrUndefined (String) , "Args" :: NullOrUndefined.NullOrUndefined (StringList) } -> {"Jar" :: NullOrUndefined.NullOrUndefined (String) , "Properties" :: NullOrUndefined.NullOrUndefined (StringMap) , "MainClass" :: NullOrUndefined.NullOrUndefined (String) , "Args" :: NullOrUndefined.NullOrUndefined (StringList) } ) -> HadoopStepConfig
newHadoopStepConfig'  customize = (HadoopStepConfig <<< customize) { "Args": (NullOrUndefined Nothing), "Jar": (NullOrUndefined Nothing), "MainClass": (NullOrUndefined Nothing), "Properties": (NullOrUndefined Nothing) }



-- | <p>Represents an EC2 instance provisioned as part of cluster.</p>
newtype Instance = Instance 
  { "Id" :: NullOrUndefined.NullOrUndefined (InstanceId)
  , "Ec2InstanceId" :: NullOrUndefined.NullOrUndefined (InstanceId)
  , "PublicDnsName" :: NullOrUndefined.NullOrUndefined (String)
  , "PublicIpAddress" :: NullOrUndefined.NullOrUndefined (String)
  , "PrivateDnsName" :: NullOrUndefined.NullOrUndefined (String)
  , "PrivateIpAddress" :: NullOrUndefined.NullOrUndefined (String)
  , "Status" :: NullOrUndefined.NullOrUndefined (InstanceStatus)
  , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId)
  , "Market" :: NullOrUndefined.NullOrUndefined (MarketType)
  , "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType)
  , "EbsVolumes" :: NullOrUndefined.NullOrUndefined (EbsVolumeList)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where
  show = genericShow
instance decodeInstance :: Decode Instance where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstance :: Encode Instance where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Instance from required parameters
newInstance :: Instance
newInstance  = Instance { "EbsVolumes": (NullOrUndefined Nothing), "Ec2InstanceId": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceFleetId": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "Market": (NullOrUndefined Nothing), "PrivateDnsName": (NullOrUndefined Nothing), "PrivateIpAddress": (NullOrUndefined Nothing), "PublicDnsName": (NullOrUndefined Nothing), "PublicIpAddress": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (InstanceId) , "Ec2InstanceId" :: NullOrUndefined.NullOrUndefined (InstanceId) , "PublicDnsName" :: NullOrUndefined.NullOrUndefined (String) , "PublicIpAddress" :: NullOrUndefined.NullOrUndefined (String) , "PrivateDnsName" :: NullOrUndefined.NullOrUndefined (String) , "PrivateIpAddress" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (InstanceStatus) , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) , "Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "EbsVolumes" :: NullOrUndefined.NullOrUndefined (EbsVolumeList) } -> {"Id" :: NullOrUndefined.NullOrUndefined (InstanceId) , "Ec2InstanceId" :: NullOrUndefined.NullOrUndefined (InstanceId) , "PublicDnsName" :: NullOrUndefined.NullOrUndefined (String) , "PublicIpAddress" :: NullOrUndefined.NullOrUndefined (String) , "PrivateDnsName" :: NullOrUndefined.NullOrUndefined (String) , "PrivateIpAddress" :: NullOrUndefined.NullOrUndefined (String) , "Status" :: NullOrUndefined.NullOrUndefined (InstanceStatus) , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (String) , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) , "Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "EbsVolumes" :: NullOrUndefined.NullOrUndefined (EbsVolumeList) } ) -> Instance
newInstance'  customize = (Instance <<< customize) { "EbsVolumes": (NullOrUndefined Nothing), "Ec2InstanceId": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceFleetId": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "Market": (NullOrUndefined Nothing), "PrivateDnsName": (NullOrUndefined Nothing), "PrivateIpAddress": (NullOrUndefined Nothing), "PublicDnsName": (NullOrUndefined Nothing), "PublicIpAddress": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype InstanceCollectionType = InstanceCollectionType String
derive instance newtypeInstanceCollectionType :: Newtype InstanceCollectionType _
derive instance repGenericInstanceCollectionType :: Generic InstanceCollectionType _
instance showInstanceCollectionType :: Show InstanceCollectionType where
  show = genericShow
instance decodeInstanceCollectionType :: Decode InstanceCollectionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceCollectionType :: Encode InstanceCollectionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes an instance fleet, which is a group of EC2 instances that host a particular node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can consist of a mix of instance types and On-Demand and Spot instances, which are provisioned to meet a defined target capacity. </p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleet = InstanceFleet 
  { "Id" :: NullOrUndefined.NullOrUndefined (InstanceFleetId)
  , "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Status" :: NullOrUndefined.NullOrUndefined (InstanceFleetStatus)
  , "InstanceFleetType" :: NullOrUndefined.NullOrUndefined (InstanceFleetType)
  , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "ProvisionedOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "ProvisionedSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "InstanceTypeSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceTypeSpecificationList)
  , "LaunchSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceFleetProvisioningSpecifications)
  }
derive instance newtypeInstanceFleet :: Newtype InstanceFleet _
derive instance repGenericInstanceFleet :: Generic InstanceFleet _
instance showInstanceFleet :: Show InstanceFleet where
  show = genericShow
instance decodeInstanceFleet :: Decode InstanceFleet where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleet :: Encode InstanceFleet where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceFleet from required parameters
newInstanceFleet :: InstanceFleet
newInstanceFleet  = InstanceFleet { "Id": (NullOrUndefined Nothing), "InstanceFleetType": (NullOrUndefined Nothing), "InstanceTypeSpecifications": (NullOrUndefined Nothing), "LaunchSpecifications": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ProvisionedOnDemandCapacity": (NullOrUndefined Nothing), "ProvisionedSpotCapacity": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TargetOnDemandCapacity": (NullOrUndefined Nothing), "TargetSpotCapacity": (NullOrUndefined Nothing) }

-- | Constructs InstanceFleet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleet' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) , "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Status" :: NullOrUndefined.NullOrUndefined (InstanceFleetStatus) , "InstanceFleetType" :: NullOrUndefined.NullOrUndefined (InstanceFleetType) , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "ProvisionedOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "ProvisionedSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "InstanceTypeSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceTypeSpecificationList) , "LaunchSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceFleetProvisioningSpecifications) } -> {"Id" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) , "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Status" :: NullOrUndefined.NullOrUndefined (InstanceFleetStatus) , "InstanceFleetType" :: NullOrUndefined.NullOrUndefined (InstanceFleetType) , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "ProvisionedOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "ProvisionedSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "InstanceTypeSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceTypeSpecificationList) , "LaunchSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceFleetProvisioningSpecifications) } ) -> InstanceFleet
newInstanceFleet'  customize = (InstanceFleet <<< customize) { "Id": (NullOrUndefined Nothing), "InstanceFleetType": (NullOrUndefined Nothing), "InstanceTypeSpecifications": (NullOrUndefined Nothing), "LaunchSpecifications": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ProvisionedOnDemandCapacity": (NullOrUndefined Nothing), "ProvisionedSpotCapacity": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing), "TargetOnDemandCapacity": (NullOrUndefined Nothing), "TargetSpotCapacity": (NullOrUndefined Nothing) }



-- | <p>The configuration that defines an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetConfig = InstanceFleetConfig 
  { "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "InstanceFleetType" :: (InstanceFleetType)
  , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "InstanceTypeConfigs" :: NullOrUndefined.NullOrUndefined (InstanceTypeConfigList)
  , "LaunchSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceFleetProvisioningSpecifications)
  }
derive instance newtypeInstanceFleetConfig :: Newtype InstanceFleetConfig _
derive instance repGenericInstanceFleetConfig :: Generic InstanceFleetConfig _
instance showInstanceFleetConfig :: Show InstanceFleetConfig where
  show = genericShow
instance decodeInstanceFleetConfig :: Decode InstanceFleetConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetConfig :: Encode InstanceFleetConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceFleetConfig from required parameters
newInstanceFleetConfig :: InstanceFleetType -> InstanceFleetConfig
newInstanceFleetConfig _InstanceFleetType = InstanceFleetConfig { "InstanceFleetType": _InstanceFleetType, "InstanceTypeConfigs": (NullOrUndefined Nothing), "LaunchSpecifications": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "TargetOnDemandCapacity": (NullOrUndefined Nothing), "TargetSpotCapacity": (NullOrUndefined Nothing) }

-- | Constructs InstanceFleetConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetConfig' :: InstanceFleetType -> ( { "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceFleetType" :: (InstanceFleetType) , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "InstanceTypeConfigs" :: NullOrUndefined.NullOrUndefined (InstanceTypeConfigList) , "LaunchSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceFleetProvisioningSpecifications) } -> {"Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceFleetType" :: (InstanceFleetType) , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "InstanceTypeConfigs" :: NullOrUndefined.NullOrUndefined (InstanceTypeConfigList) , "LaunchSpecifications" :: NullOrUndefined.NullOrUndefined (InstanceFleetProvisioningSpecifications) } ) -> InstanceFleetConfig
newInstanceFleetConfig' _InstanceFleetType customize = (InstanceFleetConfig <<< customize) { "InstanceFleetType": _InstanceFleetType, "InstanceTypeConfigs": (NullOrUndefined Nothing), "LaunchSpecifications": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "TargetOnDemandCapacity": (NullOrUndefined Nothing), "TargetSpotCapacity": (NullOrUndefined Nothing) }



newtype InstanceFleetConfigList = InstanceFleetConfigList (Array InstanceFleetConfig)
derive instance newtypeInstanceFleetConfigList :: Newtype InstanceFleetConfigList _
derive instance repGenericInstanceFleetConfigList :: Generic InstanceFleetConfigList _
instance showInstanceFleetConfigList :: Show InstanceFleetConfigList where
  show = genericShow
instance decodeInstanceFleetConfigList :: Decode InstanceFleetConfigList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetConfigList :: Encode InstanceFleetConfigList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceFleetId = InstanceFleetId String
derive instance newtypeInstanceFleetId :: Newtype InstanceFleetId _
derive instance repGenericInstanceFleetId :: Generic InstanceFleetId _
instance showInstanceFleetId :: Show InstanceFleetId where
  show = genericShow
instance decodeInstanceFleetId :: Decode InstanceFleetId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetId :: Encode InstanceFleetId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceFleetList = InstanceFleetList (Array InstanceFleet)
derive instance newtypeInstanceFleetList :: Newtype InstanceFleetList _
derive instance repGenericInstanceFleetList :: Generic InstanceFleetList _
instance showInstanceFleetList :: Show InstanceFleetList where
  show = genericShow
instance decodeInstanceFleetList :: Decode InstanceFleetList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetList :: Encode InstanceFleetList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Configuration parameters for an instance fleet modification request.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetModifyConfig = InstanceFleetModifyConfig 
  { "InstanceFleetId" :: (InstanceFleetId)
  , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  }
derive instance newtypeInstanceFleetModifyConfig :: Newtype InstanceFleetModifyConfig _
derive instance repGenericInstanceFleetModifyConfig :: Generic InstanceFleetModifyConfig _
instance showInstanceFleetModifyConfig :: Show InstanceFleetModifyConfig where
  show = genericShow
instance decodeInstanceFleetModifyConfig :: Decode InstanceFleetModifyConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetModifyConfig :: Encode InstanceFleetModifyConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceFleetModifyConfig from required parameters
newInstanceFleetModifyConfig :: InstanceFleetId -> InstanceFleetModifyConfig
newInstanceFleetModifyConfig _InstanceFleetId = InstanceFleetModifyConfig { "InstanceFleetId": _InstanceFleetId, "TargetOnDemandCapacity": (NullOrUndefined Nothing), "TargetSpotCapacity": (NullOrUndefined Nothing) }

-- | Constructs InstanceFleetModifyConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetModifyConfig' :: InstanceFleetId -> ( { "InstanceFleetId" :: (InstanceFleetId) , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) } -> {"InstanceFleetId" :: (InstanceFleetId) , "TargetOnDemandCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "TargetSpotCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) } ) -> InstanceFleetModifyConfig
newInstanceFleetModifyConfig' _InstanceFleetId customize = (InstanceFleetModifyConfig <<< customize) { "InstanceFleetId": _InstanceFleetId, "TargetOnDemandCapacity": (NullOrUndefined Nothing), "TargetSpotCapacity": (NullOrUndefined Nothing) }



-- | <p>The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetProvisioningSpecifications = InstanceFleetProvisioningSpecifications 
  { "SpotSpecification" :: (SpotProvisioningSpecification)
  }
derive instance newtypeInstanceFleetProvisioningSpecifications :: Newtype InstanceFleetProvisioningSpecifications _
derive instance repGenericInstanceFleetProvisioningSpecifications :: Generic InstanceFleetProvisioningSpecifications _
instance showInstanceFleetProvisioningSpecifications :: Show InstanceFleetProvisioningSpecifications where
  show = genericShow
instance decodeInstanceFleetProvisioningSpecifications :: Decode InstanceFleetProvisioningSpecifications where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetProvisioningSpecifications :: Encode InstanceFleetProvisioningSpecifications where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceFleetProvisioningSpecifications from required parameters
newInstanceFleetProvisioningSpecifications :: SpotProvisioningSpecification -> InstanceFleetProvisioningSpecifications
newInstanceFleetProvisioningSpecifications _SpotSpecification = InstanceFleetProvisioningSpecifications { "SpotSpecification": _SpotSpecification }

-- | Constructs InstanceFleetProvisioningSpecifications's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetProvisioningSpecifications' :: SpotProvisioningSpecification -> ( { "SpotSpecification" :: (SpotProvisioningSpecification) } -> {"SpotSpecification" :: (SpotProvisioningSpecification) } ) -> InstanceFleetProvisioningSpecifications
newInstanceFleetProvisioningSpecifications' _SpotSpecification customize = (InstanceFleetProvisioningSpecifications <<< customize) { "SpotSpecification": _SpotSpecification }



newtype InstanceFleetState = InstanceFleetState String
derive instance newtypeInstanceFleetState :: Newtype InstanceFleetState _
derive instance repGenericInstanceFleetState :: Generic InstanceFleetState _
instance showInstanceFleetState :: Show InstanceFleetState where
  show = genericShow
instance decodeInstanceFleetState :: Decode InstanceFleetState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetState :: Encode InstanceFleetState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Provides status change reason details for the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetStateChangeReason = InstanceFleetStateChangeReason 
  { "Code" :: NullOrUndefined.NullOrUndefined (InstanceFleetStateChangeReasonCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInstanceFleetStateChangeReason :: Newtype InstanceFleetStateChangeReason _
derive instance repGenericInstanceFleetStateChangeReason :: Generic InstanceFleetStateChangeReason _
instance showInstanceFleetStateChangeReason :: Show InstanceFleetStateChangeReason where
  show = genericShow
instance decodeInstanceFleetStateChangeReason :: Decode InstanceFleetStateChangeReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetStateChangeReason :: Encode InstanceFleetStateChangeReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceFleetStateChangeReason from required parameters
newInstanceFleetStateChangeReason :: InstanceFleetStateChangeReason
newInstanceFleetStateChangeReason  = InstanceFleetStateChangeReason { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs InstanceFleetStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetStateChangeReason' :: ( { "Code" :: NullOrUndefined.NullOrUndefined (InstanceFleetStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Code" :: NullOrUndefined.NullOrUndefined (InstanceFleetStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InstanceFleetStateChangeReason
newInstanceFleetStateChangeReason'  customize = (InstanceFleetStateChangeReason <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype InstanceFleetStateChangeReasonCode = InstanceFleetStateChangeReasonCode String
derive instance newtypeInstanceFleetStateChangeReasonCode :: Newtype InstanceFleetStateChangeReasonCode _
derive instance repGenericInstanceFleetStateChangeReasonCode :: Generic InstanceFleetStateChangeReasonCode _
instance showInstanceFleetStateChangeReasonCode :: Show InstanceFleetStateChangeReasonCode where
  show = genericShow
instance decodeInstanceFleetStateChangeReasonCode :: Decode InstanceFleetStateChangeReasonCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetStateChangeReasonCode :: Encode InstanceFleetStateChangeReasonCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The status of the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetStatus = InstanceFleetStatus 
  { "State" :: NullOrUndefined.NullOrUndefined (InstanceFleetState)
  , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceFleetStateChangeReason)
  , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceFleetTimeline)
  }
derive instance newtypeInstanceFleetStatus :: Newtype InstanceFleetStatus _
derive instance repGenericInstanceFleetStatus :: Generic InstanceFleetStatus _
instance showInstanceFleetStatus :: Show InstanceFleetStatus where
  show = genericShow
instance decodeInstanceFleetStatus :: Decode InstanceFleetStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetStatus :: Encode InstanceFleetStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceFleetStatus from required parameters
newInstanceFleetStatus :: InstanceFleetStatus
newInstanceFleetStatus  = InstanceFleetStatus { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }

-- | Constructs InstanceFleetStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetStatus' :: ( { "State" :: NullOrUndefined.NullOrUndefined (InstanceFleetState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceFleetStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceFleetTimeline) } -> {"State" :: NullOrUndefined.NullOrUndefined (InstanceFleetState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceFleetStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceFleetTimeline) } ) -> InstanceFleetStatus
newInstanceFleetStatus'  customize = (InstanceFleetStatus <<< customize) { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }



-- | <p>Provides historical timestamps for the instance fleet, including the time of creation, the time it became ready to run jobs, and the time of termination.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetTimeline = InstanceFleetTimeline 
  { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeInstanceFleetTimeline :: Newtype InstanceFleetTimeline _
derive instance repGenericInstanceFleetTimeline :: Generic InstanceFleetTimeline _
instance showInstanceFleetTimeline :: Show InstanceFleetTimeline where
  show = genericShow
instance decodeInstanceFleetTimeline :: Decode InstanceFleetTimeline where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetTimeline :: Encode InstanceFleetTimeline where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceFleetTimeline from required parameters
newInstanceFleetTimeline :: InstanceFleetTimeline
newInstanceFleetTimeline  = InstanceFleetTimeline { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }

-- | Constructs InstanceFleetTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetTimeline' :: ( { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> InstanceFleetTimeline
newInstanceFleetTimeline'  customize = (InstanceFleetTimeline <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }



newtype InstanceFleetType = InstanceFleetType String
derive instance newtypeInstanceFleetType :: Newtype InstanceFleetType _
derive instance repGenericInstanceFleetType :: Generic InstanceFleetType _
instance showInstanceFleetType :: Show InstanceFleetType where
  show = genericShow
instance decodeInstanceFleetType :: Decode InstanceFleetType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceFleetType :: Encode InstanceFleetType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>This entity represents an instance group, which is a group of instances that have common purpose. For example, CORE instance group is used for HDFS.</p>
newtype InstanceGroup = InstanceGroup 
  { "Id" :: NullOrUndefined.NullOrUndefined (InstanceGroupId)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Market" :: NullOrUndefined.NullOrUndefined (MarketType)
  , "InstanceGroupType" :: NullOrUndefined.NullOrUndefined (InstanceGroupType)
  , "BidPrice" :: NullOrUndefined.NullOrUndefined (String)
  , "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType)
  , "RequestedInstanceCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "RunningInstanceCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "Status" :: NullOrUndefined.NullOrUndefined (InstanceGroupStatus)
  , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList)
  , "EbsBlockDevices" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceList)
  , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject)
  , "ShrinkPolicy" :: NullOrUndefined.NullOrUndefined (ShrinkPolicy)
  , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyDescription)
  }
derive instance newtypeInstanceGroup :: Newtype InstanceGroup _
derive instance repGenericInstanceGroup :: Generic InstanceGroup _
instance showInstanceGroup :: Show InstanceGroup where
  show = genericShow
instance decodeInstanceGroup :: Decode InstanceGroup where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroup :: Encode InstanceGroup where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceGroup from required parameters
newInstanceGroup :: InstanceGroup
newInstanceGroup  = InstanceGroup { "AutoScalingPolicy": (NullOrUndefined Nothing), "BidPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsBlockDevices": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceGroupType": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "Market": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RequestedInstanceCount": (NullOrUndefined Nothing), "RunningInstanceCount": (NullOrUndefined Nothing), "ShrinkPolicy": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs InstanceGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroup' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (InstanceGroupId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "InstanceGroupType" :: NullOrUndefined.NullOrUndefined (InstanceGroupType) , "BidPrice" :: NullOrUndefined.NullOrUndefined (String) , "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "RequestedInstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "RunningInstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "Status" :: NullOrUndefined.NullOrUndefined (InstanceGroupStatus) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "EbsBlockDevices" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceList) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "ShrinkPolicy" :: NullOrUndefined.NullOrUndefined (ShrinkPolicy) , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyDescription) } -> {"Id" :: NullOrUndefined.NullOrUndefined (InstanceGroupId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "InstanceGroupType" :: NullOrUndefined.NullOrUndefined (InstanceGroupType) , "BidPrice" :: NullOrUndefined.NullOrUndefined (String) , "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "RequestedInstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "RunningInstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "Status" :: NullOrUndefined.NullOrUndefined (InstanceGroupStatus) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "EbsBlockDevices" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceList) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject) , "ShrinkPolicy" :: NullOrUndefined.NullOrUndefined (ShrinkPolicy) , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyDescription) } ) -> InstanceGroup
newInstanceGroup'  customize = (InstanceGroup <<< customize) { "AutoScalingPolicy": (NullOrUndefined Nothing), "BidPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsBlockDevices": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "InstanceGroupType": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "Market": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "RequestedInstanceCount": (NullOrUndefined Nothing), "RunningInstanceCount": (NullOrUndefined Nothing), "ShrinkPolicy": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>Configuration defining a new instance group.</p>
newtype InstanceGroupConfig = InstanceGroupConfig 
  { "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Market" :: NullOrUndefined.NullOrUndefined (MarketType)
  , "InstanceRole" :: (InstanceRoleType)
  , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "InstanceType" :: (InstanceType)
  , "InstanceCount" :: (Int)
  , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList)
  , "EbsConfiguration" :: NullOrUndefined.NullOrUndefined (EbsConfiguration)
  , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicy)
  }
derive instance newtypeInstanceGroupConfig :: Newtype InstanceGroupConfig _
derive instance repGenericInstanceGroupConfig :: Generic InstanceGroupConfig _
instance showInstanceGroupConfig :: Show InstanceGroupConfig where
  show = genericShow
instance decodeInstanceGroupConfig :: Decode InstanceGroupConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupConfig :: Encode InstanceGroupConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceGroupConfig from required parameters
newInstanceGroupConfig :: Int -> InstanceRoleType -> InstanceType -> InstanceGroupConfig
newInstanceGroupConfig _InstanceCount _InstanceRole _InstanceType = InstanceGroupConfig { "InstanceCount": _InstanceCount, "InstanceRole": _InstanceRole, "InstanceType": _InstanceType, "AutoScalingPolicy": (NullOrUndefined Nothing), "BidPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsConfiguration": (NullOrUndefined Nothing), "Market": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs InstanceGroupConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupConfig' :: Int -> InstanceRoleType -> InstanceType -> ( { "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "EbsConfiguration" :: NullOrUndefined.NullOrUndefined (EbsConfiguration) , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicy) } -> {"Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "EbsConfiguration" :: NullOrUndefined.NullOrUndefined (EbsConfiguration) , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicy) } ) -> InstanceGroupConfig
newInstanceGroupConfig' _InstanceCount _InstanceRole _InstanceType customize = (InstanceGroupConfig <<< customize) { "InstanceCount": _InstanceCount, "InstanceRole": _InstanceRole, "InstanceType": _InstanceType, "AutoScalingPolicy": (NullOrUndefined Nothing), "BidPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsConfiguration": (NullOrUndefined Nothing), "Market": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype InstanceGroupConfigList = InstanceGroupConfigList (Array InstanceGroupConfig)
derive instance newtypeInstanceGroupConfigList :: Newtype InstanceGroupConfigList _
derive instance repGenericInstanceGroupConfigList :: Generic InstanceGroupConfigList _
instance showInstanceGroupConfigList :: Show InstanceGroupConfigList where
  show = genericShow
instance decodeInstanceGroupConfigList :: Decode InstanceGroupConfigList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupConfigList :: Encode InstanceGroupConfigList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Detailed information about an instance group.</p>
newtype InstanceGroupDetail = InstanceGroupDetail 
  { "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Market" :: (MarketType)
  , "InstanceRole" :: (InstanceRoleType)
  , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "InstanceType" :: (InstanceType)
  , "InstanceRequestCount" :: (Int)
  , "InstanceRunningCount" :: (Int)
  , "State" :: (InstanceGroupState)
  , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "CreationDateTime" :: (Date)
  , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeInstanceGroupDetail :: Newtype InstanceGroupDetail _
derive instance repGenericInstanceGroupDetail :: Generic InstanceGroupDetail _
instance showInstanceGroupDetail :: Show InstanceGroupDetail where
  show = genericShow
instance decodeInstanceGroupDetail :: Decode InstanceGroupDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupDetail :: Encode InstanceGroupDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceGroupDetail from required parameters
newInstanceGroupDetail :: Date -> Int -> InstanceRoleType -> Int -> InstanceType -> MarketType -> InstanceGroupState -> InstanceGroupDetail
newInstanceGroupDetail _CreationDateTime _InstanceRequestCount _InstanceRole _InstanceRunningCount _InstanceType _Market _State = InstanceGroupDetail { "CreationDateTime": _CreationDateTime, "InstanceRequestCount": _InstanceRequestCount, "InstanceRole": _InstanceRole, "InstanceRunningCount": _InstanceRunningCount, "InstanceType": _InstanceType, "Market": _Market, "State": _State, "BidPrice": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing), "LastStateChangeReason": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }

-- | Constructs InstanceGroupDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupDetail' :: Date -> Int -> InstanceRoleType -> Int -> InstanceType -> MarketType -> InstanceGroupState -> ( { "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Market" :: (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceRequestCount" :: (Int) , "InstanceRunningCount" :: (Int) , "State" :: (InstanceGroupState) , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString) , "CreationDateTime" :: (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"InstanceGroupId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Market" :: (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceRequestCount" :: (Int) , "InstanceRunningCount" :: (Int) , "State" :: (InstanceGroupState) , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString) , "CreationDateTime" :: (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> InstanceGroupDetail
newInstanceGroupDetail' _CreationDateTime _InstanceRequestCount _InstanceRole _InstanceRunningCount _InstanceType _Market _State customize = (InstanceGroupDetail <<< customize) { "CreationDateTime": _CreationDateTime, "InstanceRequestCount": _InstanceRequestCount, "InstanceRole": _InstanceRole, "InstanceRunningCount": _InstanceRunningCount, "InstanceType": _InstanceType, "Market": _Market, "State": _State, "BidPrice": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing), "LastStateChangeReason": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }



newtype InstanceGroupDetailList = InstanceGroupDetailList (Array InstanceGroupDetail)
derive instance newtypeInstanceGroupDetailList :: Newtype InstanceGroupDetailList _
derive instance repGenericInstanceGroupDetailList :: Generic InstanceGroupDetailList _
instance showInstanceGroupDetailList :: Show InstanceGroupDetailList where
  show = genericShow
instance decodeInstanceGroupDetailList :: Decode InstanceGroupDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupDetailList :: Encode InstanceGroupDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceGroupId = InstanceGroupId String
derive instance newtypeInstanceGroupId :: Newtype InstanceGroupId _
derive instance repGenericInstanceGroupId :: Generic InstanceGroupId _
instance showInstanceGroupId :: Show InstanceGroupId where
  show = genericShow
instance decodeInstanceGroupId :: Decode InstanceGroupId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupId :: Encode InstanceGroupId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceGroupIdsList = InstanceGroupIdsList (Array XmlStringMaxLen256)
derive instance newtypeInstanceGroupIdsList :: Newtype InstanceGroupIdsList _
derive instance repGenericInstanceGroupIdsList :: Generic InstanceGroupIdsList _
instance showInstanceGroupIdsList :: Show InstanceGroupIdsList where
  show = genericShow
instance decodeInstanceGroupIdsList :: Decode InstanceGroupIdsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupIdsList :: Encode InstanceGroupIdsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceGroupList = InstanceGroupList (Array InstanceGroup)
derive instance newtypeInstanceGroupList :: Newtype InstanceGroupList _
derive instance repGenericInstanceGroupList :: Generic InstanceGroupList _
instance showInstanceGroupList :: Show InstanceGroupList where
  show = genericShow
instance decodeInstanceGroupList :: Decode InstanceGroupList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupList :: Encode InstanceGroupList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Modify an instance group size.</p>
newtype InstanceGroupModifyConfig = InstanceGroupModifyConfig 
  { "InstanceGroupId" :: (XmlStringMaxLen256)
  , "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "EC2InstanceIdsToTerminate" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsToTerminateList)
  , "ShrinkPolicy" :: NullOrUndefined.NullOrUndefined (ShrinkPolicy)
  }
derive instance newtypeInstanceGroupModifyConfig :: Newtype InstanceGroupModifyConfig _
derive instance repGenericInstanceGroupModifyConfig :: Generic InstanceGroupModifyConfig _
instance showInstanceGroupModifyConfig :: Show InstanceGroupModifyConfig where
  show = genericShow
instance decodeInstanceGroupModifyConfig :: Decode InstanceGroupModifyConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupModifyConfig :: Encode InstanceGroupModifyConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceGroupModifyConfig from required parameters
newInstanceGroupModifyConfig :: XmlStringMaxLen256 -> InstanceGroupModifyConfig
newInstanceGroupModifyConfig _InstanceGroupId = InstanceGroupModifyConfig { "InstanceGroupId": _InstanceGroupId, "EC2InstanceIdsToTerminate": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "ShrinkPolicy": (NullOrUndefined Nothing) }

-- | Constructs InstanceGroupModifyConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupModifyConfig' :: XmlStringMaxLen256 -> ( { "InstanceGroupId" :: (XmlStringMaxLen256) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "EC2InstanceIdsToTerminate" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsToTerminateList) , "ShrinkPolicy" :: NullOrUndefined.NullOrUndefined (ShrinkPolicy) } -> {"InstanceGroupId" :: (XmlStringMaxLen256) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "EC2InstanceIdsToTerminate" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsToTerminateList) , "ShrinkPolicy" :: NullOrUndefined.NullOrUndefined (ShrinkPolicy) } ) -> InstanceGroupModifyConfig
newInstanceGroupModifyConfig' _InstanceGroupId customize = (InstanceGroupModifyConfig <<< customize) { "InstanceGroupId": _InstanceGroupId, "EC2InstanceIdsToTerminate": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "ShrinkPolicy": (NullOrUndefined Nothing) }



newtype InstanceGroupModifyConfigList = InstanceGroupModifyConfigList (Array InstanceGroupModifyConfig)
derive instance newtypeInstanceGroupModifyConfigList :: Newtype InstanceGroupModifyConfigList _
derive instance repGenericInstanceGroupModifyConfigList :: Generic InstanceGroupModifyConfigList _
instance showInstanceGroupModifyConfigList :: Show InstanceGroupModifyConfigList where
  show = genericShow
instance decodeInstanceGroupModifyConfigList :: Decode InstanceGroupModifyConfigList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupModifyConfigList :: Encode InstanceGroupModifyConfigList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceGroupState = InstanceGroupState String
derive instance newtypeInstanceGroupState :: Newtype InstanceGroupState _
derive instance repGenericInstanceGroupState :: Generic InstanceGroupState _
instance showInstanceGroupState :: Show InstanceGroupState where
  show = genericShow
instance decodeInstanceGroupState :: Decode InstanceGroupState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupState :: Encode InstanceGroupState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The status change reason details for the instance group.</p>
newtype InstanceGroupStateChangeReason = InstanceGroupStateChangeReason 
  { "Code" :: NullOrUndefined.NullOrUndefined (InstanceGroupStateChangeReasonCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInstanceGroupStateChangeReason :: Newtype InstanceGroupStateChangeReason _
derive instance repGenericInstanceGroupStateChangeReason :: Generic InstanceGroupStateChangeReason _
instance showInstanceGroupStateChangeReason :: Show InstanceGroupStateChangeReason where
  show = genericShow
instance decodeInstanceGroupStateChangeReason :: Decode InstanceGroupStateChangeReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupStateChangeReason :: Encode InstanceGroupStateChangeReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceGroupStateChangeReason from required parameters
newInstanceGroupStateChangeReason :: InstanceGroupStateChangeReason
newInstanceGroupStateChangeReason  = InstanceGroupStateChangeReason { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs InstanceGroupStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupStateChangeReason' :: ( { "Code" :: NullOrUndefined.NullOrUndefined (InstanceGroupStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Code" :: NullOrUndefined.NullOrUndefined (InstanceGroupStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InstanceGroupStateChangeReason
newInstanceGroupStateChangeReason'  customize = (InstanceGroupStateChangeReason <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype InstanceGroupStateChangeReasonCode = InstanceGroupStateChangeReasonCode String
derive instance newtypeInstanceGroupStateChangeReasonCode :: Newtype InstanceGroupStateChangeReasonCode _
derive instance repGenericInstanceGroupStateChangeReasonCode :: Generic InstanceGroupStateChangeReasonCode _
instance showInstanceGroupStateChangeReasonCode :: Show InstanceGroupStateChangeReasonCode where
  show = genericShow
instance decodeInstanceGroupStateChangeReasonCode :: Decode InstanceGroupStateChangeReasonCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupStateChangeReasonCode :: Encode InstanceGroupStateChangeReasonCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The details of the instance group status.</p>
newtype InstanceGroupStatus = InstanceGroupStatus 
  { "State" :: NullOrUndefined.NullOrUndefined (InstanceGroupState)
  , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceGroupStateChangeReason)
  , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceGroupTimeline)
  }
derive instance newtypeInstanceGroupStatus :: Newtype InstanceGroupStatus _
derive instance repGenericInstanceGroupStatus :: Generic InstanceGroupStatus _
instance showInstanceGroupStatus :: Show InstanceGroupStatus where
  show = genericShow
instance decodeInstanceGroupStatus :: Decode InstanceGroupStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupStatus :: Encode InstanceGroupStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceGroupStatus from required parameters
newInstanceGroupStatus :: InstanceGroupStatus
newInstanceGroupStatus  = InstanceGroupStatus { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }

-- | Constructs InstanceGroupStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupStatus' :: ( { "State" :: NullOrUndefined.NullOrUndefined (InstanceGroupState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceGroupStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceGroupTimeline) } -> {"State" :: NullOrUndefined.NullOrUndefined (InstanceGroupState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceGroupStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceGroupTimeline) } ) -> InstanceGroupStatus
newInstanceGroupStatus'  customize = (InstanceGroupStatus <<< customize) { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }



-- | <p>The timeline of the instance group lifecycle.</p>
newtype InstanceGroupTimeline = InstanceGroupTimeline 
  { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeInstanceGroupTimeline :: Newtype InstanceGroupTimeline _
derive instance repGenericInstanceGroupTimeline :: Generic InstanceGroupTimeline _
instance showInstanceGroupTimeline :: Show InstanceGroupTimeline where
  show = genericShow
instance decodeInstanceGroupTimeline :: Decode InstanceGroupTimeline where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupTimeline :: Encode InstanceGroupTimeline where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceGroupTimeline from required parameters
newInstanceGroupTimeline :: InstanceGroupTimeline
newInstanceGroupTimeline  = InstanceGroupTimeline { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }

-- | Constructs InstanceGroupTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupTimeline' :: ( { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> InstanceGroupTimeline
newInstanceGroupTimeline'  customize = (InstanceGroupTimeline <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }



newtype InstanceGroupType = InstanceGroupType String
derive instance newtypeInstanceGroupType :: Newtype InstanceGroupType _
derive instance repGenericInstanceGroupType :: Generic InstanceGroupType _
instance showInstanceGroupType :: Show InstanceGroupType where
  show = genericShow
instance decodeInstanceGroupType :: Decode InstanceGroupType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupType :: Encode InstanceGroupType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceGroupTypeList = InstanceGroupTypeList (Array InstanceGroupType)
derive instance newtypeInstanceGroupTypeList :: Newtype InstanceGroupTypeList _
derive instance repGenericInstanceGroupTypeList :: Generic InstanceGroupTypeList _
instance showInstanceGroupTypeList :: Show InstanceGroupTypeList where
  show = genericShow
instance decodeInstanceGroupTypeList :: Decode InstanceGroupTypeList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceGroupTypeList :: Encode InstanceGroupTypeList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceId = InstanceId String
derive instance newtypeInstanceId :: Newtype InstanceId _
derive instance repGenericInstanceId :: Generic InstanceId _
instance showInstanceId :: Show InstanceId where
  show = genericShow
instance decodeInstanceId :: Decode InstanceId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceId :: Encode InstanceId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceList = InstanceList (Array Instance)
derive instance newtypeInstanceList :: Newtype InstanceList _
derive instance repGenericInstanceList :: Generic InstanceList _
instance showInstanceList :: Show InstanceList where
  show = genericShow
instance decodeInstanceList :: Decode InstanceList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceList :: Encode InstanceList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Custom policy for requesting termination protection or termination of specific instances when shrinking an instance group.</p>
newtype InstanceResizePolicy = InstanceResizePolicy 
  { "InstancesToTerminate" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsList)
  , "InstancesToProtect" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsList)
  , "InstanceTerminationTimeout" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeInstanceResizePolicy :: Newtype InstanceResizePolicy _
derive instance repGenericInstanceResizePolicy :: Generic InstanceResizePolicy _
instance showInstanceResizePolicy :: Show InstanceResizePolicy where
  show = genericShow
instance decodeInstanceResizePolicy :: Decode InstanceResizePolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceResizePolicy :: Encode InstanceResizePolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceResizePolicy from required parameters
newInstanceResizePolicy :: InstanceResizePolicy
newInstanceResizePolicy  = InstanceResizePolicy { "InstanceTerminationTimeout": (NullOrUndefined Nothing), "InstancesToProtect": (NullOrUndefined Nothing), "InstancesToTerminate": (NullOrUndefined Nothing) }

-- | Constructs InstanceResizePolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceResizePolicy' :: ( { "InstancesToTerminate" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsList) , "InstancesToProtect" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsList) , "InstanceTerminationTimeout" :: NullOrUndefined.NullOrUndefined (Int) } -> {"InstancesToTerminate" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsList) , "InstancesToProtect" :: NullOrUndefined.NullOrUndefined (EC2InstanceIdsList) , "InstanceTerminationTimeout" :: NullOrUndefined.NullOrUndefined (Int) } ) -> InstanceResizePolicy
newInstanceResizePolicy'  customize = (InstanceResizePolicy <<< customize) { "InstanceTerminationTimeout": (NullOrUndefined Nothing), "InstancesToProtect": (NullOrUndefined Nothing), "InstancesToTerminate": (NullOrUndefined Nothing) }



newtype InstanceRoleType = InstanceRoleType String
derive instance newtypeInstanceRoleType :: Newtype InstanceRoleType _
derive instance repGenericInstanceRoleType :: Generic InstanceRoleType _
instance showInstanceRoleType :: Show InstanceRoleType where
  show = genericShow
instance decodeInstanceRoleType :: Decode InstanceRoleType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceRoleType :: Encode InstanceRoleType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceState = InstanceState String
derive instance newtypeInstanceState :: Newtype InstanceState _
derive instance repGenericInstanceState :: Generic InstanceState _
instance showInstanceState :: Show InstanceState where
  show = genericShow
instance decodeInstanceState :: Decode InstanceState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceState :: Encode InstanceState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The details of the status change reason for the instance.</p>
newtype InstanceStateChangeReason = InstanceStateChangeReason 
  { "Code" :: NullOrUndefined.NullOrUndefined (InstanceStateChangeReasonCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeInstanceStateChangeReason :: Newtype InstanceStateChangeReason _
derive instance repGenericInstanceStateChangeReason :: Generic InstanceStateChangeReason _
instance showInstanceStateChangeReason :: Show InstanceStateChangeReason where
  show = genericShow
instance decodeInstanceStateChangeReason :: Decode InstanceStateChangeReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceStateChangeReason :: Encode InstanceStateChangeReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceStateChangeReason from required parameters
newInstanceStateChangeReason :: InstanceStateChangeReason
newInstanceStateChangeReason  = InstanceStateChangeReason { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs InstanceStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceStateChangeReason' :: ( { "Code" :: NullOrUndefined.NullOrUndefined (InstanceStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Code" :: NullOrUndefined.NullOrUndefined (InstanceStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> InstanceStateChangeReason
newInstanceStateChangeReason'  customize = (InstanceStateChangeReason <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype InstanceStateChangeReasonCode = InstanceStateChangeReasonCode String
derive instance newtypeInstanceStateChangeReasonCode :: Newtype InstanceStateChangeReasonCode _
derive instance repGenericInstanceStateChangeReasonCode :: Generic InstanceStateChangeReasonCode _
instance showInstanceStateChangeReasonCode :: Show InstanceStateChangeReasonCode where
  show = genericShow
instance decodeInstanceStateChangeReasonCode :: Decode InstanceStateChangeReasonCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceStateChangeReasonCode :: Encode InstanceStateChangeReasonCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InstanceStateList = InstanceStateList (Array InstanceState)
derive instance newtypeInstanceStateList :: Newtype InstanceStateList _
derive instance repGenericInstanceStateList :: Generic InstanceStateList _
instance showInstanceStateList :: Show InstanceStateList where
  show = genericShow
instance decodeInstanceStateList :: Decode InstanceStateList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceStateList :: Encode InstanceStateList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The instance status details.</p>
newtype InstanceStatus = InstanceStatus 
  { "State" :: NullOrUndefined.NullOrUndefined (InstanceState)
  , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceStateChangeReason)
  , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceTimeline)
  }
derive instance newtypeInstanceStatus :: Newtype InstanceStatus _
derive instance repGenericInstanceStatus :: Generic InstanceStatus _
instance showInstanceStatus :: Show InstanceStatus where
  show = genericShow
instance decodeInstanceStatus :: Decode InstanceStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceStatus :: Encode InstanceStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceStatus from required parameters
newInstanceStatus :: InstanceStatus
newInstanceStatus  = InstanceStatus { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }

-- | Constructs InstanceStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceStatus' :: ( { "State" :: NullOrUndefined.NullOrUndefined (InstanceState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceTimeline) } -> {"State" :: NullOrUndefined.NullOrUndefined (InstanceState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (InstanceStateChangeReason) , "Timeline" :: NullOrUndefined.NullOrUndefined (InstanceTimeline) } ) -> InstanceStatus
newInstanceStatus'  customize = (InstanceStatus <<< customize) { "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }



-- | <p>The timeline of the instance lifecycle.</p>
newtype InstanceTimeline = InstanceTimeline 
  { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeInstanceTimeline :: Newtype InstanceTimeline _
derive instance repGenericInstanceTimeline :: Generic InstanceTimeline _
instance showInstanceTimeline :: Show InstanceTimeline where
  show = genericShow
instance decodeInstanceTimeline :: Decode InstanceTimeline where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceTimeline :: Encode InstanceTimeline where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceTimeline from required parameters
newInstanceTimeline :: InstanceTimeline
newInstanceTimeline  = InstanceTimeline { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }

-- | Constructs InstanceTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceTimeline' :: ( { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> InstanceTimeline
newInstanceTimeline'  customize = (InstanceTimeline <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing) }



newtype InstanceType = InstanceType String
derive instance newtypeInstanceType :: Newtype InstanceType _
derive instance repGenericInstanceType :: Generic InstanceType _
instance showInstanceType :: Show InstanceType where
  show = genericShow
instance decodeInstanceType :: Decode InstanceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceType :: Encode InstanceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>An instance type configuration for each instance type in an instance fleet, which determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities. There can be a maximum of 5 instance type configurations in a fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceTypeConfig = InstanceTypeConfig 
  { "InstanceType" :: (InstanceType)
  , "WeightedCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined.NullOrUndefined (NonNegativeDouble)
  , "EbsConfiguration" :: NullOrUndefined.NullOrUndefined (EbsConfiguration)
  , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList)
  }
derive instance newtypeInstanceTypeConfig :: Newtype InstanceTypeConfig _
derive instance repGenericInstanceTypeConfig :: Generic InstanceTypeConfig _
instance showInstanceTypeConfig :: Show InstanceTypeConfig where
  show = genericShow
instance decodeInstanceTypeConfig :: Decode InstanceTypeConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceTypeConfig :: Encode InstanceTypeConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceTypeConfig from required parameters
newInstanceTypeConfig :: InstanceType -> InstanceTypeConfig
newInstanceTypeConfig _InstanceType = InstanceTypeConfig { "InstanceType": _InstanceType, "BidPrice": (NullOrUndefined Nothing), "BidPriceAsPercentageOfOnDemandPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsConfiguration": (NullOrUndefined Nothing), "WeightedCapacity": (NullOrUndefined Nothing) }

-- | Constructs InstanceTypeConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceTypeConfig' :: InstanceType -> ( { "InstanceType" :: (InstanceType) , "WeightedCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined.NullOrUndefined (NonNegativeDouble) , "EbsConfiguration" :: NullOrUndefined.NullOrUndefined (EbsConfiguration) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) } -> {"InstanceType" :: (InstanceType) , "WeightedCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined.NullOrUndefined (NonNegativeDouble) , "EbsConfiguration" :: NullOrUndefined.NullOrUndefined (EbsConfiguration) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) } ) -> InstanceTypeConfig
newInstanceTypeConfig' _InstanceType customize = (InstanceTypeConfig <<< customize) { "InstanceType": _InstanceType, "BidPrice": (NullOrUndefined Nothing), "BidPriceAsPercentageOfOnDemandPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsConfiguration": (NullOrUndefined Nothing), "WeightedCapacity": (NullOrUndefined Nothing) }



newtype InstanceTypeConfigList = InstanceTypeConfigList (Array InstanceTypeConfig)
derive instance newtypeInstanceTypeConfigList :: Newtype InstanceTypeConfigList _
derive instance repGenericInstanceTypeConfigList :: Generic InstanceTypeConfigList _
instance showInstanceTypeConfigList :: Show InstanceTypeConfigList where
  show = genericShow
instance decodeInstanceTypeConfigList :: Decode InstanceTypeConfigList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceTypeConfigList :: Encode InstanceTypeConfigList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The configuration specification for each instance type in an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceTypeSpecification = InstanceTypeSpecification 
  { "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType)
  , "WeightedCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined.NullOrUndefined (NonNegativeDouble)
  , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList)
  , "EbsBlockDevices" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceList)
  , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject)
  }
derive instance newtypeInstanceTypeSpecification :: Newtype InstanceTypeSpecification _
derive instance repGenericInstanceTypeSpecification :: Generic InstanceTypeSpecification _
instance showInstanceTypeSpecification :: Show InstanceTypeSpecification where
  show = genericShow
instance decodeInstanceTypeSpecification :: Decode InstanceTypeSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceTypeSpecification :: Encode InstanceTypeSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InstanceTypeSpecification from required parameters
newInstanceTypeSpecification :: InstanceTypeSpecification
newInstanceTypeSpecification  = InstanceTypeSpecification { "BidPrice": (NullOrUndefined Nothing), "BidPriceAsPercentageOfOnDemandPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsBlockDevices": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "WeightedCapacity": (NullOrUndefined Nothing) }

-- | Constructs InstanceTypeSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceTypeSpecification' :: ( { "InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "WeightedCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined.NullOrUndefined (NonNegativeDouble) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "EbsBlockDevices" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceList) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject) } -> {"InstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "WeightedCapacity" :: NullOrUndefined.NullOrUndefined (WholeNumber) , "BidPrice" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined.NullOrUndefined (NonNegativeDouble) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "EbsBlockDevices" :: NullOrUndefined.NullOrUndefined (EbsBlockDeviceList) , "EbsOptimized" :: NullOrUndefined.NullOrUndefined (BooleanObject) } ) -> InstanceTypeSpecification
newInstanceTypeSpecification'  customize = (InstanceTypeSpecification <<< customize) { "BidPrice": (NullOrUndefined Nothing), "BidPriceAsPercentageOfOnDemandPrice": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "EbsBlockDevices": (NullOrUndefined Nothing), "EbsOptimized": (NullOrUndefined Nothing), "InstanceType": (NullOrUndefined Nothing), "WeightedCapacity": (NullOrUndefined Nothing) }



newtype InstanceTypeSpecificationList = InstanceTypeSpecificationList (Array InstanceTypeSpecification)
derive instance newtypeInstanceTypeSpecificationList :: Newtype InstanceTypeSpecificationList _
derive instance repGenericInstanceTypeSpecificationList :: Generic InstanceTypeSpecificationList _
instance showInstanceTypeSpecificationList :: Show InstanceTypeSpecificationList where
  show = genericShow
instance decodeInstanceTypeSpecificationList :: Decode InstanceTypeSpecificationList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInstanceTypeSpecificationList :: Encode InstanceTypeSpecificationList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Indicates that an error occurred while processing the request and that the request was not completed.</p>
newtype InternalServerError = InternalServerError Types.NoArguments
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where
  show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerError :: Encode InternalServerError where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>This exception occurs when there is an internal failure in the EMR service.</p>
newtype InternalServerException = InternalServerException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInternalServerException :: Newtype InternalServerException _
derive instance repGenericInternalServerException :: Generic InternalServerException _
instance showInternalServerException :: Show InternalServerException where
  show = genericShow
instance decodeInternalServerException :: Decode InternalServerException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInternalServerException :: Encode InternalServerException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InternalServerException from required parameters
newInternalServerException :: InternalServerException
newInternalServerException  = InternalServerException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InternalServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InternalServerException
newInternalServerException'  customize = (InternalServerException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>This exception occurs when there is something wrong with user input.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where
  show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidRequestException :: Encode InvalidRequestException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } -> {"ErrorCode" :: NullOrUndefined.NullOrUndefined (ErrorCode) , "Message" :: NullOrUndefined.NullOrUndefined (ErrorMessage) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "ErrorCode": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



-- | <p>A description of a cluster (job flow).</p>
newtype JobFlowDetail = JobFlowDetail 
  { "JobFlowId" :: (XmlStringMaxLen256)
  , "Name" :: (XmlStringMaxLen256)
  , "LogUri" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "AmiVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "ExecutionStatusDetail" :: (JobFlowExecutionStatusDetail)
  , "Instances" :: (JobFlowInstancesDetail)
  , "Steps" :: NullOrUndefined.NullOrUndefined (StepDetailList)
  , "BootstrapActions" :: NullOrUndefined.NullOrUndefined (BootstrapActionDetailList)
  , "SupportedProducts" :: NullOrUndefined.NullOrUndefined (SupportedProductsList)
  , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "JobFlowRole" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "ServiceRole" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior)
  }
derive instance newtypeJobFlowDetail :: Newtype JobFlowDetail _
derive instance repGenericJobFlowDetail :: Generic JobFlowDetail _
instance showJobFlowDetail :: Show JobFlowDetail where
  show = genericShow
instance decodeJobFlowDetail :: Decode JobFlowDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobFlowDetail :: Encode JobFlowDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobFlowDetail from required parameters
newJobFlowDetail :: JobFlowExecutionStatusDetail -> JobFlowInstancesDetail -> XmlStringMaxLen256 -> XmlStringMaxLen256 -> JobFlowDetail
newJobFlowDetail _ExecutionStatusDetail _Instances _JobFlowId _Name = JobFlowDetail { "ExecutionStatusDetail": _ExecutionStatusDetail, "Instances": _Instances, "JobFlowId": _JobFlowId, "Name": _Name, "AmiVersion": (NullOrUndefined Nothing), "AutoScalingRole": (NullOrUndefined Nothing), "BootstrapActions": (NullOrUndefined Nothing), "JobFlowRole": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "ScaleDownBehavior": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Steps": (NullOrUndefined Nothing), "SupportedProducts": (NullOrUndefined Nothing), "VisibleToAllUsers": (NullOrUndefined Nothing) }

-- | Constructs JobFlowDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowDetail' :: JobFlowExecutionStatusDetail -> JobFlowInstancesDetail -> XmlStringMaxLen256 -> XmlStringMaxLen256 -> ( { "JobFlowId" :: (XmlStringMaxLen256) , "Name" :: (XmlStringMaxLen256) , "LogUri" :: NullOrUndefined.NullOrUndefined (XmlString) , "AmiVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ExecutionStatusDetail" :: (JobFlowExecutionStatusDetail) , "Instances" :: (JobFlowInstancesDetail) , "Steps" :: NullOrUndefined.NullOrUndefined (StepDetailList) , "BootstrapActions" :: NullOrUndefined.NullOrUndefined (BootstrapActionDetailList) , "SupportedProducts" :: NullOrUndefined.NullOrUndefined (SupportedProductsList) , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean) , "JobFlowRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ServiceRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior) } -> {"JobFlowId" :: (XmlStringMaxLen256) , "Name" :: (XmlStringMaxLen256) , "LogUri" :: NullOrUndefined.NullOrUndefined (XmlString) , "AmiVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ExecutionStatusDetail" :: (JobFlowExecutionStatusDetail) , "Instances" :: (JobFlowInstancesDetail) , "Steps" :: NullOrUndefined.NullOrUndefined (StepDetailList) , "BootstrapActions" :: NullOrUndefined.NullOrUndefined (BootstrapActionDetailList) , "SupportedProducts" :: NullOrUndefined.NullOrUndefined (SupportedProductsList) , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean) , "JobFlowRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ServiceRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior) } ) -> JobFlowDetail
newJobFlowDetail' _ExecutionStatusDetail _Instances _JobFlowId _Name customize = (JobFlowDetail <<< customize) { "ExecutionStatusDetail": _ExecutionStatusDetail, "Instances": _Instances, "JobFlowId": _JobFlowId, "Name": _Name, "AmiVersion": (NullOrUndefined Nothing), "AutoScalingRole": (NullOrUndefined Nothing), "BootstrapActions": (NullOrUndefined Nothing), "JobFlowRole": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "ScaleDownBehavior": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Steps": (NullOrUndefined Nothing), "SupportedProducts": (NullOrUndefined Nothing), "VisibleToAllUsers": (NullOrUndefined Nothing) }



newtype JobFlowDetailList = JobFlowDetailList (Array JobFlowDetail)
derive instance newtypeJobFlowDetailList :: Newtype JobFlowDetailList _
derive instance repGenericJobFlowDetailList :: Generic JobFlowDetailList _
instance showJobFlowDetailList :: Show JobFlowDetailList where
  show = genericShow
instance decodeJobFlowDetailList :: Decode JobFlowDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobFlowDetailList :: Encode JobFlowDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The type of instance.</p>
newtype JobFlowExecutionState = JobFlowExecutionState String
derive instance newtypeJobFlowExecutionState :: Newtype JobFlowExecutionState _
derive instance repGenericJobFlowExecutionState :: Generic JobFlowExecutionState _
instance showJobFlowExecutionState :: Show JobFlowExecutionState where
  show = genericShow
instance decodeJobFlowExecutionState :: Decode JobFlowExecutionState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobFlowExecutionState :: Encode JobFlowExecutionState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype JobFlowExecutionStateList = JobFlowExecutionStateList (Array JobFlowExecutionState)
derive instance newtypeJobFlowExecutionStateList :: Newtype JobFlowExecutionStateList _
derive instance repGenericJobFlowExecutionStateList :: Generic JobFlowExecutionStateList _
instance showJobFlowExecutionStateList :: Show JobFlowExecutionStateList where
  show = genericShow
instance decodeJobFlowExecutionStateList :: Decode JobFlowExecutionStateList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobFlowExecutionStateList :: Encode JobFlowExecutionStateList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Describes the status of the cluster (job flow).</p>
newtype JobFlowExecutionStatusDetail = JobFlowExecutionStatusDetail 
  { "State" :: (JobFlowExecutionState)
  , "CreationDateTime" :: (Date)
  , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeJobFlowExecutionStatusDetail :: Newtype JobFlowExecutionStatusDetail _
derive instance repGenericJobFlowExecutionStatusDetail :: Generic JobFlowExecutionStatusDetail _
instance showJobFlowExecutionStatusDetail :: Show JobFlowExecutionStatusDetail where
  show = genericShow
instance decodeJobFlowExecutionStatusDetail :: Decode JobFlowExecutionStatusDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobFlowExecutionStatusDetail :: Encode JobFlowExecutionStatusDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobFlowExecutionStatusDetail from required parameters
newJobFlowExecutionStatusDetail :: Date -> JobFlowExecutionState -> JobFlowExecutionStatusDetail
newJobFlowExecutionStatusDetail _CreationDateTime _State = JobFlowExecutionStatusDetail { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": (NullOrUndefined Nothing), "LastStateChangeReason": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }

-- | Constructs JobFlowExecutionStatusDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowExecutionStatusDetail' :: Date -> JobFlowExecutionState -> ( { "State" :: (JobFlowExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"State" :: (JobFlowExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "ReadyDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> JobFlowExecutionStatusDetail
newJobFlowExecutionStatusDetail' _CreationDateTime _State customize = (JobFlowExecutionStatusDetail <<< customize) { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": (NullOrUndefined Nothing), "LastStateChangeReason": (NullOrUndefined Nothing), "ReadyDateTime": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }



-- | <p>A description of the Amazon EC2 instance on which the cluster (job flow) runs. A valid JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets, which is the recommended configuration. They cannot be used together. You may also have MasterInstanceType, SlaveInstanceType, and InstanceCount (all three must be present), but we don't recommend this configuration.</p>
newtype JobFlowInstancesConfig = JobFlowInstancesConfig 
  { "MasterInstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType)
  , "SlaveInstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType)
  , "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int)
  , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupConfigList)
  , "InstanceFleets" :: NullOrUndefined.NullOrUndefined (InstanceFleetConfigList)
  , "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Placement" :: NullOrUndefined.NullOrUndefined (PlacementType)
  , "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "HadoopVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Ec2SubnetIds" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List)
  , "EmrManagedMasterSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "EmrManagedSlaveSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "ServiceAccessSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "AdditionalMasterSecurityGroups" :: NullOrUndefined.NullOrUndefined (SecurityGroupsList)
  , "AdditionalSlaveSecurityGroups" :: NullOrUndefined.NullOrUndefined (SecurityGroupsList)
  }
derive instance newtypeJobFlowInstancesConfig :: Newtype JobFlowInstancesConfig _
derive instance repGenericJobFlowInstancesConfig :: Generic JobFlowInstancesConfig _
instance showJobFlowInstancesConfig :: Show JobFlowInstancesConfig where
  show = genericShow
instance decodeJobFlowInstancesConfig :: Decode JobFlowInstancesConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobFlowInstancesConfig :: Encode JobFlowInstancesConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobFlowInstancesConfig from required parameters
newJobFlowInstancesConfig :: JobFlowInstancesConfig
newJobFlowInstancesConfig  = JobFlowInstancesConfig { "AdditionalMasterSecurityGroups": (NullOrUndefined Nothing), "AdditionalSlaveSecurityGroups": (NullOrUndefined Nothing), "Ec2KeyName": (NullOrUndefined Nothing), "Ec2SubnetId": (NullOrUndefined Nothing), "Ec2SubnetIds": (NullOrUndefined Nothing), "EmrManagedMasterSecurityGroup": (NullOrUndefined Nothing), "EmrManagedSlaveSecurityGroup": (NullOrUndefined Nothing), "HadoopVersion": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "InstanceFleets": (NullOrUndefined Nothing), "InstanceGroups": (NullOrUndefined Nothing), "KeepJobFlowAliveWhenNoSteps": (NullOrUndefined Nothing), "MasterInstanceType": (NullOrUndefined Nothing), "Placement": (NullOrUndefined Nothing), "ServiceAccessSecurityGroup": (NullOrUndefined Nothing), "SlaveInstanceType": (NullOrUndefined Nothing), "TerminationProtected": (NullOrUndefined Nothing) }

-- | Constructs JobFlowInstancesConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowInstancesConfig' :: ( { "MasterInstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "SlaveInstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupConfigList) , "InstanceFleets" :: NullOrUndefined.NullOrUndefined (InstanceFleetConfigList) , "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Placement" :: NullOrUndefined.NullOrUndefined (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined.NullOrUndefined (Boolean) , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean) , "HadoopVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Ec2SubnetIds" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) , "EmrManagedMasterSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "EmrManagedSlaveSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ServiceAccessSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "AdditionalMasterSecurityGroups" :: NullOrUndefined.NullOrUndefined (SecurityGroupsList) , "AdditionalSlaveSecurityGroups" :: NullOrUndefined.NullOrUndefined (SecurityGroupsList) } -> {"MasterInstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "SlaveInstanceType" :: NullOrUndefined.NullOrUndefined (InstanceType) , "InstanceCount" :: NullOrUndefined.NullOrUndefined (Int) , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupConfigList) , "InstanceFleets" :: NullOrUndefined.NullOrUndefined (InstanceFleetConfigList) , "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Placement" :: NullOrUndefined.NullOrUndefined (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined.NullOrUndefined (Boolean) , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean) , "HadoopVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Ec2SubnetIds" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) , "EmrManagedMasterSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "EmrManagedSlaveSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ServiceAccessSecurityGroup" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "AdditionalMasterSecurityGroups" :: NullOrUndefined.NullOrUndefined (SecurityGroupsList) , "AdditionalSlaveSecurityGroups" :: NullOrUndefined.NullOrUndefined (SecurityGroupsList) } ) -> JobFlowInstancesConfig
newJobFlowInstancesConfig'  customize = (JobFlowInstancesConfig <<< customize) { "AdditionalMasterSecurityGroups": (NullOrUndefined Nothing), "AdditionalSlaveSecurityGroups": (NullOrUndefined Nothing), "Ec2KeyName": (NullOrUndefined Nothing), "Ec2SubnetId": (NullOrUndefined Nothing), "Ec2SubnetIds": (NullOrUndefined Nothing), "EmrManagedMasterSecurityGroup": (NullOrUndefined Nothing), "EmrManagedSlaveSecurityGroup": (NullOrUndefined Nothing), "HadoopVersion": (NullOrUndefined Nothing), "InstanceCount": (NullOrUndefined Nothing), "InstanceFleets": (NullOrUndefined Nothing), "InstanceGroups": (NullOrUndefined Nothing), "KeepJobFlowAliveWhenNoSteps": (NullOrUndefined Nothing), "MasterInstanceType": (NullOrUndefined Nothing), "Placement": (NullOrUndefined Nothing), "ServiceAccessSecurityGroup": (NullOrUndefined Nothing), "SlaveInstanceType": (NullOrUndefined Nothing), "TerminationProtected": (NullOrUndefined Nothing) }



-- | <p>Specify the type of Amazon EC2 instances that the cluster (job flow) runs on.</p>
newtype JobFlowInstancesDetail = JobFlowInstancesDetail 
  { "MasterInstanceType" :: (InstanceType)
  , "MasterPublicDnsName" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "MasterInstanceId" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "SlaveInstanceType" :: (InstanceType)
  , "InstanceCount" :: (Int)
  , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupDetailList)
  , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int)
  , "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Placement" :: NullOrUndefined.NullOrUndefined (PlacementType)
  , "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "HadoopVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  }
derive instance newtypeJobFlowInstancesDetail :: Newtype JobFlowInstancesDetail _
derive instance repGenericJobFlowInstancesDetail :: Generic JobFlowInstancesDetail _
instance showJobFlowInstancesDetail :: Show JobFlowInstancesDetail where
  show = genericShow
instance decodeJobFlowInstancesDetail :: Decode JobFlowInstancesDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeJobFlowInstancesDetail :: Encode JobFlowInstancesDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs JobFlowInstancesDetail from required parameters
newJobFlowInstancesDetail :: Int -> InstanceType -> InstanceType -> JobFlowInstancesDetail
newJobFlowInstancesDetail _InstanceCount _MasterInstanceType _SlaveInstanceType = JobFlowInstancesDetail { "InstanceCount": _InstanceCount, "MasterInstanceType": _MasterInstanceType, "SlaveInstanceType": _SlaveInstanceType, "Ec2KeyName": (NullOrUndefined Nothing), "Ec2SubnetId": (NullOrUndefined Nothing), "HadoopVersion": (NullOrUndefined Nothing), "InstanceGroups": (NullOrUndefined Nothing), "KeepJobFlowAliveWhenNoSteps": (NullOrUndefined Nothing), "MasterInstanceId": (NullOrUndefined Nothing), "MasterPublicDnsName": (NullOrUndefined Nothing), "NormalizedInstanceHours": (NullOrUndefined Nothing), "Placement": (NullOrUndefined Nothing), "TerminationProtected": (NullOrUndefined Nothing) }

-- | Constructs JobFlowInstancesDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowInstancesDetail' :: Int -> InstanceType -> InstanceType -> ( { "MasterInstanceType" :: (InstanceType) , "MasterPublicDnsName" :: NullOrUndefined.NullOrUndefined (XmlString) , "MasterInstanceId" :: NullOrUndefined.NullOrUndefined (XmlString) , "SlaveInstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupDetailList) , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int) , "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Placement" :: NullOrUndefined.NullOrUndefined (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined.NullOrUndefined (Boolean) , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean) , "HadoopVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) } -> {"MasterInstanceType" :: (InstanceType) , "MasterPublicDnsName" :: NullOrUndefined.NullOrUndefined (XmlString) , "MasterInstanceId" :: NullOrUndefined.NullOrUndefined (XmlString) , "SlaveInstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupDetailList) , "NormalizedInstanceHours" :: NullOrUndefined.NullOrUndefined (Int) , "Ec2KeyName" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Ec2SubnetId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Placement" :: NullOrUndefined.NullOrUndefined (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined.NullOrUndefined (Boolean) , "TerminationProtected" :: NullOrUndefined.NullOrUndefined (Boolean) , "HadoopVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) } ) -> JobFlowInstancesDetail
newJobFlowInstancesDetail' _InstanceCount _MasterInstanceType _SlaveInstanceType customize = (JobFlowInstancesDetail <<< customize) { "InstanceCount": _InstanceCount, "MasterInstanceType": _MasterInstanceType, "SlaveInstanceType": _SlaveInstanceType, "Ec2KeyName": (NullOrUndefined Nothing), "Ec2SubnetId": (NullOrUndefined Nothing), "HadoopVersion": (NullOrUndefined Nothing), "InstanceGroups": (NullOrUndefined Nothing), "KeepJobFlowAliveWhenNoSteps": (NullOrUndefined Nothing), "MasterInstanceId": (NullOrUndefined Nothing), "MasterPublicDnsName": (NullOrUndefined Nothing), "NormalizedInstanceHours": (NullOrUndefined Nothing), "Placement": (NullOrUndefined Nothing), "TerminationProtected": (NullOrUndefined Nothing) }



-- | <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a> in the <i>EMR Management Guide</i>.</p>
newtype KerberosAttributes = KerberosAttributes 
  { "Realm" :: (XmlStringMaxLen256)
  , "KdcAdminPassword" :: (XmlStringMaxLen256)
  , "CrossRealmTrustPrincipalPassword" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "ADDomainJoinUser" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "ADDomainJoinPassword" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  }
derive instance newtypeKerberosAttributes :: Newtype KerberosAttributes _
derive instance repGenericKerberosAttributes :: Generic KerberosAttributes _
instance showKerberosAttributes :: Show KerberosAttributes where
  show = genericShow
instance decodeKerberosAttributes :: Decode KerberosAttributes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKerberosAttributes :: Encode KerberosAttributes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KerberosAttributes from required parameters
newKerberosAttributes :: XmlStringMaxLen256 -> XmlStringMaxLen256 -> KerberosAttributes
newKerberosAttributes _KdcAdminPassword _Realm = KerberosAttributes { "KdcAdminPassword": _KdcAdminPassword, "Realm": _Realm, "ADDomainJoinPassword": (NullOrUndefined Nothing), "ADDomainJoinUser": (NullOrUndefined Nothing), "CrossRealmTrustPrincipalPassword": (NullOrUndefined Nothing) }

-- | Constructs KerberosAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKerberosAttributes' :: XmlStringMaxLen256 -> XmlStringMaxLen256 -> ( { "Realm" :: (XmlStringMaxLen256) , "KdcAdminPassword" :: (XmlStringMaxLen256) , "CrossRealmTrustPrincipalPassword" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ADDomainJoinUser" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ADDomainJoinPassword" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) } -> {"Realm" :: (XmlStringMaxLen256) , "KdcAdminPassword" :: (XmlStringMaxLen256) , "CrossRealmTrustPrincipalPassword" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ADDomainJoinUser" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ADDomainJoinPassword" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) } ) -> KerberosAttributes
newKerberosAttributes' _KdcAdminPassword _Realm customize = (KerberosAttributes <<< customize) { "KdcAdminPassword": _KdcAdminPassword, "Realm": _Realm, "ADDomainJoinPassword": (NullOrUndefined Nothing), "ADDomainJoinUser": (NullOrUndefined Nothing), "CrossRealmTrustPrincipalPassword": (NullOrUndefined Nothing) }



-- | <p>A key value pair.</p>
newtype KeyValue = KeyValue 
  { "Key" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "Value" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeKeyValue :: Newtype KeyValue _
derive instance repGenericKeyValue :: Generic KeyValue _
instance showKeyValue :: Show KeyValue where
  show = genericShow
instance decodeKeyValue :: Decode KeyValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyValue :: Encode KeyValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs KeyValue from required parameters
newKeyValue :: KeyValue
newKeyValue  = KeyValue { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs KeyValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyValue' :: ( { "Key" :: NullOrUndefined.NullOrUndefined (XmlString) , "Value" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"Key" :: NullOrUndefined.NullOrUndefined (XmlString) , "Value" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> KeyValue
newKeyValue'  customize = (KeyValue <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype KeyValueList = KeyValueList (Array KeyValue)
derive instance newtypeKeyValueList :: Newtype KeyValueList _
derive instance repGenericKeyValueList :: Generic KeyValueList _
instance showKeyValueList :: Show KeyValueList where
  show = genericShow
instance decodeKeyValueList :: Decode KeyValueList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeKeyValueList :: Encode KeyValueList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>This input determines which bootstrap actions to retrieve.</p>
newtype ListBootstrapActionsInput = ListBootstrapActionsInput 
  { "ClusterId" :: (ClusterId)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListBootstrapActionsInput :: Newtype ListBootstrapActionsInput _
derive instance repGenericListBootstrapActionsInput :: Generic ListBootstrapActionsInput _
instance showListBootstrapActionsInput :: Show ListBootstrapActionsInput where
  show = genericShow
instance decodeListBootstrapActionsInput :: Decode ListBootstrapActionsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListBootstrapActionsInput :: Encode ListBootstrapActionsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListBootstrapActionsInput from required parameters
newListBootstrapActionsInput :: ClusterId -> ListBootstrapActionsInput
newListBootstrapActionsInput _ClusterId = ListBootstrapActionsInput { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListBootstrapActionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBootstrapActionsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"ClusterId" :: (ClusterId) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListBootstrapActionsInput
newListBootstrapActionsInput' _ClusterId customize = (ListBootstrapActionsInput <<< customize) { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing) }



-- | <p>This output contains the bootstrap actions detail.</p>
newtype ListBootstrapActionsOutput = ListBootstrapActionsOutput 
  { "BootstrapActions" :: NullOrUndefined.NullOrUndefined (CommandList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListBootstrapActionsOutput :: Newtype ListBootstrapActionsOutput _
derive instance repGenericListBootstrapActionsOutput :: Generic ListBootstrapActionsOutput _
instance showListBootstrapActionsOutput :: Show ListBootstrapActionsOutput where
  show = genericShow
instance decodeListBootstrapActionsOutput :: Decode ListBootstrapActionsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListBootstrapActionsOutput :: Encode ListBootstrapActionsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListBootstrapActionsOutput from required parameters
newListBootstrapActionsOutput :: ListBootstrapActionsOutput
newListBootstrapActionsOutput  = ListBootstrapActionsOutput { "BootstrapActions": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListBootstrapActionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBootstrapActionsOutput' :: ( { "BootstrapActions" :: NullOrUndefined.NullOrUndefined (CommandList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"BootstrapActions" :: NullOrUndefined.NullOrUndefined (CommandList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListBootstrapActionsOutput
newListBootstrapActionsOutput'  customize = (ListBootstrapActionsOutput <<< customize) { "BootstrapActions": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>This input determines how the ListClusters action filters the list of clusters that it returns.</p>
newtype ListClustersInput = ListClustersInput 
  { "CreatedAfter" :: NullOrUndefined.NullOrUndefined (Date)
  , "CreatedBefore" :: NullOrUndefined.NullOrUndefined (Date)
  , "ClusterStates" :: NullOrUndefined.NullOrUndefined (ClusterStateList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListClustersInput :: Newtype ListClustersInput _
derive instance repGenericListClustersInput :: Generic ListClustersInput _
instance showListClustersInput :: Show ListClustersInput where
  show = genericShow
instance decodeListClustersInput :: Decode ListClustersInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListClustersInput :: Encode ListClustersInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListClustersInput from required parameters
newListClustersInput :: ListClustersInput
newListClustersInput  = ListClustersInput { "ClusterStates": (NullOrUndefined Nothing), "CreatedAfter": (NullOrUndefined Nothing), "CreatedBefore": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListClustersInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersInput' :: ( { "CreatedAfter" :: NullOrUndefined.NullOrUndefined (Date) , "CreatedBefore" :: NullOrUndefined.NullOrUndefined (Date) , "ClusterStates" :: NullOrUndefined.NullOrUndefined (ClusterStateList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"CreatedAfter" :: NullOrUndefined.NullOrUndefined (Date) , "CreatedBefore" :: NullOrUndefined.NullOrUndefined (Date) , "ClusterStates" :: NullOrUndefined.NullOrUndefined (ClusterStateList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListClustersInput
newListClustersInput'  customize = (ListClustersInput <<< customize) { "ClusterStates": (NullOrUndefined Nothing), "CreatedAfter": (NullOrUndefined Nothing), "CreatedBefore": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>This contains a ClusterSummaryList with the cluster details; for example, the cluster IDs, names, and status.</p>
newtype ListClustersOutput = ListClustersOutput 
  { "Clusters" :: NullOrUndefined.NullOrUndefined (ClusterSummaryList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListClustersOutput :: Newtype ListClustersOutput _
derive instance repGenericListClustersOutput :: Generic ListClustersOutput _
instance showListClustersOutput :: Show ListClustersOutput where
  show = genericShow
instance decodeListClustersOutput :: Decode ListClustersOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListClustersOutput :: Encode ListClustersOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListClustersOutput from required parameters
newListClustersOutput :: ListClustersOutput
newListClustersOutput  = ListClustersOutput { "Clusters": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListClustersOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersOutput' :: ( { "Clusters" :: NullOrUndefined.NullOrUndefined (ClusterSummaryList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"Clusters" :: NullOrUndefined.NullOrUndefined (ClusterSummaryList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListClustersOutput
newListClustersOutput'  customize = (ListClustersOutput <<< customize) { "Clusters": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListInstanceFleetsInput = ListInstanceFleetsInput 
  { "ClusterId" :: (ClusterId)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListInstanceFleetsInput :: Newtype ListInstanceFleetsInput _
derive instance repGenericListInstanceFleetsInput :: Generic ListInstanceFleetsInput _
instance showListInstanceFleetsInput :: Show ListInstanceFleetsInput where
  show = genericShow
instance decodeListInstanceFleetsInput :: Decode ListInstanceFleetsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceFleetsInput :: Encode ListInstanceFleetsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceFleetsInput from required parameters
newListInstanceFleetsInput :: ClusterId -> ListInstanceFleetsInput
newListInstanceFleetsInput _ClusterId = ListInstanceFleetsInput { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceFleetsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceFleetsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"ClusterId" :: (ClusterId) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListInstanceFleetsInput
newListInstanceFleetsInput' _ClusterId customize = (ListInstanceFleetsInput <<< customize) { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing) }



newtype ListInstanceFleetsOutput = ListInstanceFleetsOutput 
  { "InstanceFleets" :: NullOrUndefined.NullOrUndefined (InstanceFleetList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListInstanceFleetsOutput :: Newtype ListInstanceFleetsOutput _
derive instance repGenericListInstanceFleetsOutput :: Generic ListInstanceFleetsOutput _
instance showListInstanceFleetsOutput :: Show ListInstanceFleetsOutput where
  show = genericShow
instance decodeListInstanceFleetsOutput :: Decode ListInstanceFleetsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceFleetsOutput :: Encode ListInstanceFleetsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceFleetsOutput from required parameters
newListInstanceFleetsOutput :: ListInstanceFleetsOutput
newListInstanceFleetsOutput  = ListInstanceFleetsOutput { "InstanceFleets": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceFleetsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceFleetsOutput' :: ( { "InstanceFleets" :: NullOrUndefined.NullOrUndefined (InstanceFleetList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"InstanceFleets" :: NullOrUndefined.NullOrUndefined (InstanceFleetList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListInstanceFleetsOutput
newListInstanceFleetsOutput'  customize = (ListInstanceFleetsOutput <<< customize) { "InstanceFleets": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>This input determines which instance groups to retrieve.</p>
newtype ListInstanceGroupsInput = ListInstanceGroupsInput 
  { "ClusterId" :: (ClusterId)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListInstanceGroupsInput :: Newtype ListInstanceGroupsInput _
derive instance repGenericListInstanceGroupsInput :: Generic ListInstanceGroupsInput _
instance showListInstanceGroupsInput :: Show ListInstanceGroupsInput where
  show = genericShow
instance decodeListInstanceGroupsInput :: Decode ListInstanceGroupsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceGroupsInput :: Encode ListInstanceGroupsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceGroupsInput from required parameters
newListInstanceGroupsInput :: ClusterId -> ListInstanceGroupsInput
newListInstanceGroupsInput _ClusterId = ListInstanceGroupsInput { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceGroupsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"ClusterId" :: (ClusterId) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListInstanceGroupsInput
newListInstanceGroupsInput' _ClusterId customize = (ListInstanceGroupsInput <<< customize) { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing) }



-- | <p>This input determines which instance groups to retrieve.</p>
newtype ListInstanceGroupsOutput = ListInstanceGroupsOutput 
  { "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListInstanceGroupsOutput :: Newtype ListInstanceGroupsOutput _
derive instance repGenericListInstanceGroupsOutput :: Generic ListInstanceGroupsOutput _
instance showListInstanceGroupsOutput :: Show ListInstanceGroupsOutput where
  show = genericShow
instance decodeListInstanceGroupsOutput :: Decode ListInstanceGroupsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstanceGroupsOutput :: Encode ListInstanceGroupsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstanceGroupsOutput from required parameters
newListInstanceGroupsOutput :: ListInstanceGroupsOutput
newListInstanceGroupsOutput  = ListInstanceGroupsOutput { "InstanceGroups": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstanceGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceGroupsOutput' :: ( { "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListInstanceGroupsOutput
newListInstanceGroupsOutput'  customize = (ListInstanceGroupsOutput <<< customize) { "InstanceGroups": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>This input determines which instances to list.</p>
newtype ListInstancesInput = ListInstancesInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (InstanceGroupId)
  , "InstanceGroupTypes" :: NullOrUndefined.NullOrUndefined (InstanceGroupTypeList)
  , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId)
  , "InstanceFleetType" :: NullOrUndefined.NullOrUndefined (InstanceFleetType)
  , "InstanceStates" :: NullOrUndefined.NullOrUndefined (InstanceStateList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListInstancesInput :: Newtype ListInstancesInput _
derive instance repGenericListInstancesInput :: Generic ListInstancesInput _
instance showListInstancesInput :: Show ListInstancesInput where
  show = genericShow
instance decodeListInstancesInput :: Decode ListInstancesInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstancesInput :: Encode ListInstancesInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstancesInput from required parameters
newListInstancesInput :: ClusterId -> ListInstancesInput
newListInstancesInput _ClusterId = ListInstancesInput { "ClusterId": _ClusterId, "InstanceFleetId": (NullOrUndefined Nothing), "InstanceFleetType": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing), "InstanceGroupTypes": (NullOrUndefined Nothing), "InstanceStates": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstancesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (InstanceGroupId) , "InstanceGroupTypes" :: NullOrUndefined.NullOrUndefined (InstanceGroupTypeList) , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) , "InstanceFleetType" :: NullOrUndefined.NullOrUndefined (InstanceFleetType) , "InstanceStates" :: NullOrUndefined.NullOrUndefined (InstanceStateList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"ClusterId" :: (ClusterId) , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (InstanceGroupId) , "InstanceGroupTypes" :: NullOrUndefined.NullOrUndefined (InstanceGroupTypeList) , "InstanceFleetId" :: NullOrUndefined.NullOrUndefined (InstanceFleetId) , "InstanceFleetType" :: NullOrUndefined.NullOrUndefined (InstanceFleetType) , "InstanceStates" :: NullOrUndefined.NullOrUndefined (InstanceStateList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListInstancesInput
newListInstancesInput' _ClusterId customize = (ListInstancesInput <<< customize) { "ClusterId": _ClusterId, "InstanceFleetId": (NullOrUndefined Nothing), "InstanceFleetType": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing), "InstanceGroupTypes": (NullOrUndefined Nothing), "InstanceStates": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



-- | <p>This output contains the list of instances.</p>
newtype ListInstancesOutput = ListInstancesOutput 
  { "Instances" :: NullOrUndefined.NullOrUndefined (InstanceList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListInstancesOutput :: Newtype ListInstancesOutput _
derive instance repGenericListInstancesOutput :: Generic ListInstancesOutput _
instance showListInstancesOutput :: Show ListInstancesOutput where
  show = genericShow
instance decodeListInstancesOutput :: Decode ListInstancesOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListInstancesOutput :: Encode ListInstancesOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListInstancesOutput from required parameters
newListInstancesOutput :: ListInstancesOutput
newListInstancesOutput  = ListInstancesOutput { "Instances": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListInstancesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesOutput' :: ( { "Instances" :: NullOrUndefined.NullOrUndefined (InstanceList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"Instances" :: NullOrUndefined.NullOrUndefined (InstanceList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListInstancesOutput
newListInstancesOutput'  customize = (ListInstancesOutput <<< customize) { "Instances": (NullOrUndefined Nothing), "Marker": (NullOrUndefined Nothing) }



newtype ListSecurityConfigurationsInput = ListSecurityConfigurationsInput 
  { "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListSecurityConfigurationsInput :: Newtype ListSecurityConfigurationsInput _
derive instance repGenericListSecurityConfigurationsInput :: Generic ListSecurityConfigurationsInput _
instance showListSecurityConfigurationsInput :: Show ListSecurityConfigurationsInput where
  show = genericShow
instance decodeListSecurityConfigurationsInput :: Decode ListSecurityConfigurationsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSecurityConfigurationsInput :: Encode ListSecurityConfigurationsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSecurityConfigurationsInput from required parameters
newListSecurityConfigurationsInput :: ListSecurityConfigurationsInput
newListSecurityConfigurationsInput  = ListSecurityConfigurationsInput { "Marker": (NullOrUndefined Nothing) }

-- | Constructs ListSecurityConfigurationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSecurityConfigurationsInput' :: ( { "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListSecurityConfigurationsInput
newListSecurityConfigurationsInput'  customize = (ListSecurityConfigurationsInput <<< customize) { "Marker": (NullOrUndefined Nothing) }



newtype ListSecurityConfigurationsOutput = ListSecurityConfigurationsOutput 
  { "SecurityConfigurations" :: NullOrUndefined.NullOrUndefined (SecurityConfigurationList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListSecurityConfigurationsOutput :: Newtype ListSecurityConfigurationsOutput _
derive instance repGenericListSecurityConfigurationsOutput :: Generic ListSecurityConfigurationsOutput _
instance showListSecurityConfigurationsOutput :: Show ListSecurityConfigurationsOutput where
  show = genericShow
instance decodeListSecurityConfigurationsOutput :: Decode ListSecurityConfigurationsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListSecurityConfigurationsOutput :: Encode ListSecurityConfigurationsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListSecurityConfigurationsOutput from required parameters
newListSecurityConfigurationsOutput :: ListSecurityConfigurationsOutput
newListSecurityConfigurationsOutput  = ListSecurityConfigurationsOutput { "Marker": (NullOrUndefined Nothing), "SecurityConfigurations": (NullOrUndefined Nothing) }

-- | Constructs ListSecurityConfigurationsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSecurityConfigurationsOutput' :: ( { "SecurityConfigurations" :: NullOrUndefined.NullOrUndefined (SecurityConfigurationList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"SecurityConfigurations" :: NullOrUndefined.NullOrUndefined (SecurityConfigurationList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListSecurityConfigurationsOutput
newListSecurityConfigurationsOutput'  customize = (ListSecurityConfigurationsOutput <<< customize) { "Marker": (NullOrUndefined Nothing), "SecurityConfigurations": (NullOrUndefined Nothing) }



-- | <p>This input determines which steps to list.</p>
newtype ListStepsInput = ListStepsInput 
  { "ClusterId" :: (ClusterId)
  , "StepStates" :: NullOrUndefined.NullOrUndefined (StepStateList)
  , "StepIds" :: NullOrUndefined.NullOrUndefined (XmlStringList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListStepsInput :: Newtype ListStepsInput _
derive instance repGenericListStepsInput :: Generic ListStepsInput _
instance showListStepsInput :: Show ListStepsInput where
  show = genericShow
instance decodeListStepsInput :: Decode ListStepsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListStepsInput :: Encode ListStepsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListStepsInput from required parameters
newListStepsInput :: ClusterId -> ListStepsInput
newListStepsInput _ClusterId = ListStepsInput { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing), "StepIds": (NullOrUndefined Nothing), "StepStates": (NullOrUndefined Nothing) }

-- | Constructs ListStepsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStepsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "StepStates" :: NullOrUndefined.NullOrUndefined (StepStateList) , "StepIds" :: NullOrUndefined.NullOrUndefined (XmlStringList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"ClusterId" :: (ClusterId) , "StepStates" :: NullOrUndefined.NullOrUndefined (StepStateList) , "StepIds" :: NullOrUndefined.NullOrUndefined (XmlStringList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListStepsInput
newListStepsInput' _ClusterId customize = (ListStepsInput <<< customize) { "ClusterId": _ClusterId, "Marker": (NullOrUndefined Nothing), "StepIds": (NullOrUndefined Nothing), "StepStates": (NullOrUndefined Nothing) }



-- | <p>This output contains the list of steps returned in reverse order. This means that the last step is the first element in the list.</p>
newtype ListStepsOutput = ListStepsOutput 
  { "Steps" :: NullOrUndefined.NullOrUndefined (StepSummaryList)
  , "Marker" :: NullOrUndefined.NullOrUndefined (Marker)
  }
derive instance newtypeListStepsOutput :: Newtype ListStepsOutput _
derive instance repGenericListStepsOutput :: Generic ListStepsOutput _
instance showListStepsOutput :: Show ListStepsOutput where
  show = genericShow
instance decodeListStepsOutput :: Decode ListStepsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListStepsOutput :: Encode ListStepsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListStepsOutput from required parameters
newListStepsOutput :: ListStepsOutput
newListStepsOutput  = ListStepsOutput { "Marker": (NullOrUndefined Nothing), "Steps": (NullOrUndefined Nothing) }

-- | Constructs ListStepsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStepsOutput' :: ( { "Steps" :: NullOrUndefined.NullOrUndefined (StepSummaryList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } -> {"Steps" :: NullOrUndefined.NullOrUndefined (StepSummaryList) , "Marker" :: NullOrUndefined.NullOrUndefined (Marker) } ) -> ListStepsOutput
newListStepsOutput'  customize = (ListStepsOutput <<< customize) { "Marker": (NullOrUndefined Nothing), "Steps": (NullOrUndefined Nothing) }



newtype Marker = Marker String
derive instance newtypeMarker :: Newtype Marker _
derive instance repGenericMarker :: Generic Marker _
instance showMarker :: Show Marker where
  show = genericShow
instance decodeMarker :: Decode Marker where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMarker :: Encode Marker where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MarketType = MarketType String
derive instance newtypeMarketType :: Newtype MarketType _
derive instance repGenericMarketType :: Generic MarketType _
instance showMarketType :: Show MarketType where
  show = genericShow
instance decodeMarketType :: Decode MarketType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMarketType :: Encode MarketType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A CloudWatch dimension, which is specified using a <code>Key</code> (known as a <code>Name</code> in CloudWatch), <code>Value</code> pair. By default, Amazon EMR uses one dimension whose <code>Key</code> is <code>JobFlowID</code> and <code>Value</code> is a variable representing the cluster ID, which is <code>${emr.clusterId}</code>. This enables the rule to bootstrap when the cluster ID becomes available.</p>
newtype MetricDimension = MetricDimension 
  { "Key" :: NullOrUndefined.NullOrUndefined (String)
  , "Value" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeMetricDimension :: Newtype MetricDimension _
derive instance repGenericMetricDimension :: Generic MetricDimension _
instance showMetricDimension :: Show MetricDimension where
  show = genericShow
instance decodeMetricDimension :: Decode MetricDimension where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimension :: Encode MetricDimension where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MetricDimension from required parameters
newMetricDimension :: MetricDimension
newMetricDimension  = MetricDimension { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs MetricDimension's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricDimension' :: ( { "Key" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (String) } -> {"Key" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (String) } ) -> MetricDimension
newMetricDimension'  customize = (MetricDimension <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype MetricDimensionList = MetricDimensionList (Array MetricDimension)
derive instance newtypeMetricDimensionList :: Newtype MetricDimensionList _
derive instance repGenericMetricDimensionList :: Generic MetricDimensionList _
instance showMetricDimensionList :: Show MetricDimensionList where
  show = genericShow
instance decodeMetricDimensionList :: Decode MetricDimensionList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMetricDimensionList :: Encode MetricDimensionList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ModifyInstanceFleetInput = ModifyInstanceFleetInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceFleet" :: (InstanceFleetModifyConfig)
  }
derive instance newtypeModifyInstanceFleetInput :: Newtype ModifyInstanceFleetInput _
derive instance repGenericModifyInstanceFleetInput :: Generic ModifyInstanceFleetInput _
instance showModifyInstanceFleetInput :: Show ModifyInstanceFleetInput where
  show = genericShow
instance decodeModifyInstanceFleetInput :: Decode ModifyInstanceFleetInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeModifyInstanceFleetInput :: Encode ModifyInstanceFleetInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ModifyInstanceFleetInput from required parameters
newModifyInstanceFleetInput :: ClusterId -> InstanceFleetModifyConfig -> ModifyInstanceFleetInput
newModifyInstanceFleetInput _ClusterId _InstanceFleet = ModifyInstanceFleetInput { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }

-- | Constructs ModifyInstanceFleetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyInstanceFleetInput' :: ClusterId -> InstanceFleetModifyConfig -> ( { "ClusterId" :: (ClusterId) , "InstanceFleet" :: (InstanceFleetModifyConfig) } -> {"ClusterId" :: (ClusterId) , "InstanceFleet" :: (InstanceFleetModifyConfig) } ) -> ModifyInstanceFleetInput
newModifyInstanceFleetInput' _ClusterId _InstanceFleet customize = (ModifyInstanceFleetInput <<< customize) { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }



-- | <p>Change the size of some instance groups.</p>
newtype ModifyInstanceGroupsInput = ModifyInstanceGroupsInput 
  { "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId)
  , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupModifyConfigList)
  }
derive instance newtypeModifyInstanceGroupsInput :: Newtype ModifyInstanceGroupsInput _
derive instance repGenericModifyInstanceGroupsInput :: Generic ModifyInstanceGroupsInput _
instance showModifyInstanceGroupsInput :: Show ModifyInstanceGroupsInput where
  show = genericShow
instance decodeModifyInstanceGroupsInput :: Decode ModifyInstanceGroupsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeModifyInstanceGroupsInput :: Encode ModifyInstanceGroupsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ModifyInstanceGroupsInput from required parameters
newModifyInstanceGroupsInput :: ModifyInstanceGroupsInput
newModifyInstanceGroupsInput  = ModifyInstanceGroupsInput { "ClusterId": (NullOrUndefined Nothing), "InstanceGroups": (NullOrUndefined Nothing) }

-- | Constructs ModifyInstanceGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyInstanceGroupsInput' :: ( { "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupModifyConfigList) } -> {"ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) , "InstanceGroups" :: NullOrUndefined.NullOrUndefined (InstanceGroupModifyConfigList) } ) -> ModifyInstanceGroupsInput
newModifyInstanceGroupsInput'  customize = (ModifyInstanceGroupsInput <<< customize) { "ClusterId": (NullOrUndefined Nothing), "InstanceGroups": (NullOrUndefined Nothing) }



newtype NewSupportedProductsList = NewSupportedProductsList (Array SupportedProductConfig)
derive instance newtypeNewSupportedProductsList :: Newtype NewSupportedProductsList _
derive instance repGenericNewSupportedProductsList :: Generic NewSupportedProductsList _
instance showNewSupportedProductsList :: Show NewSupportedProductsList where
  show = genericShow
instance decodeNewSupportedProductsList :: Decode NewSupportedProductsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNewSupportedProductsList :: Encode NewSupportedProductsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype NonNegativeDouble = NonNegativeDouble Number
derive instance newtypeNonNegativeDouble :: Newtype NonNegativeDouble _
derive instance repGenericNonNegativeDouble :: Generic NonNegativeDouble _
instance showNonNegativeDouble :: Show NonNegativeDouble where
  show = genericShow
instance decodeNonNegativeDouble :: Decode NonNegativeDouble where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNonNegativeDouble :: Encode NonNegativeDouble where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The Amazon EC2 Availability Zone configuration of the cluster (job flow).</p>
newtype PlacementType = PlacementType 
  { "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "AvailabilityZones" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List)
  }
derive instance newtypePlacementType :: Newtype PlacementType _
derive instance repGenericPlacementType :: Generic PlacementType _
instance showPlacementType :: Show PlacementType where
  show = genericShow
instance decodePlacementType :: Decode PlacementType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePlacementType :: Encode PlacementType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PlacementType from required parameters
newPlacementType :: PlacementType
newPlacementType  = PlacementType { "AvailabilityZone": (NullOrUndefined Nothing), "AvailabilityZones": (NullOrUndefined Nothing) }

-- | Constructs PlacementType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlacementType' :: ( { "AvailabilityZone" :: NullOrUndefined.NullOrUndefined (XmlString) , "AvailabilityZones" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) } -> {"AvailabilityZone" :: NullOrUndefined.NullOrUndefined (XmlString) , "AvailabilityZones" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256List) } ) -> PlacementType
newPlacementType'  customize = (PlacementType <<< customize) { "AvailabilityZone": (NullOrUndefined Nothing), "AvailabilityZones": (NullOrUndefined Nothing) }



newtype PutAutoScalingPolicyInput = PutAutoScalingPolicyInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceGroupId" :: (InstanceGroupId)
  , "AutoScalingPolicy" :: (AutoScalingPolicy)
  }
derive instance newtypePutAutoScalingPolicyInput :: Newtype PutAutoScalingPolicyInput _
derive instance repGenericPutAutoScalingPolicyInput :: Generic PutAutoScalingPolicyInput _
instance showPutAutoScalingPolicyInput :: Show PutAutoScalingPolicyInput where
  show = genericShow
instance decodePutAutoScalingPolicyInput :: Decode PutAutoScalingPolicyInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutAutoScalingPolicyInput :: Encode PutAutoScalingPolicyInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutAutoScalingPolicyInput from required parameters
newPutAutoScalingPolicyInput :: AutoScalingPolicy -> ClusterId -> InstanceGroupId -> PutAutoScalingPolicyInput
newPutAutoScalingPolicyInput _AutoScalingPolicy _ClusterId _InstanceGroupId = PutAutoScalingPolicyInput { "AutoScalingPolicy": _AutoScalingPolicy, "ClusterId": _ClusterId, "InstanceGroupId": _InstanceGroupId }

-- | Constructs PutAutoScalingPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAutoScalingPolicyInput' :: AutoScalingPolicy -> ClusterId -> InstanceGroupId -> ( { "ClusterId" :: (ClusterId) , "InstanceGroupId" :: (InstanceGroupId) , "AutoScalingPolicy" :: (AutoScalingPolicy) } -> {"ClusterId" :: (ClusterId) , "InstanceGroupId" :: (InstanceGroupId) , "AutoScalingPolicy" :: (AutoScalingPolicy) } ) -> PutAutoScalingPolicyInput
newPutAutoScalingPolicyInput' _AutoScalingPolicy _ClusterId _InstanceGroupId customize = (PutAutoScalingPolicyInput <<< customize) { "AutoScalingPolicy": _AutoScalingPolicy, "ClusterId": _ClusterId, "InstanceGroupId": _InstanceGroupId }



newtype PutAutoScalingPolicyOutput = PutAutoScalingPolicyOutput 
  { "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId)
  , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (InstanceGroupId)
  , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyDescription)
  }
derive instance newtypePutAutoScalingPolicyOutput :: Newtype PutAutoScalingPolicyOutput _
derive instance repGenericPutAutoScalingPolicyOutput :: Generic PutAutoScalingPolicyOutput _
instance showPutAutoScalingPolicyOutput :: Show PutAutoScalingPolicyOutput where
  show = genericShow
instance decodePutAutoScalingPolicyOutput :: Decode PutAutoScalingPolicyOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePutAutoScalingPolicyOutput :: Encode PutAutoScalingPolicyOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PutAutoScalingPolicyOutput from required parameters
newPutAutoScalingPolicyOutput :: PutAutoScalingPolicyOutput
newPutAutoScalingPolicyOutput  = PutAutoScalingPolicyOutput { "AutoScalingPolicy": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing) }

-- | Constructs PutAutoScalingPolicyOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAutoScalingPolicyOutput' :: ( { "ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (InstanceGroupId) , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyDescription) } -> {"ClusterId" :: NullOrUndefined.NullOrUndefined (ClusterId) , "InstanceGroupId" :: NullOrUndefined.NullOrUndefined (InstanceGroupId) , "AutoScalingPolicy" :: NullOrUndefined.NullOrUndefined (AutoScalingPolicyDescription) } ) -> PutAutoScalingPolicyOutput
newPutAutoScalingPolicyOutput'  customize = (PutAutoScalingPolicyOutput <<< customize) { "AutoScalingPolicy": (NullOrUndefined Nothing), "ClusterId": (NullOrUndefined Nothing), "InstanceGroupId": (NullOrUndefined Nothing) }



newtype RemoveAutoScalingPolicyInput = RemoveAutoScalingPolicyInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceGroupId" :: (InstanceGroupId)
  }
derive instance newtypeRemoveAutoScalingPolicyInput :: Newtype RemoveAutoScalingPolicyInput _
derive instance repGenericRemoveAutoScalingPolicyInput :: Generic RemoveAutoScalingPolicyInput _
instance showRemoveAutoScalingPolicyInput :: Show RemoveAutoScalingPolicyInput where
  show = genericShow
instance decodeRemoveAutoScalingPolicyInput :: Decode RemoveAutoScalingPolicyInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveAutoScalingPolicyInput :: Encode RemoveAutoScalingPolicyInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RemoveAutoScalingPolicyInput from required parameters
newRemoveAutoScalingPolicyInput :: ClusterId -> InstanceGroupId -> RemoveAutoScalingPolicyInput
newRemoveAutoScalingPolicyInput _ClusterId _InstanceGroupId = RemoveAutoScalingPolicyInput { "ClusterId": _ClusterId, "InstanceGroupId": _InstanceGroupId }

-- | Constructs RemoveAutoScalingPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveAutoScalingPolicyInput' :: ClusterId -> InstanceGroupId -> ( { "ClusterId" :: (ClusterId) , "InstanceGroupId" :: (InstanceGroupId) } -> {"ClusterId" :: (ClusterId) , "InstanceGroupId" :: (InstanceGroupId) } ) -> RemoveAutoScalingPolicyInput
newRemoveAutoScalingPolicyInput' _ClusterId _InstanceGroupId customize = (RemoveAutoScalingPolicyInput <<< customize) { "ClusterId": _ClusterId, "InstanceGroupId": _InstanceGroupId }



newtype RemoveAutoScalingPolicyOutput = RemoveAutoScalingPolicyOutput Types.NoArguments
derive instance newtypeRemoveAutoScalingPolicyOutput :: Newtype RemoveAutoScalingPolicyOutput _
derive instance repGenericRemoveAutoScalingPolicyOutput :: Generic RemoveAutoScalingPolicyOutput _
instance showRemoveAutoScalingPolicyOutput :: Show RemoveAutoScalingPolicyOutput where
  show = genericShow
instance decodeRemoveAutoScalingPolicyOutput :: Decode RemoveAutoScalingPolicyOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveAutoScalingPolicyOutput :: Encode RemoveAutoScalingPolicyOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>This input identifies a cluster and a list of tags to remove.</p>
newtype RemoveTagsInput = RemoveTagsInput 
  { "ResourceId" :: (ResourceId)
  , "TagKeys" :: (StringList)
  }
derive instance newtypeRemoveTagsInput :: Newtype RemoveTagsInput _
derive instance repGenericRemoveTagsInput :: Generic RemoveTagsInput _
instance showRemoveTagsInput :: Show RemoveTagsInput where
  show = genericShow
instance decodeRemoveTagsInput :: Decode RemoveTagsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveTagsInput :: Encode RemoveTagsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RemoveTagsInput from required parameters
newRemoveTagsInput :: ResourceId -> StringList -> RemoveTagsInput
newRemoveTagsInput _ResourceId _TagKeys = RemoveTagsInput { "ResourceId": _ResourceId, "TagKeys": _TagKeys }

-- | Constructs RemoveTagsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveTagsInput' :: ResourceId -> StringList -> ( { "ResourceId" :: (ResourceId) , "TagKeys" :: (StringList) } -> {"ResourceId" :: (ResourceId) , "TagKeys" :: (StringList) } ) -> RemoveTagsInput
newRemoveTagsInput' _ResourceId _TagKeys customize = (RemoveTagsInput <<< customize) { "ResourceId": _ResourceId, "TagKeys": _TagKeys }



-- | <p>This output indicates the result of removing tags from a resource.</p>
newtype RemoveTagsOutput = RemoveTagsOutput Types.NoArguments
derive instance newtypeRemoveTagsOutput :: Newtype RemoveTagsOutput _
derive instance repGenericRemoveTagsOutput :: Generic RemoveTagsOutput _
instance showRemoveTagsOutput :: Show RemoveTagsOutput where
  show = genericShow
instance decodeRemoveTagsOutput :: Decode RemoveTagsOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveTagsOutput :: Encode RemoveTagsOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RepoUpgradeOnBoot = RepoUpgradeOnBoot String
derive instance newtypeRepoUpgradeOnBoot :: Newtype RepoUpgradeOnBoot _
derive instance repGenericRepoUpgradeOnBoot :: Generic RepoUpgradeOnBoot _
instance showRepoUpgradeOnBoot :: Show RepoUpgradeOnBoot where
  show = genericShow
instance decodeRepoUpgradeOnBoot :: Decode RepoUpgradeOnBoot where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRepoUpgradeOnBoot :: Encode RepoUpgradeOnBoot where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where
  show = genericShow
instance decodeResourceId :: Decode ResourceId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeResourceId :: Encode ResourceId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Input to the <a>RunJobFlow</a> operation. </p>
newtype RunJobFlowInput = RunJobFlowInput 
  { "Name" :: (XmlStringMaxLen256)
  , "LogUri" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "AdditionalInfo" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "AmiVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "ReleaseLabel" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Instances" :: (JobFlowInstancesConfig)
  , "Steps" :: NullOrUndefined.NullOrUndefined (StepConfigList)
  , "BootstrapActions" :: NullOrUndefined.NullOrUndefined (BootstrapActionConfigList)
  , "SupportedProducts" :: NullOrUndefined.NullOrUndefined (SupportedProductsList)
  , "NewSupportedProducts" :: NullOrUndefined.NullOrUndefined (NewSupportedProductsList)
  , "Applications" :: NullOrUndefined.NullOrUndefined (ApplicationList)
  , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList)
  , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean)
  , "JobFlowRole" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "ServiceRole" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "Tags" :: NullOrUndefined.NullOrUndefined (TagList)
  , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior)
  , "CustomAmiId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "EbsRootVolumeSize" :: NullOrUndefined.NullOrUndefined (Int)
  , "RepoUpgradeOnBoot" :: NullOrUndefined.NullOrUndefined (RepoUpgradeOnBoot)
  , "KerberosAttributes" :: NullOrUndefined.NullOrUndefined (KerberosAttributes)
  }
derive instance newtypeRunJobFlowInput :: Newtype RunJobFlowInput _
derive instance repGenericRunJobFlowInput :: Generic RunJobFlowInput _
instance showRunJobFlowInput :: Show RunJobFlowInput where
  show = genericShow
instance decodeRunJobFlowInput :: Decode RunJobFlowInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRunJobFlowInput :: Encode RunJobFlowInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RunJobFlowInput from required parameters
newRunJobFlowInput :: JobFlowInstancesConfig -> XmlStringMaxLen256 -> RunJobFlowInput
newRunJobFlowInput _Instances _Name = RunJobFlowInput { "Instances": _Instances, "Name": _Name, "AdditionalInfo": (NullOrUndefined Nothing), "AmiVersion": (NullOrUndefined Nothing), "Applications": (NullOrUndefined Nothing), "AutoScalingRole": (NullOrUndefined Nothing), "BootstrapActions": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "CustomAmiId": (NullOrUndefined Nothing), "EbsRootVolumeSize": (NullOrUndefined Nothing), "JobFlowRole": (NullOrUndefined Nothing), "KerberosAttributes": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "NewSupportedProducts": (NullOrUndefined Nothing), "ReleaseLabel": (NullOrUndefined Nothing), "RepoUpgradeOnBoot": (NullOrUndefined Nothing), "ScaleDownBehavior": (NullOrUndefined Nothing), "SecurityConfiguration": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Steps": (NullOrUndefined Nothing), "SupportedProducts": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "VisibleToAllUsers": (NullOrUndefined Nothing) }

-- | Constructs RunJobFlowInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunJobFlowInput' :: JobFlowInstancesConfig -> XmlStringMaxLen256 -> ( { "Name" :: (XmlStringMaxLen256) , "LogUri" :: NullOrUndefined.NullOrUndefined (XmlString) , "AdditionalInfo" :: NullOrUndefined.NullOrUndefined (XmlString) , "AmiVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ReleaseLabel" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Instances" :: (JobFlowInstancesConfig) , "Steps" :: NullOrUndefined.NullOrUndefined (StepConfigList) , "BootstrapActions" :: NullOrUndefined.NullOrUndefined (BootstrapActionConfigList) , "SupportedProducts" :: NullOrUndefined.NullOrUndefined (SupportedProductsList) , "NewSupportedProducts" :: NullOrUndefined.NullOrUndefined (NewSupportedProductsList) , "Applications" :: NullOrUndefined.NullOrUndefined (ApplicationList) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean) , "JobFlowRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ServiceRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "Tags" :: NullOrUndefined.NullOrUndefined (TagList) , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (XmlString) , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior) , "CustomAmiId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "EbsRootVolumeSize" :: NullOrUndefined.NullOrUndefined (Int) , "RepoUpgradeOnBoot" :: NullOrUndefined.NullOrUndefined (RepoUpgradeOnBoot) , "KerberosAttributes" :: NullOrUndefined.NullOrUndefined (KerberosAttributes) } -> {"Name" :: (XmlStringMaxLen256) , "LogUri" :: NullOrUndefined.NullOrUndefined (XmlString) , "AdditionalInfo" :: NullOrUndefined.NullOrUndefined (XmlString) , "AmiVersion" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "ReleaseLabel" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Instances" :: (JobFlowInstancesConfig) , "Steps" :: NullOrUndefined.NullOrUndefined (StepConfigList) , "BootstrapActions" :: NullOrUndefined.NullOrUndefined (BootstrapActionConfigList) , "SupportedProducts" :: NullOrUndefined.NullOrUndefined (SupportedProductsList) , "NewSupportedProducts" :: NullOrUndefined.NullOrUndefined (NewSupportedProductsList) , "Applications" :: NullOrUndefined.NullOrUndefined (ApplicationList) , "Configurations" :: NullOrUndefined.NullOrUndefined (ConfigurationList) , "VisibleToAllUsers" :: NullOrUndefined.NullOrUndefined (Boolean) , "JobFlowRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ServiceRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "Tags" :: NullOrUndefined.NullOrUndefined (TagList) , "SecurityConfiguration" :: NullOrUndefined.NullOrUndefined (XmlString) , "AutoScalingRole" :: NullOrUndefined.NullOrUndefined (XmlString) , "ScaleDownBehavior" :: NullOrUndefined.NullOrUndefined (ScaleDownBehavior) , "CustomAmiId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "EbsRootVolumeSize" :: NullOrUndefined.NullOrUndefined (Int) , "RepoUpgradeOnBoot" :: NullOrUndefined.NullOrUndefined (RepoUpgradeOnBoot) , "KerberosAttributes" :: NullOrUndefined.NullOrUndefined (KerberosAttributes) } ) -> RunJobFlowInput
newRunJobFlowInput' _Instances _Name customize = (RunJobFlowInput <<< customize) { "Instances": _Instances, "Name": _Name, "AdditionalInfo": (NullOrUndefined Nothing), "AmiVersion": (NullOrUndefined Nothing), "Applications": (NullOrUndefined Nothing), "AutoScalingRole": (NullOrUndefined Nothing), "BootstrapActions": (NullOrUndefined Nothing), "Configurations": (NullOrUndefined Nothing), "CustomAmiId": (NullOrUndefined Nothing), "EbsRootVolumeSize": (NullOrUndefined Nothing), "JobFlowRole": (NullOrUndefined Nothing), "KerberosAttributes": (NullOrUndefined Nothing), "LogUri": (NullOrUndefined Nothing), "NewSupportedProducts": (NullOrUndefined Nothing), "ReleaseLabel": (NullOrUndefined Nothing), "RepoUpgradeOnBoot": (NullOrUndefined Nothing), "ScaleDownBehavior": (NullOrUndefined Nothing), "SecurityConfiguration": (NullOrUndefined Nothing), "ServiceRole": (NullOrUndefined Nothing), "Steps": (NullOrUndefined Nothing), "SupportedProducts": (NullOrUndefined Nothing), "Tags": (NullOrUndefined Nothing), "VisibleToAllUsers": (NullOrUndefined Nothing) }



-- | <p> The result of the <a>RunJobFlow</a> operation. </p>
newtype RunJobFlowOutput = RunJobFlowOutput 
  { "JobFlowId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  }
derive instance newtypeRunJobFlowOutput :: Newtype RunJobFlowOutput _
derive instance repGenericRunJobFlowOutput :: Generic RunJobFlowOutput _
instance showRunJobFlowOutput :: Show RunJobFlowOutput where
  show = genericShow
instance decodeRunJobFlowOutput :: Decode RunJobFlowOutput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRunJobFlowOutput :: Encode RunJobFlowOutput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RunJobFlowOutput from required parameters
newRunJobFlowOutput :: RunJobFlowOutput
newRunJobFlowOutput  = RunJobFlowOutput { "JobFlowId": (NullOrUndefined Nothing) }

-- | Constructs RunJobFlowOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunJobFlowOutput' :: ( { "JobFlowId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) } -> {"JobFlowId" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) } ) -> RunJobFlowOutput
newRunJobFlowOutput'  customize = (RunJobFlowOutput <<< customize) { "JobFlowId": (NullOrUndefined Nothing) }



newtype ScaleDownBehavior = ScaleDownBehavior String
derive instance newtypeScaleDownBehavior :: Newtype ScaleDownBehavior _
derive instance repGenericScaleDownBehavior :: Generic ScaleDownBehavior _
instance showScaleDownBehavior :: Show ScaleDownBehavior where
  show = genericShow
instance decodeScaleDownBehavior :: Decode ScaleDownBehavior where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScaleDownBehavior :: Encode ScaleDownBehavior where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.</p>
newtype ScalingAction = ScalingAction 
  { "Market" :: NullOrUndefined.NullOrUndefined (MarketType)
  , "SimpleScalingPolicyConfiguration" :: (SimpleScalingPolicyConfiguration)
  }
derive instance newtypeScalingAction :: Newtype ScalingAction _
derive instance repGenericScalingAction :: Generic ScalingAction _
instance showScalingAction :: Show ScalingAction where
  show = genericShow
instance decodeScalingAction :: Decode ScalingAction where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingAction :: Encode ScalingAction where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingAction from required parameters
newScalingAction :: SimpleScalingPolicyConfiguration -> ScalingAction
newScalingAction _SimpleScalingPolicyConfiguration = ScalingAction { "SimpleScalingPolicyConfiguration": _SimpleScalingPolicyConfiguration, "Market": (NullOrUndefined Nothing) }

-- | Constructs ScalingAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingAction' :: SimpleScalingPolicyConfiguration -> ( { "Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "SimpleScalingPolicyConfiguration" :: (SimpleScalingPolicyConfiguration) } -> {"Market" :: NullOrUndefined.NullOrUndefined (MarketType) , "SimpleScalingPolicyConfiguration" :: (SimpleScalingPolicyConfiguration) } ) -> ScalingAction
newScalingAction' _SimpleScalingPolicyConfiguration customize = (ScalingAction <<< customize) { "SimpleScalingPolicyConfiguration": _SimpleScalingPolicyConfiguration, "Market": (NullOrUndefined Nothing) }



-- | <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activities triggered by automatic scaling rules will not cause an instance group to grow above or below these limits.</p>
newtype ScalingConstraints = ScalingConstraints 
  { "MinCapacity" :: (Int)
  , "MaxCapacity" :: (Int)
  }
derive instance newtypeScalingConstraints :: Newtype ScalingConstraints _
derive instance repGenericScalingConstraints :: Generic ScalingConstraints _
instance showScalingConstraints :: Show ScalingConstraints where
  show = genericShow
instance decodeScalingConstraints :: Decode ScalingConstraints where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingConstraints :: Encode ScalingConstraints where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingConstraints from required parameters
newScalingConstraints :: Int -> Int -> ScalingConstraints
newScalingConstraints _MaxCapacity _MinCapacity = ScalingConstraints { "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity }

-- | Constructs ScalingConstraints's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingConstraints' :: Int -> Int -> ( { "MinCapacity" :: (Int) , "MaxCapacity" :: (Int) } -> {"MinCapacity" :: (Int) , "MaxCapacity" :: (Int) } ) -> ScalingConstraints
newScalingConstraints' _MaxCapacity _MinCapacity customize = (ScalingConstraints <<< customize) { "MaxCapacity": _MaxCapacity, "MinCapacity": _MinCapacity }



-- | <p>A scale-in or scale-out rule that defines scaling activity, including the CloudWatch metric alarm that triggers activity, how EC2 instances are added or removed, and the periodicity of adjustments. The automatic scaling policy for an instance group can comprise one or more automatic scaling rules.</p>
newtype ScalingRule = ScalingRule 
  { "Name" :: (String)
  , "Description" :: NullOrUndefined.NullOrUndefined (String)
  , "Action" :: (ScalingAction)
  , "Trigger" :: (ScalingTrigger)
  }
derive instance newtypeScalingRule :: Newtype ScalingRule _
derive instance repGenericScalingRule :: Generic ScalingRule _
instance showScalingRule :: Show ScalingRule where
  show = genericShow
instance decodeScalingRule :: Decode ScalingRule where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingRule :: Encode ScalingRule where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingRule from required parameters
newScalingRule :: ScalingAction -> String -> ScalingTrigger -> ScalingRule
newScalingRule _Action _Name _Trigger = ScalingRule { "Action": _Action, "Name": _Name, "Trigger": _Trigger, "Description": (NullOrUndefined Nothing) }

-- | Constructs ScalingRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingRule' :: ScalingAction -> String -> ScalingTrigger -> ( { "Name" :: (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Action" :: (ScalingAction) , "Trigger" :: (ScalingTrigger) } -> {"Name" :: (String) , "Description" :: NullOrUndefined.NullOrUndefined (String) , "Action" :: (ScalingAction) , "Trigger" :: (ScalingTrigger) } ) -> ScalingRule
newScalingRule' _Action _Name _Trigger customize = (ScalingRule <<< customize) { "Action": _Action, "Name": _Name, "Trigger": _Trigger, "Description": (NullOrUndefined Nothing) }



newtype ScalingRuleList = ScalingRuleList (Array ScalingRule)
derive instance newtypeScalingRuleList :: Newtype ScalingRuleList _
derive instance repGenericScalingRuleList :: Generic ScalingRuleList _
instance showScalingRuleList :: Show ScalingRuleList where
  show = genericShow
instance decodeScalingRuleList :: Decode ScalingRuleList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingRuleList :: Encode ScalingRuleList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The conditions that trigger an automatic scaling activity.</p>
newtype ScalingTrigger = ScalingTrigger 
  { "CloudWatchAlarmDefinition" :: (CloudWatchAlarmDefinition)
  }
derive instance newtypeScalingTrigger :: Newtype ScalingTrigger _
derive instance repGenericScalingTrigger :: Generic ScalingTrigger _
instance showScalingTrigger :: Show ScalingTrigger where
  show = genericShow
instance decodeScalingTrigger :: Decode ScalingTrigger where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScalingTrigger :: Encode ScalingTrigger where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScalingTrigger from required parameters
newScalingTrigger :: CloudWatchAlarmDefinition -> ScalingTrigger
newScalingTrigger _CloudWatchAlarmDefinition = ScalingTrigger { "CloudWatchAlarmDefinition": _CloudWatchAlarmDefinition }

-- | Constructs ScalingTrigger's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingTrigger' :: CloudWatchAlarmDefinition -> ( { "CloudWatchAlarmDefinition" :: (CloudWatchAlarmDefinition) } -> {"CloudWatchAlarmDefinition" :: (CloudWatchAlarmDefinition) } ) -> ScalingTrigger
newScalingTrigger' _CloudWatchAlarmDefinition customize = (ScalingTrigger <<< customize) { "CloudWatchAlarmDefinition": _CloudWatchAlarmDefinition }



-- | <p>Configuration of the script to run during a bootstrap action.</p>
newtype ScriptBootstrapActionConfig = ScriptBootstrapActionConfig 
  { "Path" :: (XmlString)
  , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList)
  }
derive instance newtypeScriptBootstrapActionConfig :: Newtype ScriptBootstrapActionConfig _
derive instance repGenericScriptBootstrapActionConfig :: Generic ScriptBootstrapActionConfig _
instance showScriptBootstrapActionConfig :: Show ScriptBootstrapActionConfig where
  show = genericShow
instance decodeScriptBootstrapActionConfig :: Decode ScriptBootstrapActionConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeScriptBootstrapActionConfig :: Encode ScriptBootstrapActionConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ScriptBootstrapActionConfig from required parameters
newScriptBootstrapActionConfig :: XmlString -> ScriptBootstrapActionConfig
newScriptBootstrapActionConfig _Path = ScriptBootstrapActionConfig { "Path": _Path, "Args": (NullOrUndefined Nothing) }

-- | Constructs ScriptBootstrapActionConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScriptBootstrapActionConfig' :: XmlString -> ( { "Path" :: (XmlString) , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList) } -> {"Path" :: (XmlString) , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList) } ) -> ScriptBootstrapActionConfig
newScriptBootstrapActionConfig' _Path customize = (ScriptBootstrapActionConfig <<< customize) { "Path": _Path, "Args": (NullOrUndefined Nothing) }



newtype SecurityConfigurationList = SecurityConfigurationList (Array SecurityConfigurationSummary)
derive instance newtypeSecurityConfigurationList :: Newtype SecurityConfigurationList _
derive instance repGenericSecurityConfigurationList :: Generic SecurityConfigurationList _
instance showSecurityConfigurationList :: Show SecurityConfigurationList where
  show = genericShow
instance decodeSecurityConfigurationList :: Decode SecurityConfigurationList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSecurityConfigurationList :: Encode SecurityConfigurationList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The creation date and time, and name, of a security configuration.</p>
newtype SecurityConfigurationSummary = SecurityConfigurationSummary 
  { "Name" :: NullOrUndefined.NullOrUndefined (XmlString)
  , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeSecurityConfigurationSummary :: Newtype SecurityConfigurationSummary _
derive instance repGenericSecurityConfigurationSummary :: Generic SecurityConfigurationSummary _
instance showSecurityConfigurationSummary :: Show SecurityConfigurationSummary where
  show = genericShow
instance decodeSecurityConfigurationSummary :: Decode SecurityConfigurationSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSecurityConfigurationSummary :: Encode SecurityConfigurationSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SecurityConfigurationSummary from required parameters
newSecurityConfigurationSummary :: SecurityConfigurationSummary
newSecurityConfigurationSummary  = SecurityConfigurationSummary { "CreationDateTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs SecurityConfigurationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSecurityConfigurationSummary' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (XmlString) , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"Name" :: NullOrUndefined.NullOrUndefined (XmlString) , "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> SecurityConfigurationSummary
newSecurityConfigurationSummary'  customize = (SecurityConfigurationSummary <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype SecurityGroupsList = SecurityGroupsList (Array XmlStringMaxLen256)
derive instance newtypeSecurityGroupsList :: Newtype SecurityGroupsList _
derive instance repGenericSecurityGroupsList :: Generic SecurityGroupsList _
instance showSecurityGroupsList :: Show SecurityGroupsList where
  show = genericShow
instance decodeSecurityGroupsList :: Decode SecurityGroupsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSecurityGroupsList :: Encode SecurityGroupsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> The input argument to the <a>TerminationProtection</a> operation. </p>
newtype SetTerminationProtectionInput = SetTerminationProtectionInput 
  { "JobFlowIds" :: (XmlStringList)
  , "TerminationProtected" :: (Boolean)
  }
derive instance newtypeSetTerminationProtectionInput :: Newtype SetTerminationProtectionInput _
derive instance repGenericSetTerminationProtectionInput :: Generic SetTerminationProtectionInput _
instance showSetTerminationProtectionInput :: Show SetTerminationProtectionInput where
  show = genericShow
instance decodeSetTerminationProtectionInput :: Decode SetTerminationProtectionInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetTerminationProtectionInput :: Encode SetTerminationProtectionInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetTerminationProtectionInput from required parameters
newSetTerminationProtectionInput :: XmlStringList -> Boolean -> SetTerminationProtectionInput
newSetTerminationProtectionInput _JobFlowIds _TerminationProtected = SetTerminationProtectionInput { "JobFlowIds": _JobFlowIds, "TerminationProtected": _TerminationProtected }

-- | Constructs SetTerminationProtectionInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetTerminationProtectionInput' :: XmlStringList -> Boolean -> ( { "JobFlowIds" :: (XmlStringList) , "TerminationProtected" :: (Boolean) } -> {"JobFlowIds" :: (XmlStringList) , "TerminationProtected" :: (Boolean) } ) -> SetTerminationProtectionInput
newSetTerminationProtectionInput' _JobFlowIds _TerminationProtected customize = (SetTerminationProtectionInput <<< customize) { "JobFlowIds": _JobFlowIds, "TerminationProtected": _TerminationProtected }



-- | <p>The input to the SetVisibleToAllUsers action.</p>
newtype SetVisibleToAllUsersInput = SetVisibleToAllUsersInput 
  { "JobFlowIds" :: (XmlStringList)
  , "VisibleToAllUsers" :: (Boolean)
  }
derive instance newtypeSetVisibleToAllUsersInput :: Newtype SetVisibleToAllUsersInput _
derive instance repGenericSetVisibleToAllUsersInput :: Generic SetVisibleToAllUsersInput _
instance showSetVisibleToAllUsersInput :: Show SetVisibleToAllUsersInput where
  show = genericShow
instance decodeSetVisibleToAllUsersInput :: Decode SetVisibleToAllUsersInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSetVisibleToAllUsersInput :: Encode SetVisibleToAllUsersInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SetVisibleToAllUsersInput from required parameters
newSetVisibleToAllUsersInput :: XmlStringList -> Boolean -> SetVisibleToAllUsersInput
newSetVisibleToAllUsersInput _JobFlowIds _VisibleToAllUsers = SetVisibleToAllUsersInput { "JobFlowIds": _JobFlowIds, "VisibleToAllUsers": _VisibleToAllUsers }

-- | Constructs SetVisibleToAllUsersInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetVisibleToAllUsersInput' :: XmlStringList -> Boolean -> ( { "JobFlowIds" :: (XmlStringList) , "VisibleToAllUsers" :: (Boolean) } -> {"JobFlowIds" :: (XmlStringList) , "VisibleToAllUsers" :: (Boolean) } ) -> SetVisibleToAllUsersInput
newSetVisibleToAllUsersInput' _JobFlowIds _VisibleToAllUsers customize = (SetVisibleToAllUsersInput <<< customize) { "JobFlowIds": _JobFlowIds, "VisibleToAllUsers": _VisibleToAllUsers }



-- | <p>Policy for customizing shrink operations. Allows configuration of decommissioning timeout and targeted instance shrinking.</p>
newtype ShrinkPolicy = ShrinkPolicy 
  { "DecommissionTimeout" :: NullOrUndefined.NullOrUndefined (Int)
  , "InstanceResizePolicy" :: NullOrUndefined.NullOrUndefined (InstanceResizePolicy)
  }
derive instance newtypeShrinkPolicy :: Newtype ShrinkPolicy _
derive instance repGenericShrinkPolicy :: Generic ShrinkPolicy _
instance showShrinkPolicy :: Show ShrinkPolicy where
  show = genericShow
instance decodeShrinkPolicy :: Decode ShrinkPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeShrinkPolicy :: Encode ShrinkPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ShrinkPolicy from required parameters
newShrinkPolicy :: ShrinkPolicy
newShrinkPolicy  = ShrinkPolicy { "DecommissionTimeout": (NullOrUndefined Nothing), "InstanceResizePolicy": (NullOrUndefined Nothing) }

-- | Constructs ShrinkPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShrinkPolicy' :: ( { "DecommissionTimeout" :: NullOrUndefined.NullOrUndefined (Int) , "InstanceResizePolicy" :: NullOrUndefined.NullOrUndefined (InstanceResizePolicy) } -> {"DecommissionTimeout" :: NullOrUndefined.NullOrUndefined (Int) , "InstanceResizePolicy" :: NullOrUndefined.NullOrUndefined (InstanceResizePolicy) } ) -> ShrinkPolicy
newShrinkPolicy'  customize = (ShrinkPolicy <<< customize) { "DecommissionTimeout": (NullOrUndefined Nothing), "InstanceResizePolicy": (NullOrUndefined Nothing) }



-- | <p>An automatic scaling configuration, which describes how the policy adds or removes instances, the cooldown period, and the number of EC2 instances that will be added each time the CloudWatch metric alarm condition is satisfied.</p>
newtype SimpleScalingPolicyConfiguration = SimpleScalingPolicyConfiguration 
  { "AdjustmentType" :: NullOrUndefined.NullOrUndefined (AdjustmentType)
  , "ScalingAdjustment" :: (Int)
  , "CoolDown" :: NullOrUndefined.NullOrUndefined (Int)
  }
derive instance newtypeSimpleScalingPolicyConfiguration :: Newtype SimpleScalingPolicyConfiguration _
derive instance repGenericSimpleScalingPolicyConfiguration :: Generic SimpleScalingPolicyConfiguration _
instance showSimpleScalingPolicyConfiguration :: Show SimpleScalingPolicyConfiguration where
  show = genericShow
instance decodeSimpleScalingPolicyConfiguration :: Decode SimpleScalingPolicyConfiguration where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSimpleScalingPolicyConfiguration :: Encode SimpleScalingPolicyConfiguration where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SimpleScalingPolicyConfiguration from required parameters
newSimpleScalingPolicyConfiguration :: Int -> SimpleScalingPolicyConfiguration
newSimpleScalingPolicyConfiguration _ScalingAdjustment = SimpleScalingPolicyConfiguration { "ScalingAdjustment": _ScalingAdjustment, "AdjustmentType": (NullOrUndefined Nothing), "CoolDown": (NullOrUndefined Nothing) }

-- | Constructs SimpleScalingPolicyConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimpleScalingPolicyConfiguration' :: Int -> ( { "AdjustmentType" :: NullOrUndefined.NullOrUndefined (AdjustmentType) , "ScalingAdjustment" :: (Int) , "CoolDown" :: NullOrUndefined.NullOrUndefined (Int) } -> {"AdjustmentType" :: NullOrUndefined.NullOrUndefined (AdjustmentType) , "ScalingAdjustment" :: (Int) , "CoolDown" :: NullOrUndefined.NullOrUndefined (Int) } ) -> SimpleScalingPolicyConfiguration
newSimpleScalingPolicyConfiguration' _ScalingAdjustment customize = (SimpleScalingPolicyConfiguration <<< customize) { "ScalingAdjustment": _ScalingAdjustment, "AdjustmentType": (NullOrUndefined Nothing), "CoolDown": (NullOrUndefined Nothing) }



-- | <p>The launch specification for Spot instances in the instance fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype SpotProvisioningSpecification = SpotProvisioningSpecification 
  { "TimeoutDurationMinutes" :: (WholeNumber)
  , "TimeoutAction" :: (SpotProvisioningTimeoutAction)
  , "BlockDurationMinutes" :: NullOrUndefined.NullOrUndefined (WholeNumber)
  }
derive instance newtypeSpotProvisioningSpecification :: Newtype SpotProvisioningSpecification _
derive instance repGenericSpotProvisioningSpecification :: Generic SpotProvisioningSpecification _
instance showSpotProvisioningSpecification :: Show SpotProvisioningSpecification where
  show = genericShow
instance decodeSpotProvisioningSpecification :: Decode SpotProvisioningSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSpotProvisioningSpecification :: Encode SpotProvisioningSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SpotProvisioningSpecification from required parameters
newSpotProvisioningSpecification :: SpotProvisioningTimeoutAction -> WholeNumber -> SpotProvisioningSpecification
newSpotProvisioningSpecification _TimeoutAction _TimeoutDurationMinutes = SpotProvisioningSpecification { "TimeoutAction": _TimeoutAction, "TimeoutDurationMinutes": _TimeoutDurationMinutes, "BlockDurationMinutes": (NullOrUndefined Nothing) }

-- | Constructs SpotProvisioningSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSpotProvisioningSpecification' :: SpotProvisioningTimeoutAction -> WholeNumber -> ( { "TimeoutDurationMinutes" :: (WholeNumber) , "TimeoutAction" :: (SpotProvisioningTimeoutAction) , "BlockDurationMinutes" :: NullOrUndefined.NullOrUndefined (WholeNumber) } -> {"TimeoutDurationMinutes" :: (WholeNumber) , "TimeoutAction" :: (SpotProvisioningTimeoutAction) , "BlockDurationMinutes" :: NullOrUndefined.NullOrUndefined (WholeNumber) } ) -> SpotProvisioningSpecification
newSpotProvisioningSpecification' _TimeoutAction _TimeoutDurationMinutes customize = (SpotProvisioningSpecification <<< customize) { "TimeoutAction": _TimeoutAction, "TimeoutDurationMinutes": _TimeoutDurationMinutes, "BlockDurationMinutes": (NullOrUndefined Nothing) }



newtype SpotProvisioningTimeoutAction = SpotProvisioningTimeoutAction String
derive instance newtypeSpotProvisioningTimeoutAction :: Newtype SpotProvisioningTimeoutAction _
derive instance repGenericSpotProvisioningTimeoutAction :: Generic SpotProvisioningTimeoutAction _
instance showSpotProvisioningTimeoutAction :: Show SpotProvisioningTimeoutAction where
  show = genericShow
instance decodeSpotProvisioningTimeoutAction :: Decode SpotProvisioningTimeoutAction where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSpotProvisioningTimeoutAction :: Encode SpotProvisioningTimeoutAction where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Statistic = Statistic String
derive instance newtypeStatistic :: Newtype Statistic _
derive instance repGenericStatistic :: Generic Statistic _
instance showStatistic :: Show Statistic where
  show = genericShow
instance decodeStatistic :: Decode Statistic where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStatistic :: Encode Statistic where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>This represents a step in a cluster.</p>
newtype Step = Step 
  { "Id" :: NullOrUndefined.NullOrUndefined (StepId)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Config" :: NullOrUndefined.NullOrUndefined (HadoopStepConfig)
  , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure)
  , "Status" :: NullOrUndefined.NullOrUndefined (StepStatus)
  }
derive instance newtypeStep :: Newtype Step _
derive instance repGenericStep :: Generic Step _
instance showStep :: Show Step where
  show = genericShow
instance decodeStep :: Decode Step where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStep :: Encode Step where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Step from required parameters
newStep :: Step
newStep  = Step { "ActionOnFailure": (NullOrUndefined Nothing), "Config": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs Step's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStep' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (StepId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Config" :: NullOrUndefined.NullOrUndefined (HadoopStepConfig) , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure) , "Status" :: NullOrUndefined.NullOrUndefined (StepStatus) } -> {"Id" :: NullOrUndefined.NullOrUndefined (StepId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Config" :: NullOrUndefined.NullOrUndefined (HadoopStepConfig) , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure) , "Status" :: NullOrUndefined.NullOrUndefined (StepStatus) } ) -> Step
newStep'  customize = (Step <<< customize) { "ActionOnFailure": (NullOrUndefined Nothing), "Config": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



-- | <p>Specification of a cluster (job flow) step.</p>
newtype StepConfig = StepConfig 
  { "Name" :: (XmlStringMaxLen256)
  , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure)
  , "HadoopJarStep" :: (HadoopJarStepConfig)
  }
derive instance newtypeStepConfig :: Newtype StepConfig _
derive instance repGenericStepConfig :: Generic StepConfig _
instance showStepConfig :: Show StepConfig where
  show = genericShow
instance decodeStepConfig :: Decode StepConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepConfig :: Encode StepConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepConfig from required parameters
newStepConfig :: HadoopJarStepConfig -> XmlStringMaxLen256 -> StepConfig
newStepConfig _HadoopJarStep _Name = StepConfig { "HadoopJarStep": _HadoopJarStep, "Name": _Name, "ActionOnFailure": (NullOrUndefined Nothing) }

-- | Constructs StepConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepConfig' :: HadoopJarStepConfig -> XmlStringMaxLen256 -> ( { "Name" :: (XmlStringMaxLen256) , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure) , "HadoopJarStep" :: (HadoopJarStepConfig) } -> {"Name" :: (XmlStringMaxLen256) , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure) , "HadoopJarStep" :: (HadoopJarStepConfig) } ) -> StepConfig
newStepConfig' _HadoopJarStep _Name customize = (StepConfig <<< customize) { "HadoopJarStep": _HadoopJarStep, "Name": _Name, "ActionOnFailure": (NullOrUndefined Nothing) }



newtype StepConfigList = StepConfigList (Array StepConfig)
derive instance newtypeStepConfigList :: Newtype StepConfigList _
derive instance repGenericStepConfigList :: Generic StepConfigList _
instance showStepConfigList :: Show StepConfigList where
  show = genericShow
instance decodeStepConfigList :: Decode StepConfigList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepConfigList :: Encode StepConfigList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Combines the execution state and configuration of a step.</p>
newtype StepDetail = StepDetail 
  { "StepConfig" :: (StepConfig)
  , "ExecutionStatusDetail" :: (StepExecutionStatusDetail)
  }
derive instance newtypeStepDetail :: Newtype StepDetail _
derive instance repGenericStepDetail :: Generic StepDetail _
instance showStepDetail :: Show StepDetail where
  show = genericShow
instance decodeStepDetail :: Decode StepDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepDetail :: Encode StepDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepDetail from required parameters
newStepDetail :: StepExecutionStatusDetail -> StepConfig -> StepDetail
newStepDetail _ExecutionStatusDetail _StepConfig = StepDetail { "ExecutionStatusDetail": _ExecutionStatusDetail, "StepConfig": _StepConfig }

-- | Constructs StepDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepDetail' :: StepExecutionStatusDetail -> StepConfig -> ( { "StepConfig" :: (StepConfig) , "ExecutionStatusDetail" :: (StepExecutionStatusDetail) } -> {"StepConfig" :: (StepConfig) , "ExecutionStatusDetail" :: (StepExecutionStatusDetail) } ) -> StepDetail
newStepDetail' _ExecutionStatusDetail _StepConfig customize = (StepDetail <<< customize) { "ExecutionStatusDetail": _ExecutionStatusDetail, "StepConfig": _StepConfig }



newtype StepDetailList = StepDetailList (Array StepDetail)
derive instance newtypeStepDetailList :: Newtype StepDetailList _
derive instance repGenericStepDetailList :: Generic StepDetailList _
instance showStepDetailList :: Show StepDetailList where
  show = genericShow
instance decodeStepDetailList :: Decode StepDetailList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepDetailList :: Encode StepDetailList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StepExecutionState = StepExecutionState String
derive instance newtypeStepExecutionState :: Newtype StepExecutionState _
derive instance repGenericStepExecutionState :: Generic StepExecutionState _
instance showStepExecutionState :: Show StepExecutionState where
  show = genericShow
instance decodeStepExecutionState :: Decode StepExecutionState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepExecutionState :: Encode StepExecutionState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The execution state of a step.</p>
newtype StepExecutionStatusDetail = StepExecutionStatusDetail 
  { "State" :: (StepExecutionState)
  , "CreationDateTime" :: (Date)
  , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString)
  }
derive instance newtypeStepExecutionStatusDetail :: Newtype StepExecutionStatusDetail _
derive instance repGenericStepExecutionStatusDetail :: Generic StepExecutionStatusDetail _
instance showStepExecutionStatusDetail :: Show StepExecutionStatusDetail where
  show = genericShow
instance decodeStepExecutionStatusDetail :: Decode StepExecutionStatusDetail where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepExecutionStatusDetail :: Encode StepExecutionStatusDetail where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepExecutionStatusDetail from required parameters
newStepExecutionStatusDetail :: Date -> StepExecutionState -> StepExecutionStatusDetail
newStepExecutionStatusDetail _CreationDateTime _State = StepExecutionStatusDetail { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": (NullOrUndefined Nothing), "LastStateChangeReason": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }

-- | Constructs StepExecutionStatusDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepExecutionStatusDetail' :: Date -> StepExecutionState -> ( { "State" :: (StepExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString) } -> {"State" :: (StepExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "LastStateChangeReason" :: NullOrUndefined.NullOrUndefined (XmlString) } ) -> StepExecutionStatusDetail
newStepExecutionStatusDetail' _CreationDateTime _State customize = (StepExecutionStatusDetail <<< customize) { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": (NullOrUndefined Nothing), "LastStateChangeReason": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }



newtype StepId = StepId String
derive instance newtypeStepId :: Newtype StepId _
derive instance repGenericStepId :: Generic StepId _
instance showStepId :: Show StepId where
  show = genericShow
instance decodeStepId :: Decode StepId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepId :: Encode StepId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StepIdsList = StepIdsList (Array XmlStringMaxLen256)
derive instance newtypeStepIdsList :: Newtype StepIdsList _
derive instance repGenericStepIdsList :: Generic StepIdsList _
instance showStepIdsList :: Show StepIdsList where
  show = genericShow
instance decodeStepIdsList :: Decode StepIdsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepIdsList :: Encode StepIdsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StepState = StepState String
derive instance newtypeStepState :: Newtype StepState _
derive instance repGenericStepState :: Generic StepState _
instance showStepState :: Show StepState where
  show = genericShow
instance decodeStepState :: Decode StepState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepState :: Encode StepState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The details of the step state change reason.</p>
newtype StepStateChangeReason = StepStateChangeReason 
  { "Code" :: NullOrUndefined.NullOrUndefined (StepStateChangeReasonCode)
  , "Message" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeStepStateChangeReason :: Newtype StepStateChangeReason _
derive instance repGenericStepStateChangeReason :: Generic StepStateChangeReason _
instance showStepStateChangeReason :: Show StepStateChangeReason where
  show = genericShow
instance decodeStepStateChangeReason :: Decode StepStateChangeReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepStateChangeReason :: Encode StepStateChangeReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepStateChangeReason from required parameters
newStepStateChangeReason :: StepStateChangeReason
newStepStateChangeReason  = StepStateChangeReason { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }

-- | Constructs StepStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepStateChangeReason' :: ( { "Code" :: NullOrUndefined.NullOrUndefined (StepStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } -> {"Code" :: NullOrUndefined.NullOrUndefined (StepStateChangeReasonCode) , "Message" :: NullOrUndefined.NullOrUndefined (String) } ) -> StepStateChangeReason
newStepStateChangeReason'  customize = (StepStateChangeReason <<< customize) { "Code": (NullOrUndefined Nothing), "Message": (NullOrUndefined Nothing) }



newtype StepStateChangeReasonCode = StepStateChangeReasonCode String
derive instance newtypeStepStateChangeReasonCode :: Newtype StepStateChangeReasonCode _
derive instance repGenericStepStateChangeReasonCode :: Generic StepStateChangeReasonCode _
instance showStepStateChangeReasonCode :: Show StepStateChangeReasonCode where
  show = genericShow
instance decodeStepStateChangeReasonCode :: Decode StepStateChangeReasonCode where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepStateChangeReasonCode :: Encode StepStateChangeReasonCode where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StepStateList = StepStateList (Array StepState)
derive instance newtypeStepStateList :: Newtype StepStateList _
derive instance repGenericStepStateList :: Generic StepStateList _
instance showStepStateList :: Show StepStateList where
  show = genericShow
instance decodeStepStateList :: Decode StepStateList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepStateList :: Encode StepStateList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The execution status details of the cluster step.</p>
newtype StepStatus = StepStatus 
  { "State" :: NullOrUndefined.NullOrUndefined (StepState)
  , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (StepStateChangeReason)
  , "FailureDetails" :: NullOrUndefined.NullOrUndefined (FailureDetails)
  , "Timeline" :: NullOrUndefined.NullOrUndefined (StepTimeline)
  }
derive instance newtypeStepStatus :: Newtype StepStatus _
derive instance repGenericStepStatus :: Generic StepStatus _
instance showStepStatus :: Show StepStatus where
  show = genericShow
instance decodeStepStatus :: Decode StepStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepStatus :: Encode StepStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepStatus from required parameters
newStepStatus :: StepStatus
newStepStatus  = StepStatus { "FailureDetails": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }

-- | Constructs StepStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepStatus' :: ( { "State" :: NullOrUndefined.NullOrUndefined (StepState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (StepStateChangeReason) , "FailureDetails" :: NullOrUndefined.NullOrUndefined (FailureDetails) , "Timeline" :: NullOrUndefined.NullOrUndefined (StepTimeline) } -> {"State" :: NullOrUndefined.NullOrUndefined (StepState) , "StateChangeReason" :: NullOrUndefined.NullOrUndefined (StepStateChangeReason) , "FailureDetails" :: NullOrUndefined.NullOrUndefined (FailureDetails) , "Timeline" :: NullOrUndefined.NullOrUndefined (StepTimeline) } ) -> StepStatus
newStepStatus'  customize = (StepStatus <<< customize) { "FailureDetails": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing), "StateChangeReason": (NullOrUndefined Nothing), "Timeline": (NullOrUndefined Nothing) }



-- | <p>The summary of the cluster step.</p>
newtype StepSummary = StepSummary 
  { "Id" :: NullOrUndefined.NullOrUndefined (StepId)
  , "Name" :: NullOrUndefined.NullOrUndefined (String)
  , "Config" :: NullOrUndefined.NullOrUndefined (HadoopStepConfig)
  , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure)
  , "Status" :: NullOrUndefined.NullOrUndefined (StepStatus)
  }
derive instance newtypeStepSummary :: Newtype StepSummary _
derive instance repGenericStepSummary :: Generic StepSummary _
instance showStepSummary :: Show StepSummary where
  show = genericShow
instance decodeStepSummary :: Decode StepSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepSummary :: Encode StepSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepSummary from required parameters
newStepSummary :: StepSummary
newStepSummary  = StepSummary { "ActionOnFailure": (NullOrUndefined Nothing), "Config": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs StepSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepSummary' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (StepId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Config" :: NullOrUndefined.NullOrUndefined (HadoopStepConfig) , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure) , "Status" :: NullOrUndefined.NullOrUndefined (StepStatus) } -> {"Id" :: NullOrUndefined.NullOrUndefined (StepId) , "Name" :: NullOrUndefined.NullOrUndefined (String) , "Config" :: NullOrUndefined.NullOrUndefined (HadoopStepConfig) , "ActionOnFailure" :: NullOrUndefined.NullOrUndefined (ActionOnFailure) , "Status" :: NullOrUndefined.NullOrUndefined (StepStatus) } ) -> StepSummary
newStepSummary'  customize = (StepSummary <<< customize) { "ActionOnFailure": (NullOrUndefined Nothing), "Config": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype StepSummaryList = StepSummaryList (Array StepSummary)
derive instance newtypeStepSummaryList :: Newtype StepSummaryList _
derive instance repGenericStepSummaryList :: Generic StepSummaryList _
instance showStepSummaryList :: Show StepSummaryList where
  show = genericShow
instance decodeStepSummaryList :: Decode StepSummaryList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepSummaryList :: Encode StepSummaryList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The timeline of the cluster step lifecycle.</p>
newtype StepTimeline = StepTimeline 
  { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date)
  }
derive instance newtypeStepTimeline :: Newtype StepTimeline _
derive instance repGenericStepTimeline :: Generic StepTimeline _
instance showStepTimeline :: Show StepTimeline where
  show = genericShow
instance decodeStepTimeline :: Decode StepTimeline where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStepTimeline :: Encode StepTimeline where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs StepTimeline from required parameters
newStepTimeline :: StepTimeline
newStepTimeline  = StepTimeline { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }

-- | Constructs StepTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepTimeline' :: ( { "CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } -> {"CreationDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "StartDateTime" :: NullOrUndefined.NullOrUndefined (Date) , "EndDateTime" :: NullOrUndefined.NullOrUndefined (Date) } ) -> StepTimeline
newStepTimeline'  customize = (StepTimeline <<< customize) { "CreationDateTime": (NullOrUndefined Nothing), "EndDateTime": (NullOrUndefined Nothing), "StartDateTime": (NullOrUndefined Nothing) }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where
  show = genericShow
instance decodeStringList :: Decode StringList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringList :: Encode StringList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype StringMap = StringMap (StrMap.StrMap String)
derive instance newtypeStringMap :: Newtype StringMap _
derive instance repGenericStringMap :: Generic StringMap _
instance showStringMap :: Show StringMap where
  show = genericShow
instance decodeStringMap :: Decode StringMap where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeStringMap :: Encode StringMap where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The list of supported product configurations which allow user-supplied arguments. EMR accepts these arguments and forwards them to the corresponding installation script as bootstrap action arguments.</p>
newtype SupportedProductConfig = SupportedProductConfig 
  { "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256)
  , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList)
  }
derive instance newtypeSupportedProductConfig :: Newtype SupportedProductConfig _
derive instance repGenericSupportedProductConfig :: Generic SupportedProductConfig _
instance showSupportedProductConfig :: Show SupportedProductConfig where
  show = genericShow
instance decodeSupportedProductConfig :: Decode SupportedProductConfig where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSupportedProductConfig :: Encode SupportedProductConfig where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SupportedProductConfig from required parameters
newSupportedProductConfig :: SupportedProductConfig
newSupportedProductConfig  = SupportedProductConfig { "Args": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs SupportedProductConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSupportedProductConfig' :: ( { "Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList) } -> {"Name" :: NullOrUndefined.NullOrUndefined (XmlStringMaxLen256) , "Args" :: NullOrUndefined.NullOrUndefined (XmlStringList) } ) -> SupportedProductConfig
newSupportedProductConfig'  customize = (SupportedProductConfig <<< customize) { "Args": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype SupportedProductsList = SupportedProductsList (Array XmlStringMaxLen256)
derive instance newtypeSupportedProductsList :: Newtype SupportedProductsList _
derive instance repGenericSupportedProductsList :: Generic SupportedProductsList _
instance showSupportedProductsList :: Show SupportedProductsList where
  show = genericShow
instance decodeSupportedProductsList :: Decode SupportedProductsList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSupportedProductsList :: Encode SupportedProductsList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>A key/value pair containing user-defined metadata that you can associate with an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>
newtype Tag = Tag 
  { "Key" :: NullOrUndefined.NullOrUndefined (String)
  , "Value" :: NullOrUndefined.NullOrUndefined (String)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where
  show = genericShow
instance decodeTag :: Decode Tag where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTag :: Encode Tag where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (String) } -> {"Key" :: NullOrUndefined.NullOrUndefined (String) , "Value" :: NullOrUndefined.NullOrUndefined (String) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where
  show = genericShow
instance decodeTagList :: Decode TagList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTagList :: Encode TagList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> Input to the <a>TerminateJobFlows</a> operation. </p>
newtype TerminateJobFlowsInput = TerminateJobFlowsInput 
  { "JobFlowIds" :: (XmlStringList)
  }
derive instance newtypeTerminateJobFlowsInput :: Newtype TerminateJobFlowsInput _
derive instance repGenericTerminateJobFlowsInput :: Generic TerminateJobFlowsInput _
instance showTerminateJobFlowsInput :: Show TerminateJobFlowsInput where
  show = genericShow
instance decodeTerminateJobFlowsInput :: Decode TerminateJobFlowsInput where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTerminateJobFlowsInput :: Encode TerminateJobFlowsInput where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TerminateJobFlowsInput from required parameters
newTerminateJobFlowsInput :: XmlStringList -> TerminateJobFlowsInput
newTerminateJobFlowsInput _JobFlowIds = TerminateJobFlowsInput { "JobFlowIds": _JobFlowIds }

-- | Constructs TerminateJobFlowsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTerminateJobFlowsInput' :: XmlStringList -> ( { "JobFlowIds" :: (XmlStringList) } -> {"JobFlowIds" :: (XmlStringList) } ) -> TerminateJobFlowsInput
newTerminateJobFlowsInput' _JobFlowIds customize = (TerminateJobFlowsInput <<< customize) { "JobFlowIds": _JobFlowIds }



newtype Unit'' = Unit'' String
derive instance newtypeUnit'' :: Newtype Unit'' _
derive instance repGenericUnit'' :: Generic Unit'' _
instance showUnit'' :: Show Unit'' where
  show = genericShow
instance decodeUnit'' :: Decode Unit'' where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUnit'' :: Encode Unit'' where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.</p>
newtype VolumeSpecification = VolumeSpecification 
  { "VolumeType" :: (String)
  , "Iops" :: NullOrUndefined.NullOrUndefined (Int)
  , "SizeInGB" :: (Int)
  }
derive instance newtypeVolumeSpecification :: Newtype VolumeSpecification _
derive instance repGenericVolumeSpecification :: Generic VolumeSpecification _
instance showVolumeSpecification :: Show VolumeSpecification where
  show = genericShow
instance decodeVolumeSpecification :: Decode VolumeSpecification where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeVolumeSpecification :: Encode VolumeSpecification where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs VolumeSpecification from required parameters
newVolumeSpecification :: Int -> String -> VolumeSpecification
newVolumeSpecification _SizeInGB _VolumeType = VolumeSpecification { "SizeInGB": _SizeInGB, "VolumeType": _VolumeType, "Iops": (NullOrUndefined Nothing) }

-- | Constructs VolumeSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeSpecification' :: Int -> String -> ( { "VolumeType" :: (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "SizeInGB" :: (Int) } -> {"VolumeType" :: (String) , "Iops" :: NullOrUndefined.NullOrUndefined (Int) , "SizeInGB" :: (Int) } ) -> VolumeSpecification
newVolumeSpecification' _SizeInGB _VolumeType customize = (VolumeSpecification <<< customize) { "SizeInGB": _SizeInGB, "VolumeType": _VolumeType, "Iops": (NullOrUndefined Nothing) }



newtype WholeNumber = WholeNumber Int
derive instance newtypeWholeNumber :: Newtype WholeNumber _
derive instance repGenericWholeNumber :: Generic WholeNumber _
instance showWholeNumber :: Show WholeNumber where
  show = genericShow
instance decodeWholeNumber :: Decode WholeNumber where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeWholeNumber :: Encode WholeNumber where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype XmlString = XmlString String
derive instance newtypeXmlString :: Newtype XmlString _
derive instance repGenericXmlString :: Generic XmlString _
instance showXmlString :: Show XmlString where
  show = genericShow
instance decodeXmlString :: Decode XmlString where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeXmlString :: Encode XmlString where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype XmlStringList = XmlStringList (Array XmlString)
derive instance newtypeXmlStringList :: Newtype XmlStringList _
derive instance repGenericXmlStringList :: Generic XmlStringList _
instance showXmlStringList :: Show XmlStringList where
  show = genericShow
instance decodeXmlStringList :: Decode XmlStringList where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeXmlStringList :: Encode XmlStringList where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype XmlStringMaxLen256 = XmlStringMaxLen256 String
derive instance newtypeXmlStringMaxLen256 :: Newtype XmlStringMaxLen256 _
derive instance repGenericXmlStringMaxLen256 :: Generic XmlStringMaxLen256 _
instance showXmlStringMaxLen256 :: Show XmlStringMaxLen256 where
  show = genericShow
instance decodeXmlStringMaxLen256 :: Decode XmlStringMaxLen256 where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeXmlStringMaxLen256 :: Encode XmlStringMaxLen256 where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype XmlStringMaxLen256List = XmlStringMaxLen256List (Array XmlStringMaxLen256)
derive instance newtypeXmlStringMaxLen256List :: Newtype XmlStringMaxLen256List _
derive instance repGenericXmlStringMaxLen256List :: Generic XmlStringMaxLen256List _
instance showXmlStringMaxLen256List :: Show XmlStringMaxLen256List where
  show = genericShow
instance decodeXmlStringMaxLen256List :: Decode XmlStringMaxLen256List where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeXmlStringMaxLen256List :: Encode XmlStringMaxLen256List where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

