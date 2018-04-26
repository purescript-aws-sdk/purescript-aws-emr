
module AWS.EMR.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.EMR as EMR
import AWS.EMR.Types as EMRTypes


-- | <p>Adds an instance fleet to a running cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x.</p> </note>
addInstanceFleet :: forall eff. EMR.Service -> EMRTypes.AddInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.AddInstanceFleetOutput
addInstanceFleet (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addInstanceFleet"


-- | <p>Adds one or more instance groups to a running cluster.</p>
addInstanceGroups :: forall eff. EMR.Service -> EMRTypes.AddInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.AddInstanceGroupsOutput
addInstanceGroups (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addInstanceGroups"


-- | <p>AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step.</p> <p>Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully.</p> <p>You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.</p>
addJobFlowSteps :: forall eff. EMR.Service -> EMRTypes.AddJobFlowStepsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.AddJobFlowStepsOutput
addJobFlowSteps (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addJobFlowSteps"


-- | <p>Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>
addTags :: forall eff. EMR.Service -> EMRTypes.AddTagsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.AddTagsOutput
addTags (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "addTags"


-- | <p>Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a <code>PENDING</code> state.</p>
cancelSteps :: forall eff. EMR.Service -> EMRTypes.CancelStepsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.CancelStepsOutput
cancelSteps (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelSteps"


-- | <p>Creates a security configuration, which is stored in the service and can be specified when a cluster is created.</p>
createSecurityConfiguration :: forall eff. EMR.Service -> EMRTypes.CreateSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.CreateSecurityConfigurationOutput
createSecurityConfiguration (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createSecurityConfiguration"


-- | <p>Deletes a security configuration.</p>
deleteSecurityConfiguration :: forall eff. EMR.Service -> EMRTypes.DeleteSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.DeleteSecurityConfigurationOutput
deleteSecurityConfiguration (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteSecurityConfiguration"


-- | <p>Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. For information about the cluster steps, see <a>ListSteps</a>.</p>
describeCluster :: forall eff. EMR.Service -> EMRTypes.DescribeClusterInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.DescribeClusterOutput
describeCluster (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCluster"


-- | <p>This API is deprecated and will eventually be removed. We recommend you use <a>ListClusters</a>, <a>DescribeCluster</a>, <a>ListSteps</a>, <a>ListInstanceGroups</a> and <a>ListBootstrapActions</a> instead.</p> <p>DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time.</p> <p>Regardless of supplied parameters, only job flows created within the last two months are returned.</p> <p>If no parameters are supplied, then job flows matching either of the following criteria are returned:</p> <ul> <li> <p>Job flows created and completed in the last two weeks</p> </li> <li> <p> Job flows created within the last two months that are in one of the following states: <code>RUNNING</code>, <code>WAITING</code>, <code>SHUTTING_DOWN</code>, <code>STARTING</code> </p> </li> </ul> <p>Amazon EMR can return a maximum of 512 job flow descriptions.</p>
describeJobFlows :: forall eff. EMR.Service -> EMRTypes.DescribeJobFlowsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.DescribeJobFlowsOutput
describeJobFlows (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeJobFlows"


-- | <p>Provides the details of a security configuration by returning the configuration JSON.</p>
describeSecurityConfiguration :: forall eff. EMR.Service -> EMRTypes.DescribeSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.DescribeSecurityConfigurationOutput
describeSecurityConfiguration (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeSecurityConfiguration"


-- | <p>Provides more detail about the cluster step.</p>
describeStep :: forall eff. EMR.Service -> EMRTypes.DescribeStepInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.DescribeStepOutput
describeStep (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeStep"


-- | <p>Provides information about the bootstrap actions associated with a cluster.</p>
listBootstrapActions :: forall eff. EMR.Service -> EMRTypes.ListBootstrapActionsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.ListBootstrapActionsOutput
listBootstrapActions (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listBootstrapActions"


-- | <p>Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.</p>
listClusters :: forall eff. EMR.Service -> EMRTypes.ListClustersInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.ListClustersOutput
listClusters (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listClusters"


-- | <p>Lists all available details about the instance fleets in a cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
listInstanceFleets :: forall eff. EMR.Service -> EMRTypes.ListInstanceFleetsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.ListInstanceFleetsOutput
listInstanceFleets (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInstanceFleets"


-- | <p>Provides all available details about the instance groups in a cluster.</p>
listInstanceGroups :: forall eff. EMR.Service -> EMRTypes.ListInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.ListInstanceGroupsOutput
listInstanceGroups (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInstanceGroups"


-- | <p>Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.</p>
listInstances :: forall eff. EMR.Service -> EMRTypes.ListInstancesInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.ListInstancesOutput
listInstances (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listInstances"


-- | <p>Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.</p>
listSecurityConfigurations :: forall eff. EMR.Service -> EMRTypes.ListSecurityConfigurationsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.ListSecurityConfigurationsOutput
listSecurityConfigurations (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listSecurityConfigurations"


-- | <p>Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.</p>
listSteps :: forall eff. EMR.Service -> EMRTypes.ListStepsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.ListStepsOutput
listSteps (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listSteps"


-- | <p>Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
modifyInstanceFleet :: forall eff. EMR.Service -> EMRTypes.ModifyInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) Unit
modifyInstanceFleet (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyInstanceFleet"


-- | <p>ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.</p>
modifyInstanceGroups :: forall eff. EMR.Service -> EMRTypes.ModifyInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) Unit
modifyInstanceGroups (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "modifyInstanceGroups"


-- | <p>Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.</p>
putAutoScalingPolicy :: forall eff. EMR.Service -> EMRTypes.PutAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.PutAutoScalingPolicyOutput
putAutoScalingPolicy (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "putAutoScalingPolicy"


-- | <p>Removes an automatic scaling policy from a specified instance group within an EMR cluster.</p>
removeAutoScalingPolicy :: forall eff. EMR.Service -> EMRTypes.RemoveAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.RemoveAutoScalingPolicyOutput
removeAutoScalingPolicy (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeAutoScalingPolicy"


-- | <p>Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p> <p>The following example removes the stack tag with value Prod from a cluster:</p>
removeTags :: forall eff. EMR.Service -> EMRTypes.RemoveTagsInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.RemoveTagsOutput
removeTags (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeTags"


-- | <p>RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the <a>JobFlowInstancesConfig</a> <code>KeepJobFlowAliveWhenNoSteps</code> parameter is set to <code>TRUE</code>, the cluster transitions to the WAITING state rather than shutting down after the steps have completed. </p> <p>For additional protection, you can set the <a>JobFlowInstancesConfig</a> <code>TerminationProtected</code> parameter to <code>TRUE</code> to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error.</p> <p>A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>For long running clusters, we recommend that you periodically store your results.</p> <note> <p>The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both.</p> </note>
runJobFlow :: forall eff. EMR.Service -> EMRTypes.RunJobFlowInput -> Aff (exception :: EXCEPTION | eff) EMRTypes.RunJobFlowOutput
runJobFlow (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "runJobFlow"


-- | <p>SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling <code>SetTerminationProtection</code> on a cluster is similar to calling the Amazon EC2 <code>DisableAPITermination</code> API on all EC2 instances in a cluster.</p> <p> <code>SetTerminationProtection</code> is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.</p> <p> To terminate a cluster that has been locked by setting <code>SetTerminationProtection</code> to <code>true</code>, you must first unlock the job flow by a subsequent call to <code>SetTerminationProtection</code> in which you set the value to <code>false</code>. </p> <p> For more information, see<a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html">Managing Cluster Termination</a> in the <i>Amazon EMR Management Guide</i>. </p>
setTerminationProtection :: forall eff. EMR.Service -> EMRTypes.SetTerminationProtectionInput -> Aff (exception :: EXCEPTION | eff) Unit
setTerminationProtection (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setTerminationProtection"


-- | <p>Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the <code>VisibleToAllUsers</code> parameter of <a>RunJobFlow</a>. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.</p>
setVisibleToAllUsers :: forall eff. EMR.Service -> EMRTypes.SetVisibleToAllUsersInput -> Aff (exception :: EXCEPTION | eff) Unit
setVisibleToAllUsers (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "setVisibleToAllUsers"


-- | <p>TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.</p> <p>The maximum number of clusters allowed is 10. The call to <code>TerminateJobFlows</code> is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.</p>
terminateJobFlows :: forall eff. EMR.Service -> EMRTypes.TerminateJobFlowsInput -> Aff (exception :: EXCEPTION | eff) Unit
terminateJobFlows (EMR.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "terminateJobFlows"
