## Module AWS.EMR

<p>Amazon EMR is a web service that makes it easy to process large amounts of data efficiently. Amazon EMR uses Hadoop processing combined with several AWS products to do tasks such as web indexing, data mining, log file analysis, machine learning, scientific simulation, and data warehousing.</p>

#### `addInstanceFleet`

``` purescript
addInstanceFleet :: forall eff. AddInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) AddInstanceFleetOutput
```

<p>Adds an instance fleet to a running cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x.</p> </note>

#### `addInstanceGroups`

``` purescript
addInstanceGroups :: forall eff. AddInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) AddInstanceGroupsOutput
```

<p>Adds one or more instance groups to a running cluster.</p>

#### `addJobFlowSteps`

``` purescript
addJobFlowSteps :: forall eff. AddJobFlowStepsInput -> Aff (exception :: EXCEPTION | eff) AddJobFlowStepsOutput
```

<p>AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step.</p> <p>Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully.</p> <p>You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.</p>

#### `addTags`

``` purescript
addTags :: forall eff. AddTagsInput -> Aff (exception :: EXCEPTION | eff) AddTagsOutput
```

<p>Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>

#### `cancelSteps`

``` purescript
cancelSteps :: forall eff. CancelStepsInput -> Aff (exception :: EXCEPTION | eff) CancelStepsOutput
```

<p>Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a <code>PENDING</code> state.</p>

#### `createSecurityConfiguration`

``` purescript
createSecurityConfiguration :: forall eff. CreateSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) CreateSecurityConfigurationOutput
```

<p>Creates a security configuration, which is stored in the service and can be specified when a cluster is created.</p>

#### `deleteSecurityConfiguration`

``` purescript
deleteSecurityConfiguration :: forall eff. DeleteSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) DeleteSecurityConfigurationOutput
```

<p>Deletes a security configuration.</p>

#### `describeCluster`

``` purescript
describeCluster :: forall eff. DescribeClusterInput -> Aff (exception :: EXCEPTION | eff) DescribeClusterOutput
```

<p>Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. For information about the cluster steps, see <a>ListSteps</a>.</p>

#### `describeJobFlows`

``` purescript
describeJobFlows :: forall eff. DescribeJobFlowsInput -> Aff (exception :: EXCEPTION | eff) DescribeJobFlowsOutput
```

<p>This API is deprecated and will eventually be removed. We recommend you use <a>ListClusters</a>, <a>DescribeCluster</a>, <a>ListSteps</a>, <a>ListInstanceGroups</a> and <a>ListBootstrapActions</a> instead.</p> <p>DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time.</p> <p>Regardless of supplied parameters, only job flows created within the last two months are returned.</p> <p>If no parameters are supplied, then job flows matching either of the following criteria are returned:</p> <ul> <li> <p>Job flows created and completed in the last two weeks</p> </li> <li> <p> Job flows created within the last two months that are in one of the following states: <code>RUNNING</code>, <code>WAITING</code>, <code>SHUTTING_DOWN</code>, <code>STARTING</code> </p> </li> </ul> <p>Amazon EMR can return a maximum of 512 job flow descriptions.</p>

#### `describeSecurityConfiguration`

``` purescript
describeSecurityConfiguration :: forall eff. DescribeSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) DescribeSecurityConfigurationOutput
```

<p>Provides the details of a security configuration by returning the configuration JSON.</p>

#### `describeStep`

``` purescript
describeStep :: forall eff. DescribeStepInput -> Aff (exception :: EXCEPTION | eff) DescribeStepOutput
```

<p>Provides more detail about the cluster step.</p>

#### `listBootstrapActions`

``` purescript
listBootstrapActions :: forall eff. ListBootstrapActionsInput -> Aff (exception :: EXCEPTION | eff) ListBootstrapActionsOutput
```

<p>Provides information about the bootstrap actions associated with a cluster.</p>

#### `listClusters`

``` purescript
listClusters :: forall eff. ListClustersInput -> Aff (exception :: EXCEPTION | eff) ListClustersOutput
```

<p>Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.</p>

#### `listInstanceFleets`

``` purescript
listInstanceFleets :: forall eff. ListInstanceFleetsInput -> Aff (exception :: EXCEPTION | eff) ListInstanceFleetsOutput
```

<p>Lists all available details about the instance fleets in a cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

#### `listInstanceGroups`

``` purescript
listInstanceGroups :: forall eff. ListInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) ListInstanceGroupsOutput
```

<p>Provides all available details about the instance groups in a cluster.</p>

#### `listInstances`

``` purescript
listInstances :: forall eff. ListInstancesInput -> Aff (exception :: EXCEPTION | eff) ListInstancesOutput
```

<p>Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.</p>

#### `listSecurityConfigurations`

``` purescript
listSecurityConfigurations :: forall eff. ListSecurityConfigurationsInput -> Aff (exception :: EXCEPTION | eff) ListSecurityConfigurationsOutput
```

<p>Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.</p>

#### `listSteps`

``` purescript
listSteps :: forall eff. ListStepsInput -> Aff (exception :: EXCEPTION | eff) ListStepsOutput
```

<p>Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.</p>

#### `modifyInstanceFleet`

``` purescript
modifyInstanceFleet :: forall eff. ModifyInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

#### `modifyInstanceGroups`

``` purescript
modifyInstanceGroups :: forall eff. ModifyInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.</p>

#### `putAutoScalingPolicy`

``` purescript
putAutoScalingPolicy :: forall eff. PutAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) PutAutoScalingPolicyOutput
```

<p>Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.</p>

#### `removeAutoScalingPolicy`

``` purescript
removeAutoScalingPolicy :: forall eff. RemoveAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) RemoveAutoScalingPolicyOutput
```

<p>Removes an automatic scaling policy from a specified instance group within an EMR cluster.</p>

#### `removeTags`

``` purescript
removeTags :: forall eff. RemoveTagsInput -> Aff (exception :: EXCEPTION | eff) RemoveTagsOutput
```

<p>Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p> <p>The following example removes the stack tag with value Prod from a cluster:</p>

#### `runJobFlow`

``` purescript
runJobFlow :: forall eff. RunJobFlowInput -> Aff (exception :: EXCEPTION | eff) RunJobFlowOutput
```

<p>RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the <a>JobFlowInstancesConfig</a> <code>KeepJobFlowAliveWhenNoSteps</code> parameter is set to <code>TRUE</code>, the cluster transitions to the WAITING state rather than shutting down after the steps have completed. </p> <p>For additional protection, you can set the <a>JobFlowInstancesConfig</a> <code>TerminationProtected</code> parameter to <code>TRUE</code> to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error.</p> <p>A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>For long running clusters, we recommend that you periodically store your results.</p> <note> <p>The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both.</p> </note>

#### `setTerminationProtection`

``` purescript
setTerminationProtection :: forall eff. SetTerminationProtectionInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling <code>SetTerminationProtection</code> on a cluster is similar to calling the Amazon EC2 <code>DisableAPITermination</code> API on all EC2 instances in a cluster.</p> <p> <code>SetTerminationProtection</code> is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.</p> <p> To terminate a cluster that has been locked by setting <code>SetTerminationProtection</code> to <code>true</code>, you must first unlock the job flow by a subsequent call to <code>SetTerminationProtection</code> in which you set the value to <code>false</code>. </p> <p> For more information, see<a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html">Managing Cluster Termination</a> in the <i>Amazon EMR Management Guide</i>. </p>

#### `setVisibleToAllUsers`

``` purescript
setVisibleToAllUsers :: forall eff. SetVisibleToAllUsersInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the <code>VisibleToAllUsers</code> parameter of <a>RunJobFlow</a>. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.</p>

#### `terminateJobFlows`

``` purescript
terminateJobFlows :: forall eff. TerminateJobFlowsInput -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.</p> <p>The maximum number of clusters allowed is 10. The call to <code>TerminateJobFlows</code> is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.</p>

#### `ActionOnFailure`

``` purescript
newtype ActionOnFailure
  = ActionOnFailure String
```

##### Instances
``` purescript
Newtype ActionOnFailure _
Generic ActionOnFailure _
Show ActionOnFailure
Decode ActionOnFailure
Encode ActionOnFailure
```

#### `AddInstanceFleetInput`

``` purescript
newtype AddInstanceFleetInput
  = AddInstanceFleetInput { "ClusterId" :: XmlStringMaxLen256, "InstanceFleet" :: InstanceFleetConfig }
```

##### Instances
``` purescript
Newtype AddInstanceFleetInput _
Generic AddInstanceFleetInput _
Show AddInstanceFleetInput
Decode AddInstanceFleetInput
Encode AddInstanceFleetInput
```

#### `newAddInstanceFleetInput`

``` purescript
newAddInstanceFleetInput :: XmlStringMaxLen256 -> InstanceFleetConfig -> AddInstanceFleetInput
```

Constructs AddInstanceFleetInput from required parameters

#### `newAddInstanceFleetInput'`

``` purescript
newAddInstanceFleetInput' :: XmlStringMaxLen256 -> InstanceFleetConfig -> ({ "ClusterId" :: XmlStringMaxLen256, "InstanceFleet" :: InstanceFleetConfig } -> { "ClusterId" :: XmlStringMaxLen256, "InstanceFleet" :: InstanceFleetConfig }) -> AddInstanceFleetInput
```

Constructs AddInstanceFleetInput's fields from required parameters

#### `AddInstanceFleetOutput`

``` purescript
newtype AddInstanceFleetOutput
  = AddInstanceFleetOutput { "ClusterId" :: NullOrUndefined (XmlStringMaxLen256), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId) }
```

##### Instances
``` purescript
Newtype AddInstanceFleetOutput _
Generic AddInstanceFleetOutput _
Show AddInstanceFleetOutput
Decode AddInstanceFleetOutput
Encode AddInstanceFleetOutput
```

#### `newAddInstanceFleetOutput`

``` purescript
newAddInstanceFleetOutput :: AddInstanceFleetOutput
```

Constructs AddInstanceFleetOutput from required parameters

#### `newAddInstanceFleetOutput'`

``` purescript
newAddInstanceFleetOutput' :: ({ "ClusterId" :: NullOrUndefined (XmlStringMaxLen256), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId) } -> { "ClusterId" :: NullOrUndefined (XmlStringMaxLen256), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId) }) -> AddInstanceFleetOutput
```

Constructs AddInstanceFleetOutput's fields from required parameters

#### `AddInstanceGroupsInput`

``` purescript
newtype AddInstanceGroupsInput
  = AddInstanceGroupsInput { "InstanceGroups" :: InstanceGroupConfigList, "JobFlowId" :: XmlStringMaxLen256 }
```

<p>Input to an AddInstanceGroups call.</p>

##### Instances
``` purescript
Newtype AddInstanceGroupsInput _
Generic AddInstanceGroupsInput _
Show AddInstanceGroupsInput
Decode AddInstanceGroupsInput
Encode AddInstanceGroupsInput
```

#### `newAddInstanceGroupsInput`

``` purescript
newAddInstanceGroupsInput :: InstanceGroupConfigList -> XmlStringMaxLen256 -> AddInstanceGroupsInput
```

Constructs AddInstanceGroupsInput from required parameters

#### `newAddInstanceGroupsInput'`

``` purescript
newAddInstanceGroupsInput' :: InstanceGroupConfigList -> XmlStringMaxLen256 -> ({ "InstanceGroups" :: InstanceGroupConfigList, "JobFlowId" :: XmlStringMaxLen256 } -> { "InstanceGroups" :: InstanceGroupConfigList, "JobFlowId" :: XmlStringMaxLen256 }) -> AddInstanceGroupsInput
```

Constructs AddInstanceGroupsInput's fields from required parameters

#### `AddInstanceGroupsOutput`

``` purescript
newtype AddInstanceGroupsOutput
  = AddInstanceGroupsOutput { "JobFlowId" :: NullOrUndefined (XmlStringMaxLen256), "InstanceGroupIds" :: NullOrUndefined (InstanceGroupIdsList) }
```

<p>Output from an AddInstanceGroups call.</p>

##### Instances
``` purescript
Newtype AddInstanceGroupsOutput _
Generic AddInstanceGroupsOutput _
Show AddInstanceGroupsOutput
Decode AddInstanceGroupsOutput
Encode AddInstanceGroupsOutput
```

#### `newAddInstanceGroupsOutput`

``` purescript
newAddInstanceGroupsOutput :: AddInstanceGroupsOutput
```

Constructs AddInstanceGroupsOutput from required parameters

#### `newAddInstanceGroupsOutput'`

``` purescript
newAddInstanceGroupsOutput' :: ({ "JobFlowId" :: NullOrUndefined (XmlStringMaxLen256), "InstanceGroupIds" :: NullOrUndefined (InstanceGroupIdsList) } -> { "JobFlowId" :: NullOrUndefined (XmlStringMaxLen256), "InstanceGroupIds" :: NullOrUndefined (InstanceGroupIdsList) }) -> AddInstanceGroupsOutput
```

Constructs AddInstanceGroupsOutput's fields from required parameters

#### `AddJobFlowStepsInput`

``` purescript
newtype AddJobFlowStepsInput
  = AddJobFlowStepsInput { "JobFlowId" :: XmlStringMaxLen256, "Steps" :: StepConfigList }
```

<p> The input argument to the <a>AddJobFlowSteps</a> operation. </p>

##### Instances
``` purescript
Newtype AddJobFlowStepsInput _
Generic AddJobFlowStepsInput _
Show AddJobFlowStepsInput
Decode AddJobFlowStepsInput
Encode AddJobFlowStepsInput
```

#### `newAddJobFlowStepsInput`

``` purescript
newAddJobFlowStepsInput :: XmlStringMaxLen256 -> StepConfigList -> AddJobFlowStepsInput
```

Constructs AddJobFlowStepsInput from required parameters

#### `newAddJobFlowStepsInput'`

``` purescript
newAddJobFlowStepsInput' :: XmlStringMaxLen256 -> StepConfigList -> ({ "JobFlowId" :: XmlStringMaxLen256, "Steps" :: StepConfigList } -> { "JobFlowId" :: XmlStringMaxLen256, "Steps" :: StepConfigList }) -> AddJobFlowStepsInput
```

Constructs AddJobFlowStepsInput's fields from required parameters

#### `AddJobFlowStepsOutput`

``` purescript
newtype AddJobFlowStepsOutput
  = AddJobFlowStepsOutput { "StepIds" :: NullOrUndefined (StepIdsList) }
```

<p> The output for the <a>AddJobFlowSteps</a> operation. </p>

##### Instances
``` purescript
Newtype AddJobFlowStepsOutput _
Generic AddJobFlowStepsOutput _
Show AddJobFlowStepsOutput
Decode AddJobFlowStepsOutput
Encode AddJobFlowStepsOutput
```

#### `newAddJobFlowStepsOutput`

``` purescript
newAddJobFlowStepsOutput :: AddJobFlowStepsOutput
```

Constructs AddJobFlowStepsOutput from required parameters

#### `newAddJobFlowStepsOutput'`

``` purescript
newAddJobFlowStepsOutput' :: ({ "StepIds" :: NullOrUndefined (StepIdsList) } -> { "StepIds" :: NullOrUndefined (StepIdsList) }) -> AddJobFlowStepsOutput
```

Constructs AddJobFlowStepsOutput's fields from required parameters

#### `AddTagsInput`

``` purescript
newtype AddTagsInput
  = AddTagsInput { "ResourceId" :: ResourceId, "Tags" :: TagList }
```

<p>This input identifies a cluster and a list of tags to attach.</p>

##### Instances
``` purescript
Newtype AddTagsInput _
Generic AddTagsInput _
Show AddTagsInput
Decode AddTagsInput
Encode AddTagsInput
```

#### `newAddTagsInput`

``` purescript
newAddTagsInput :: ResourceId -> TagList -> AddTagsInput
```

Constructs AddTagsInput from required parameters

#### `newAddTagsInput'`

``` purescript
newAddTagsInput' :: ResourceId -> TagList -> ({ "ResourceId" :: ResourceId, "Tags" :: TagList } -> { "ResourceId" :: ResourceId, "Tags" :: TagList }) -> AddTagsInput
```

Constructs AddTagsInput's fields from required parameters

#### `AddTagsOutput`

``` purescript
newtype AddTagsOutput
  = AddTagsOutput NoArguments
```

<p>This output indicates the result of adding tags to a resource.</p>

##### Instances
``` purescript
Newtype AddTagsOutput _
Generic AddTagsOutput _
Show AddTagsOutput
Decode AddTagsOutput
Encode AddTagsOutput
```

#### `AdjustmentType`

``` purescript
newtype AdjustmentType
  = AdjustmentType String
```

##### Instances
``` purescript
Newtype AdjustmentType _
Generic AdjustmentType _
Show AdjustmentType
Decode AdjustmentType
Encode AdjustmentType
```

#### `Application`

``` purescript
newtype Application
  = Application { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList), "AdditionalInfo" :: NullOrUndefined (StringMap) }
```

<p>An application is any Amazon or third-party software that you can add to the cluster. This structure contains a list of strings that indicates the software to use with the cluster and accepts a user argument list. Amazon EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action argument. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-mapr.html">Using the MapR Distribution for Hadoop</a>. Currently supported values are:</p> <ul> <li> <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p> </li> <li> <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p> </li> <li> <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" - launch the cluster using MapR M3 or M5 Edition, respectively.</p> </li> </ul> <note> <p>In Amazon EMR releases 4.x and later, the only accepted parameter is the application name. To pass arguments to applications, you supply a configuration for each application.</p> </note>

##### Instances
``` purescript
Newtype Application _
Generic Application _
Show Application
Decode Application
Encode Application
```

#### `newApplication`

``` purescript
newApplication :: Application
```

Constructs Application from required parameters

#### `newApplication'`

``` purescript
newApplication' :: ({ "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList), "AdditionalInfo" :: NullOrUndefined (StringMap) } -> { "Name" :: NullOrUndefined (String), "Version" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList), "AdditionalInfo" :: NullOrUndefined (StringMap) }) -> Application
```

Constructs Application's fields from required parameters

#### `ApplicationList`

``` purescript
newtype ApplicationList
  = ApplicationList (Array Application)
```

##### Instances
``` purescript
Newtype ApplicationList _
Generic ApplicationList _
Show ApplicationList
Decode ApplicationList
Encode ApplicationList
```

#### `AutoScalingPolicy`

``` purescript
newtype AutoScalingPolicy
  = AutoScalingPolicy { "Constraints" :: ScalingConstraints, "Rules" :: ScalingRuleList }
```

<p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. An automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>

##### Instances
``` purescript
Newtype AutoScalingPolicy _
Generic AutoScalingPolicy _
Show AutoScalingPolicy
Decode AutoScalingPolicy
Encode AutoScalingPolicy
```

#### `newAutoScalingPolicy`

``` purescript
newAutoScalingPolicy :: ScalingConstraints -> ScalingRuleList -> AutoScalingPolicy
```

Constructs AutoScalingPolicy from required parameters

#### `newAutoScalingPolicy'`

``` purescript
newAutoScalingPolicy' :: ScalingConstraints -> ScalingRuleList -> ({ "Constraints" :: ScalingConstraints, "Rules" :: ScalingRuleList } -> { "Constraints" :: ScalingConstraints, "Rules" :: ScalingRuleList }) -> AutoScalingPolicy
```

Constructs AutoScalingPolicy's fields from required parameters

#### `AutoScalingPolicyDescription`

``` purescript
newtype AutoScalingPolicyDescription
  = AutoScalingPolicyDescription { "Status" :: NullOrUndefined (AutoScalingPolicyStatus), "Constraints" :: NullOrUndefined (ScalingConstraints), "Rules" :: NullOrUndefined (ScalingRuleList) }
```

<p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>

##### Instances
``` purescript
Newtype AutoScalingPolicyDescription _
Generic AutoScalingPolicyDescription _
Show AutoScalingPolicyDescription
Decode AutoScalingPolicyDescription
Encode AutoScalingPolicyDescription
```

#### `newAutoScalingPolicyDescription`

``` purescript
newAutoScalingPolicyDescription :: AutoScalingPolicyDescription
```

Constructs AutoScalingPolicyDescription from required parameters

#### `newAutoScalingPolicyDescription'`

``` purescript
newAutoScalingPolicyDescription' :: ({ "Status" :: NullOrUndefined (AutoScalingPolicyStatus), "Constraints" :: NullOrUndefined (ScalingConstraints), "Rules" :: NullOrUndefined (ScalingRuleList) } -> { "Status" :: NullOrUndefined (AutoScalingPolicyStatus), "Constraints" :: NullOrUndefined (ScalingConstraints), "Rules" :: NullOrUndefined (ScalingRuleList) }) -> AutoScalingPolicyDescription
```

Constructs AutoScalingPolicyDescription's fields from required parameters

#### `AutoScalingPolicyState`

``` purescript
newtype AutoScalingPolicyState
  = AutoScalingPolicyState String
```

##### Instances
``` purescript
Newtype AutoScalingPolicyState _
Generic AutoScalingPolicyState _
Show AutoScalingPolicyState
Decode AutoScalingPolicyState
Encode AutoScalingPolicyState
```

#### `AutoScalingPolicyStateChangeReason`

``` purescript
newtype AutoScalingPolicyStateChangeReason
  = AutoScalingPolicyStateChangeReason { "Code" :: NullOrUndefined (AutoScalingPolicyStateChangeReasonCode), "Message" :: NullOrUndefined (String) }
```

<p>The reason for an <a>AutoScalingPolicyStatus</a> change.</p>

##### Instances
``` purescript
Newtype AutoScalingPolicyStateChangeReason _
Generic AutoScalingPolicyStateChangeReason _
Show AutoScalingPolicyStateChangeReason
Decode AutoScalingPolicyStateChangeReason
Encode AutoScalingPolicyStateChangeReason
```

#### `newAutoScalingPolicyStateChangeReason`

``` purescript
newAutoScalingPolicyStateChangeReason :: AutoScalingPolicyStateChangeReason
```

Constructs AutoScalingPolicyStateChangeReason from required parameters

#### `newAutoScalingPolicyStateChangeReason'`

``` purescript
newAutoScalingPolicyStateChangeReason' :: ({ "Code" :: NullOrUndefined (AutoScalingPolicyStateChangeReasonCode), "Message" :: NullOrUndefined (String) } -> { "Code" :: NullOrUndefined (AutoScalingPolicyStateChangeReasonCode), "Message" :: NullOrUndefined (String) }) -> AutoScalingPolicyStateChangeReason
```

Constructs AutoScalingPolicyStateChangeReason's fields from required parameters

#### `AutoScalingPolicyStateChangeReasonCode`

``` purescript
newtype AutoScalingPolicyStateChangeReasonCode
  = AutoScalingPolicyStateChangeReasonCode String
```

##### Instances
``` purescript
Newtype AutoScalingPolicyStateChangeReasonCode _
Generic AutoScalingPolicyStateChangeReasonCode _
Show AutoScalingPolicyStateChangeReasonCode
Decode AutoScalingPolicyStateChangeReasonCode
Encode AutoScalingPolicyStateChangeReasonCode
```

#### `AutoScalingPolicyStatus`

``` purescript
newtype AutoScalingPolicyStatus
  = AutoScalingPolicyStatus { "State" :: NullOrUndefined (AutoScalingPolicyState), "StateChangeReason" :: NullOrUndefined (AutoScalingPolicyStateChangeReason) }
```

<p>The status of an automatic scaling policy. </p>

##### Instances
``` purescript
Newtype AutoScalingPolicyStatus _
Generic AutoScalingPolicyStatus _
Show AutoScalingPolicyStatus
Decode AutoScalingPolicyStatus
Encode AutoScalingPolicyStatus
```

#### `newAutoScalingPolicyStatus`

``` purescript
newAutoScalingPolicyStatus :: AutoScalingPolicyStatus
```

Constructs AutoScalingPolicyStatus from required parameters

#### `newAutoScalingPolicyStatus'`

``` purescript
newAutoScalingPolicyStatus' :: ({ "State" :: NullOrUndefined (AutoScalingPolicyState), "StateChangeReason" :: NullOrUndefined (AutoScalingPolicyStateChangeReason) } -> { "State" :: NullOrUndefined (AutoScalingPolicyState), "StateChangeReason" :: NullOrUndefined (AutoScalingPolicyStateChangeReason) }) -> AutoScalingPolicyStatus
```

Constructs AutoScalingPolicyStatus's fields from required parameters

#### `BooleanObject`

``` purescript
newtype BooleanObject
  = BooleanObject Boolean
```

##### Instances
``` purescript
Newtype BooleanObject _
Generic BooleanObject _
Show BooleanObject
Decode BooleanObject
Encode BooleanObject
```

#### `BootstrapActionConfig`

``` purescript
newtype BootstrapActionConfig
  = BootstrapActionConfig { "Name" :: XmlStringMaxLen256, "ScriptBootstrapAction" :: ScriptBootstrapActionConfig }
```

<p>Configuration of a bootstrap action.</p>

##### Instances
``` purescript
Newtype BootstrapActionConfig _
Generic BootstrapActionConfig _
Show BootstrapActionConfig
Decode BootstrapActionConfig
Encode BootstrapActionConfig
```

#### `newBootstrapActionConfig`

``` purescript
newBootstrapActionConfig :: XmlStringMaxLen256 -> ScriptBootstrapActionConfig -> BootstrapActionConfig
```

Constructs BootstrapActionConfig from required parameters

#### `newBootstrapActionConfig'`

``` purescript
newBootstrapActionConfig' :: XmlStringMaxLen256 -> ScriptBootstrapActionConfig -> ({ "Name" :: XmlStringMaxLen256, "ScriptBootstrapAction" :: ScriptBootstrapActionConfig } -> { "Name" :: XmlStringMaxLen256, "ScriptBootstrapAction" :: ScriptBootstrapActionConfig }) -> BootstrapActionConfig
```

Constructs BootstrapActionConfig's fields from required parameters

#### `BootstrapActionConfigList`

``` purescript
newtype BootstrapActionConfigList
  = BootstrapActionConfigList (Array BootstrapActionConfig)
```

##### Instances
``` purescript
Newtype BootstrapActionConfigList _
Generic BootstrapActionConfigList _
Show BootstrapActionConfigList
Decode BootstrapActionConfigList
Encode BootstrapActionConfigList
```

#### `BootstrapActionDetail`

``` purescript
newtype BootstrapActionDetail
  = BootstrapActionDetail { "BootstrapActionConfig" :: NullOrUndefined (BootstrapActionConfig) }
```

<p>Reports the configuration of a bootstrap action in a cluster (job flow).</p>

##### Instances
``` purescript
Newtype BootstrapActionDetail _
Generic BootstrapActionDetail _
Show BootstrapActionDetail
Decode BootstrapActionDetail
Encode BootstrapActionDetail
```

#### `newBootstrapActionDetail`

``` purescript
newBootstrapActionDetail :: BootstrapActionDetail
```

Constructs BootstrapActionDetail from required parameters

#### `newBootstrapActionDetail'`

``` purescript
newBootstrapActionDetail' :: ({ "BootstrapActionConfig" :: NullOrUndefined (BootstrapActionConfig) } -> { "BootstrapActionConfig" :: NullOrUndefined (BootstrapActionConfig) }) -> BootstrapActionDetail
```

Constructs BootstrapActionDetail's fields from required parameters

#### `BootstrapActionDetailList`

``` purescript
newtype BootstrapActionDetailList
  = BootstrapActionDetailList (Array BootstrapActionDetail)
```

##### Instances
``` purescript
Newtype BootstrapActionDetailList _
Generic BootstrapActionDetailList _
Show BootstrapActionDetailList
Decode BootstrapActionDetailList
Encode BootstrapActionDetailList
```

#### `CancelStepsInfo`

``` purescript
newtype CancelStepsInfo
  = CancelStepsInfo { "StepId" :: NullOrUndefined (StepId), "Status" :: NullOrUndefined (CancelStepsRequestStatus), "Reason" :: NullOrUndefined (String) }
```

<p>Specification of the status of a CancelSteps request. Available only in Amazon EMR version 4.8.0 and later, excluding version 5.0.0.</p>

##### Instances
``` purescript
Newtype CancelStepsInfo _
Generic CancelStepsInfo _
Show CancelStepsInfo
Decode CancelStepsInfo
Encode CancelStepsInfo
```

#### `newCancelStepsInfo`

``` purescript
newCancelStepsInfo :: CancelStepsInfo
```

Constructs CancelStepsInfo from required parameters

#### `newCancelStepsInfo'`

``` purescript
newCancelStepsInfo' :: ({ "StepId" :: NullOrUndefined (StepId), "Status" :: NullOrUndefined (CancelStepsRequestStatus), "Reason" :: NullOrUndefined (String) } -> { "StepId" :: NullOrUndefined (StepId), "Status" :: NullOrUndefined (CancelStepsRequestStatus), "Reason" :: NullOrUndefined (String) }) -> CancelStepsInfo
```

Constructs CancelStepsInfo's fields from required parameters

#### `CancelStepsInfoList`

``` purescript
newtype CancelStepsInfoList
  = CancelStepsInfoList (Array CancelStepsInfo)
```

##### Instances
``` purescript
Newtype CancelStepsInfoList _
Generic CancelStepsInfoList _
Show CancelStepsInfoList
Decode CancelStepsInfoList
Encode CancelStepsInfoList
```

#### `CancelStepsInput`

``` purescript
newtype CancelStepsInput
  = CancelStepsInput { "ClusterId" :: NullOrUndefined (XmlStringMaxLen256), "StepIds" :: NullOrUndefined (StepIdsList) }
```

<p>The input argument to the <a>CancelSteps</a> operation.</p>

##### Instances
``` purescript
Newtype CancelStepsInput _
Generic CancelStepsInput _
Show CancelStepsInput
Decode CancelStepsInput
Encode CancelStepsInput
```

#### `newCancelStepsInput`

``` purescript
newCancelStepsInput :: CancelStepsInput
```

Constructs CancelStepsInput from required parameters

#### `newCancelStepsInput'`

``` purescript
newCancelStepsInput' :: ({ "ClusterId" :: NullOrUndefined (XmlStringMaxLen256), "StepIds" :: NullOrUndefined (StepIdsList) } -> { "ClusterId" :: NullOrUndefined (XmlStringMaxLen256), "StepIds" :: NullOrUndefined (StepIdsList) }) -> CancelStepsInput
```

Constructs CancelStepsInput's fields from required parameters

#### `CancelStepsOutput`

``` purescript
newtype CancelStepsOutput
  = CancelStepsOutput { "CancelStepsInfoList" :: NullOrUndefined (CancelStepsInfoList) }
```

<p> The output for the <a>CancelSteps</a> operation. </p>

##### Instances
``` purescript
Newtype CancelStepsOutput _
Generic CancelStepsOutput _
Show CancelStepsOutput
Decode CancelStepsOutput
Encode CancelStepsOutput
```

#### `newCancelStepsOutput`

``` purescript
newCancelStepsOutput :: CancelStepsOutput
```

Constructs CancelStepsOutput from required parameters

#### `newCancelStepsOutput'`

``` purescript
newCancelStepsOutput' :: ({ "CancelStepsInfoList" :: NullOrUndefined (CancelStepsInfoList) } -> { "CancelStepsInfoList" :: NullOrUndefined (CancelStepsInfoList) }) -> CancelStepsOutput
```

Constructs CancelStepsOutput's fields from required parameters

#### `CancelStepsRequestStatus`

``` purescript
newtype CancelStepsRequestStatus
  = CancelStepsRequestStatus String
```

##### Instances
``` purescript
Newtype CancelStepsRequestStatus _
Generic CancelStepsRequestStatus _
Show CancelStepsRequestStatus
Decode CancelStepsRequestStatus
Encode CancelStepsRequestStatus
```

#### `CloudWatchAlarmDefinition`

``` purescript
newtype CloudWatchAlarmDefinition
  = CloudWatchAlarmDefinition { "ComparisonOperator" :: ComparisonOperator, "EvaluationPeriods" :: NullOrUndefined (Int), "MetricName" :: String, "Namespace" :: NullOrUndefined (String), "Period" :: Int, "Statistic" :: NullOrUndefined (Statistic), "Threshold" :: NonNegativeDouble, "Unit" :: NullOrUndefined (Unit''), "Dimensions" :: NullOrUndefined (MetricDimensionList) }
```

<p>The definition of a CloudWatch metric alarm, which determines when an automatic scaling activity is triggered. When the defined alarm conditions are satisfied, scaling activity begins.</p>

##### Instances
``` purescript
Newtype CloudWatchAlarmDefinition _
Generic CloudWatchAlarmDefinition _
Show CloudWatchAlarmDefinition
Decode CloudWatchAlarmDefinition
Encode CloudWatchAlarmDefinition
```

#### `newCloudWatchAlarmDefinition`

``` purescript
newCloudWatchAlarmDefinition :: ComparisonOperator -> String -> Int -> NonNegativeDouble -> CloudWatchAlarmDefinition
```

Constructs CloudWatchAlarmDefinition from required parameters

#### `newCloudWatchAlarmDefinition'`

``` purescript
newCloudWatchAlarmDefinition' :: ComparisonOperator -> String -> Int -> NonNegativeDouble -> ({ "ComparisonOperator" :: ComparisonOperator, "EvaluationPeriods" :: NullOrUndefined (Int), "MetricName" :: String, "Namespace" :: NullOrUndefined (String), "Period" :: Int, "Statistic" :: NullOrUndefined (Statistic), "Threshold" :: NonNegativeDouble, "Unit" :: NullOrUndefined (Unit''), "Dimensions" :: NullOrUndefined (MetricDimensionList) } -> { "ComparisonOperator" :: ComparisonOperator, "EvaluationPeriods" :: NullOrUndefined (Int), "MetricName" :: String, "Namespace" :: NullOrUndefined (String), "Period" :: Int, "Statistic" :: NullOrUndefined (Statistic), "Threshold" :: NonNegativeDouble, "Unit" :: NullOrUndefined (Unit''), "Dimensions" :: NullOrUndefined (MetricDimensionList) }) -> CloudWatchAlarmDefinition
```

Constructs CloudWatchAlarmDefinition's fields from required parameters

#### `Cluster`

``` purescript
newtype Cluster
  = Cluster { "Id" :: NullOrUndefined (ClusterId), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ClusterStatus), "Ec2InstanceAttributes" :: NullOrUndefined (Ec2InstanceAttributes), "InstanceCollectionType" :: NullOrUndefined (InstanceCollectionType), "LogUri" :: NullOrUndefined (String), "RequestedAmiVersion" :: NullOrUndefined (String), "RunningAmiVersion" :: NullOrUndefined (String), "ReleaseLabel" :: NullOrUndefined (String), "AutoTerminate" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "Applications" :: NullOrUndefined (ApplicationList), "Tags" :: NullOrUndefined (TagList), "ServiceRole" :: NullOrUndefined (String), "NormalizedInstanceHours" :: NullOrUndefined (Int), "MasterPublicDnsName" :: NullOrUndefined (String), "Configurations" :: NullOrUndefined (ConfigurationList), "SecurityConfiguration" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior), "CustomAmiId" :: NullOrUndefined (XmlStringMaxLen256), "EbsRootVolumeSize" :: NullOrUndefined (Int), "RepoUpgradeOnBoot" :: NullOrUndefined (RepoUpgradeOnBoot), "KerberosAttributes" :: NullOrUndefined (KerberosAttributes) }
```

<p>The detailed description of the cluster.</p>

##### Instances
``` purescript
Newtype Cluster _
Generic Cluster _
Show Cluster
Decode Cluster
Encode Cluster
```

#### `newCluster`

``` purescript
newCluster :: Cluster
```

Constructs Cluster from required parameters

#### `newCluster'`

``` purescript
newCluster' :: ({ "Id" :: NullOrUndefined (ClusterId), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ClusterStatus), "Ec2InstanceAttributes" :: NullOrUndefined (Ec2InstanceAttributes), "InstanceCollectionType" :: NullOrUndefined (InstanceCollectionType), "LogUri" :: NullOrUndefined (String), "RequestedAmiVersion" :: NullOrUndefined (String), "RunningAmiVersion" :: NullOrUndefined (String), "ReleaseLabel" :: NullOrUndefined (String), "AutoTerminate" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "Applications" :: NullOrUndefined (ApplicationList), "Tags" :: NullOrUndefined (TagList), "ServiceRole" :: NullOrUndefined (String), "NormalizedInstanceHours" :: NullOrUndefined (Int), "MasterPublicDnsName" :: NullOrUndefined (String), "Configurations" :: NullOrUndefined (ConfigurationList), "SecurityConfiguration" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior), "CustomAmiId" :: NullOrUndefined (XmlStringMaxLen256), "EbsRootVolumeSize" :: NullOrUndefined (Int), "RepoUpgradeOnBoot" :: NullOrUndefined (RepoUpgradeOnBoot), "KerberosAttributes" :: NullOrUndefined (KerberosAttributes) } -> { "Id" :: NullOrUndefined (ClusterId), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ClusterStatus), "Ec2InstanceAttributes" :: NullOrUndefined (Ec2InstanceAttributes), "InstanceCollectionType" :: NullOrUndefined (InstanceCollectionType), "LogUri" :: NullOrUndefined (String), "RequestedAmiVersion" :: NullOrUndefined (String), "RunningAmiVersion" :: NullOrUndefined (String), "ReleaseLabel" :: NullOrUndefined (String), "AutoTerminate" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "Applications" :: NullOrUndefined (ApplicationList), "Tags" :: NullOrUndefined (TagList), "ServiceRole" :: NullOrUndefined (String), "NormalizedInstanceHours" :: NullOrUndefined (Int), "MasterPublicDnsName" :: NullOrUndefined (String), "Configurations" :: NullOrUndefined (ConfigurationList), "SecurityConfiguration" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior), "CustomAmiId" :: NullOrUndefined (XmlStringMaxLen256), "EbsRootVolumeSize" :: NullOrUndefined (Int), "RepoUpgradeOnBoot" :: NullOrUndefined (RepoUpgradeOnBoot), "KerberosAttributes" :: NullOrUndefined (KerberosAttributes) }) -> Cluster
```

Constructs Cluster's fields from required parameters

#### `ClusterId`

``` purescript
newtype ClusterId
  = ClusterId String
```

##### Instances
``` purescript
Newtype ClusterId _
Generic ClusterId _
Show ClusterId
Decode ClusterId
Encode ClusterId
```

#### `ClusterState`

``` purescript
newtype ClusterState
  = ClusterState String
```

##### Instances
``` purescript
Newtype ClusterState _
Generic ClusterState _
Show ClusterState
Decode ClusterState
Encode ClusterState
```

#### `ClusterStateChangeReason`

``` purescript
newtype ClusterStateChangeReason
  = ClusterStateChangeReason { "Code" :: NullOrUndefined (ClusterStateChangeReasonCode), "Message" :: NullOrUndefined (String) }
```

<p>The reason that the cluster changed to its current state.</p>

##### Instances
``` purescript
Newtype ClusterStateChangeReason _
Generic ClusterStateChangeReason _
Show ClusterStateChangeReason
Decode ClusterStateChangeReason
Encode ClusterStateChangeReason
```

#### `newClusterStateChangeReason`

``` purescript
newClusterStateChangeReason :: ClusterStateChangeReason
```

Constructs ClusterStateChangeReason from required parameters

#### `newClusterStateChangeReason'`

``` purescript
newClusterStateChangeReason' :: ({ "Code" :: NullOrUndefined (ClusterStateChangeReasonCode), "Message" :: NullOrUndefined (String) } -> { "Code" :: NullOrUndefined (ClusterStateChangeReasonCode), "Message" :: NullOrUndefined (String) }) -> ClusterStateChangeReason
```

Constructs ClusterStateChangeReason's fields from required parameters

#### `ClusterStateChangeReasonCode`

``` purescript
newtype ClusterStateChangeReasonCode
  = ClusterStateChangeReasonCode String
```

##### Instances
``` purescript
Newtype ClusterStateChangeReasonCode _
Generic ClusterStateChangeReasonCode _
Show ClusterStateChangeReasonCode
Decode ClusterStateChangeReasonCode
Encode ClusterStateChangeReasonCode
```

#### `ClusterStateList`

``` purescript
newtype ClusterStateList
  = ClusterStateList (Array ClusterState)
```

##### Instances
``` purescript
Newtype ClusterStateList _
Generic ClusterStateList _
Show ClusterStateList
Decode ClusterStateList
Encode ClusterStateList
```

#### `ClusterStatus`

``` purescript
newtype ClusterStatus
  = ClusterStatus { "State" :: NullOrUndefined (ClusterState), "StateChangeReason" :: NullOrUndefined (ClusterStateChangeReason), "Timeline" :: NullOrUndefined (ClusterTimeline) }
```

<p>The detailed status of the cluster.</p>

##### Instances
``` purescript
Newtype ClusterStatus _
Generic ClusterStatus _
Show ClusterStatus
Decode ClusterStatus
Encode ClusterStatus
```

#### `newClusterStatus`

``` purescript
newClusterStatus :: ClusterStatus
```

Constructs ClusterStatus from required parameters

#### `newClusterStatus'`

``` purescript
newClusterStatus' :: ({ "State" :: NullOrUndefined (ClusterState), "StateChangeReason" :: NullOrUndefined (ClusterStateChangeReason), "Timeline" :: NullOrUndefined (ClusterTimeline) } -> { "State" :: NullOrUndefined (ClusterState), "StateChangeReason" :: NullOrUndefined (ClusterStateChangeReason), "Timeline" :: NullOrUndefined (ClusterTimeline) }) -> ClusterStatus
```

Constructs ClusterStatus's fields from required parameters

#### `ClusterSummary`

``` purescript
newtype ClusterSummary
  = ClusterSummary { "Id" :: NullOrUndefined (ClusterId), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ClusterStatus), "NormalizedInstanceHours" :: NullOrUndefined (Int) }
```

<p>The summary description of the cluster.</p>

##### Instances
``` purescript
Newtype ClusterSummary _
Generic ClusterSummary _
Show ClusterSummary
Decode ClusterSummary
Encode ClusterSummary
```

#### `newClusterSummary`

``` purescript
newClusterSummary :: ClusterSummary
```

Constructs ClusterSummary from required parameters

#### `newClusterSummary'`

``` purescript
newClusterSummary' :: ({ "Id" :: NullOrUndefined (ClusterId), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ClusterStatus), "NormalizedInstanceHours" :: NullOrUndefined (Int) } -> { "Id" :: NullOrUndefined (ClusterId), "Name" :: NullOrUndefined (String), "Status" :: NullOrUndefined (ClusterStatus), "NormalizedInstanceHours" :: NullOrUndefined (Int) }) -> ClusterSummary
```

Constructs ClusterSummary's fields from required parameters

#### `ClusterSummaryList`

``` purescript
newtype ClusterSummaryList
  = ClusterSummaryList (Array ClusterSummary)
```

##### Instances
``` purescript
Newtype ClusterSummaryList _
Generic ClusterSummaryList _
Show ClusterSummaryList
Decode ClusterSummaryList
Encode ClusterSummaryList
```

#### `ClusterTimeline`

``` purescript
newtype ClusterTimeline
  = ClusterTimeline { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }
```

<p>Represents the timeline of the cluster's lifecycle.</p>

##### Instances
``` purescript
Newtype ClusterTimeline _
Generic ClusterTimeline _
Show ClusterTimeline
Decode ClusterTimeline
Encode ClusterTimeline
```

#### `newClusterTimeline`

``` purescript
newClusterTimeline :: ClusterTimeline
```

Constructs ClusterTimeline from required parameters

#### `newClusterTimeline'`

``` purescript
newClusterTimeline' :: ({ "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) } -> { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }) -> ClusterTimeline
```

Constructs ClusterTimeline's fields from required parameters

#### `Command`

``` purescript
newtype Command
  = Command { "Name" :: NullOrUndefined (String), "ScriptPath" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList) }
```

<p>An entity describing an executable that runs on a cluster.</p>

##### Instances
``` purescript
Newtype Command _
Generic Command _
Show Command
Decode Command
Encode Command
```

#### `newCommand`

``` purescript
newCommand :: Command
```

Constructs Command from required parameters

#### `newCommand'`

``` purescript
newCommand' :: ({ "Name" :: NullOrUndefined (String), "ScriptPath" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList) } -> { "Name" :: NullOrUndefined (String), "ScriptPath" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList) }) -> Command
```

Constructs Command's fields from required parameters

#### `CommandList`

``` purescript
newtype CommandList
  = CommandList (Array Command)
```

##### Instances
``` purescript
Newtype CommandList _
Generic CommandList _
Show CommandList
Decode CommandList
Encode CommandList
```

#### `ComparisonOperator`

``` purescript
newtype ComparisonOperator
  = ComparisonOperator String
```

##### Instances
``` purescript
Newtype ComparisonOperator _
Generic ComparisonOperator _
Show ComparisonOperator
Decode ComparisonOperator
Encode ComparisonOperator
```

#### `Configuration`

``` purescript
newtype Configuration
  = Configuration { "Classification" :: NullOrUndefined (String), "Properties" :: NullOrUndefined (StringMap) }
```

<note> <p>Amazon EMR releases 4.x or later.</p> </note> <p>An optional configuration specification to be used when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html">Configuring Applications</a>.</p>

##### Instances
``` purescript
Newtype Configuration _
Generic Configuration _
Show Configuration
Decode Configuration
Encode Configuration
```

#### `newConfiguration`

``` purescript
newConfiguration :: Configuration
```

Constructs Configuration from required parameters

#### `newConfiguration'`

``` purescript
newConfiguration' :: ({ "Classification" :: NullOrUndefined (String), "Properties" :: NullOrUndefined (StringMap) } -> { "Classification" :: NullOrUndefined (String), "Properties" :: NullOrUndefined (StringMap) }) -> Configuration
```

Constructs Configuration's fields from required parameters

#### `ConfigurationList`

``` purescript
newtype ConfigurationList
  = ConfigurationList (Array Configuration)
```

##### Instances
``` purescript
Newtype ConfigurationList _
Generic ConfigurationList _
Show ConfigurationList
Decode ConfigurationList
Encode ConfigurationList
```

#### `CreateSecurityConfigurationInput`

``` purescript
newtype CreateSecurityConfigurationInput
  = CreateSecurityConfigurationInput { "Name" :: XmlString, "SecurityConfiguration" :: String }
```

##### Instances
``` purescript
Newtype CreateSecurityConfigurationInput _
Generic CreateSecurityConfigurationInput _
Show CreateSecurityConfigurationInput
Decode CreateSecurityConfigurationInput
Encode CreateSecurityConfigurationInput
```

#### `newCreateSecurityConfigurationInput`

``` purescript
newCreateSecurityConfigurationInput :: XmlString -> String -> CreateSecurityConfigurationInput
```

Constructs CreateSecurityConfigurationInput from required parameters

#### `newCreateSecurityConfigurationInput'`

``` purescript
newCreateSecurityConfigurationInput' :: XmlString -> String -> ({ "Name" :: XmlString, "SecurityConfiguration" :: String } -> { "Name" :: XmlString, "SecurityConfiguration" :: String }) -> CreateSecurityConfigurationInput
```

Constructs CreateSecurityConfigurationInput's fields from required parameters

#### `CreateSecurityConfigurationOutput`

``` purescript
newtype CreateSecurityConfigurationOutput
  = CreateSecurityConfigurationOutput { "Name" :: XmlString, "CreationDateTime" :: Date }
```

##### Instances
``` purescript
Newtype CreateSecurityConfigurationOutput _
Generic CreateSecurityConfigurationOutput _
Show CreateSecurityConfigurationOutput
Decode CreateSecurityConfigurationOutput
Encode CreateSecurityConfigurationOutput
```

#### `newCreateSecurityConfigurationOutput`

``` purescript
newCreateSecurityConfigurationOutput :: Date -> XmlString -> CreateSecurityConfigurationOutput
```

Constructs CreateSecurityConfigurationOutput from required parameters

#### `newCreateSecurityConfigurationOutput'`

``` purescript
newCreateSecurityConfigurationOutput' :: Date -> XmlString -> ({ "Name" :: XmlString, "CreationDateTime" :: Date } -> { "Name" :: XmlString, "CreationDateTime" :: Date }) -> CreateSecurityConfigurationOutput
```

Constructs CreateSecurityConfigurationOutput's fields from required parameters

#### `Date`

``` purescript
newtype Date
  = Date Timestamp
```

##### Instances
``` purescript
Newtype Date _
Generic Date _
Show Date
Decode Date
Encode Date
```

#### `DeleteSecurityConfigurationInput`

``` purescript
newtype DeleteSecurityConfigurationInput
  = DeleteSecurityConfigurationInput { "Name" :: XmlString }
```

##### Instances
``` purescript
Newtype DeleteSecurityConfigurationInput _
Generic DeleteSecurityConfigurationInput _
Show DeleteSecurityConfigurationInput
Decode DeleteSecurityConfigurationInput
Encode DeleteSecurityConfigurationInput
```

#### `newDeleteSecurityConfigurationInput`

``` purescript
newDeleteSecurityConfigurationInput :: XmlString -> DeleteSecurityConfigurationInput
```

Constructs DeleteSecurityConfigurationInput from required parameters

#### `newDeleteSecurityConfigurationInput'`

``` purescript
newDeleteSecurityConfigurationInput' :: XmlString -> ({ "Name" :: XmlString } -> { "Name" :: XmlString }) -> DeleteSecurityConfigurationInput
```

Constructs DeleteSecurityConfigurationInput's fields from required parameters

#### `DeleteSecurityConfigurationOutput`

``` purescript
newtype DeleteSecurityConfigurationOutput
  = DeleteSecurityConfigurationOutput NoArguments
```

##### Instances
``` purescript
Newtype DeleteSecurityConfigurationOutput _
Generic DeleteSecurityConfigurationOutput _
Show DeleteSecurityConfigurationOutput
Decode DeleteSecurityConfigurationOutput
Encode DeleteSecurityConfigurationOutput
```

#### `DescribeClusterInput`

``` purescript
newtype DescribeClusterInput
  = DescribeClusterInput { "ClusterId" :: ClusterId }
```

<p>This input determines which cluster to describe.</p>

##### Instances
``` purescript
Newtype DescribeClusterInput _
Generic DescribeClusterInput _
Show DescribeClusterInput
Decode DescribeClusterInput
Encode DescribeClusterInput
```

#### `newDescribeClusterInput`

``` purescript
newDescribeClusterInput :: ClusterId -> DescribeClusterInput
```

Constructs DescribeClusterInput from required parameters

#### `newDescribeClusterInput'`

``` purescript
newDescribeClusterInput' :: ClusterId -> ({ "ClusterId" :: ClusterId } -> { "ClusterId" :: ClusterId }) -> DescribeClusterInput
```

Constructs DescribeClusterInput's fields from required parameters

#### `DescribeClusterOutput`

``` purescript
newtype DescribeClusterOutput
  = DescribeClusterOutput { "Cluster" :: NullOrUndefined (Cluster) }
```

<p>This output contains the description of the cluster.</p>

##### Instances
``` purescript
Newtype DescribeClusterOutput _
Generic DescribeClusterOutput _
Show DescribeClusterOutput
Decode DescribeClusterOutput
Encode DescribeClusterOutput
```

#### `newDescribeClusterOutput`

``` purescript
newDescribeClusterOutput :: DescribeClusterOutput
```

Constructs DescribeClusterOutput from required parameters

#### `newDescribeClusterOutput'`

``` purescript
newDescribeClusterOutput' :: ({ "Cluster" :: NullOrUndefined (Cluster) } -> { "Cluster" :: NullOrUndefined (Cluster) }) -> DescribeClusterOutput
```

Constructs DescribeClusterOutput's fields from required parameters

#### `DescribeJobFlowsInput`

``` purescript
newtype DescribeJobFlowsInput
  = DescribeJobFlowsInput { "CreatedAfter" :: NullOrUndefined (Date), "CreatedBefore" :: NullOrUndefined (Date), "JobFlowIds" :: NullOrUndefined (XmlStringList), "JobFlowStates" :: NullOrUndefined (JobFlowExecutionStateList) }
```

<p> The input for the <a>DescribeJobFlows</a> operation. </p>

##### Instances
``` purescript
Newtype DescribeJobFlowsInput _
Generic DescribeJobFlowsInput _
Show DescribeJobFlowsInput
Decode DescribeJobFlowsInput
Encode DescribeJobFlowsInput
```

#### `newDescribeJobFlowsInput`

``` purescript
newDescribeJobFlowsInput :: DescribeJobFlowsInput
```

Constructs DescribeJobFlowsInput from required parameters

#### `newDescribeJobFlowsInput'`

``` purescript
newDescribeJobFlowsInput' :: ({ "CreatedAfter" :: NullOrUndefined (Date), "CreatedBefore" :: NullOrUndefined (Date), "JobFlowIds" :: NullOrUndefined (XmlStringList), "JobFlowStates" :: NullOrUndefined (JobFlowExecutionStateList) } -> { "CreatedAfter" :: NullOrUndefined (Date), "CreatedBefore" :: NullOrUndefined (Date), "JobFlowIds" :: NullOrUndefined (XmlStringList), "JobFlowStates" :: NullOrUndefined (JobFlowExecutionStateList) }) -> DescribeJobFlowsInput
```

Constructs DescribeJobFlowsInput's fields from required parameters

#### `DescribeJobFlowsOutput`

``` purescript
newtype DescribeJobFlowsOutput
  = DescribeJobFlowsOutput { "JobFlows" :: NullOrUndefined (JobFlowDetailList) }
```

<p> The output for the <a>DescribeJobFlows</a> operation. </p>

##### Instances
``` purescript
Newtype DescribeJobFlowsOutput _
Generic DescribeJobFlowsOutput _
Show DescribeJobFlowsOutput
Decode DescribeJobFlowsOutput
Encode DescribeJobFlowsOutput
```

#### `newDescribeJobFlowsOutput`

``` purescript
newDescribeJobFlowsOutput :: DescribeJobFlowsOutput
```

Constructs DescribeJobFlowsOutput from required parameters

#### `newDescribeJobFlowsOutput'`

``` purescript
newDescribeJobFlowsOutput' :: ({ "JobFlows" :: NullOrUndefined (JobFlowDetailList) } -> { "JobFlows" :: NullOrUndefined (JobFlowDetailList) }) -> DescribeJobFlowsOutput
```

Constructs DescribeJobFlowsOutput's fields from required parameters

#### `DescribeSecurityConfigurationInput`

``` purescript
newtype DescribeSecurityConfigurationInput
  = DescribeSecurityConfigurationInput { "Name" :: XmlString }
```

##### Instances
``` purescript
Newtype DescribeSecurityConfigurationInput _
Generic DescribeSecurityConfigurationInput _
Show DescribeSecurityConfigurationInput
Decode DescribeSecurityConfigurationInput
Encode DescribeSecurityConfigurationInput
```

#### `newDescribeSecurityConfigurationInput`

``` purescript
newDescribeSecurityConfigurationInput :: XmlString -> DescribeSecurityConfigurationInput
```

Constructs DescribeSecurityConfigurationInput from required parameters

#### `newDescribeSecurityConfigurationInput'`

``` purescript
newDescribeSecurityConfigurationInput' :: XmlString -> ({ "Name" :: XmlString } -> { "Name" :: XmlString }) -> DescribeSecurityConfigurationInput
```

Constructs DescribeSecurityConfigurationInput's fields from required parameters

#### `DescribeSecurityConfigurationOutput`

``` purescript
newtype DescribeSecurityConfigurationOutput
  = DescribeSecurityConfigurationOutput { "Name" :: NullOrUndefined (XmlString), "SecurityConfiguration" :: NullOrUndefined (String), "CreationDateTime" :: NullOrUndefined (Date) }
```

##### Instances
``` purescript
Newtype DescribeSecurityConfigurationOutput _
Generic DescribeSecurityConfigurationOutput _
Show DescribeSecurityConfigurationOutput
Decode DescribeSecurityConfigurationOutput
Encode DescribeSecurityConfigurationOutput
```

#### `newDescribeSecurityConfigurationOutput`

``` purescript
newDescribeSecurityConfigurationOutput :: DescribeSecurityConfigurationOutput
```

Constructs DescribeSecurityConfigurationOutput from required parameters

#### `newDescribeSecurityConfigurationOutput'`

``` purescript
newDescribeSecurityConfigurationOutput' :: ({ "Name" :: NullOrUndefined (XmlString), "SecurityConfiguration" :: NullOrUndefined (String), "CreationDateTime" :: NullOrUndefined (Date) } -> { "Name" :: NullOrUndefined (XmlString), "SecurityConfiguration" :: NullOrUndefined (String), "CreationDateTime" :: NullOrUndefined (Date) }) -> DescribeSecurityConfigurationOutput
```

Constructs DescribeSecurityConfigurationOutput's fields from required parameters

#### `DescribeStepInput`

``` purescript
newtype DescribeStepInput
  = DescribeStepInput { "ClusterId" :: ClusterId, "StepId" :: StepId }
```

<p>This input determines which step to describe.</p>

##### Instances
``` purescript
Newtype DescribeStepInput _
Generic DescribeStepInput _
Show DescribeStepInput
Decode DescribeStepInput
Encode DescribeStepInput
```

#### `newDescribeStepInput`

``` purescript
newDescribeStepInput :: ClusterId -> StepId -> DescribeStepInput
```

Constructs DescribeStepInput from required parameters

#### `newDescribeStepInput'`

``` purescript
newDescribeStepInput' :: ClusterId -> StepId -> ({ "ClusterId" :: ClusterId, "StepId" :: StepId } -> { "ClusterId" :: ClusterId, "StepId" :: StepId }) -> DescribeStepInput
```

Constructs DescribeStepInput's fields from required parameters

#### `DescribeStepOutput`

``` purescript
newtype DescribeStepOutput
  = DescribeStepOutput { "Step" :: NullOrUndefined (Step) }
```

<p>This output contains the description of the cluster step.</p>

##### Instances
``` purescript
Newtype DescribeStepOutput _
Generic DescribeStepOutput _
Show DescribeStepOutput
Decode DescribeStepOutput
Encode DescribeStepOutput
```

#### `newDescribeStepOutput`

``` purescript
newDescribeStepOutput :: DescribeStepOutput
```

Constructs DescribeStepOutput from required parameters

#### `newDescribeStepOutput'`

``` purescript
newDescribeStepOutput' :: ({ "Step" :: NullOrUndefined (Step) } -> { "Step" :: NullOrUndefined (Step) }) -> DescribeStepOutput
```

Constructs DescribeStepOutput's fields from required parameters

#### `EC2InstanceIdsList`

``` purescript
newtype EC2InstanceIdsList
  = EC2InstanceIdsList (Array InstanceId)
```

##### Instances
``` purescript
Newtype EC2InstanceIdsList _
Generic EC2InstanceIdsList _
Show EC2InstanceIdsList
Decode EC2InstanceIdsList
Encode EC2InstanceIdsList
```

#### `EC2InstanceIdsToTerminateList`

``` purescript
newtype EC2InstanceIdsToTerminateList
  = EC2InstanceIdsToTerminateList (Array InstanceId)
```

##### Instances
``` purescript
Newtype EC2InstanceIdsToTerminateList _
Generic EC2InstanceIdsToTerminateList _
Show EC2InstanceIdsToTerminateList
Decode EC2InstanceIdsToTerminateList
Encode EC2InstanceIdsToTerminateList
```

#### `EbsBlockDevice`

``` purescript
newtype EbsBlockDevice
  = EbsBlockDevice { "VolumeSpecification" :: NullOrUndefined (VolumeSpecification), "Device" :: NullOrUndefined (String) }
```

<p>Configuration of requested EBS block device associated with the instance group.</p>

##### Instances
``` purescript
Newtype EbsBlockDevice _
Generic EbsBlockDevice _
Show EbsBlockDevice
Decode EbsBlockDevice
Encode EbsBlockDevice
```

#### `newEbsBlockDevice`

``` purescript
newEbsBlockDevice :: EbsBlockDevice
```

Constructs EbsBlockDevice from required parameters

#### `newEbsBlockDevice'`

``` purescript
newEbsBlockDevice' :: ({ "VolumeSpecification" :: NullOrUndefined (VolumeSpecification), "Device" :: NullOrUndefined (String) } -> { "VolumeSpecification" :: NullOrUndefined (VolumeSpecification), "Device" :: NullOrUndefined (String) }) -> EbsBlockDevice
```

Constructs EbsBlockDevice's fields from required parameters

#### `EbsBlockDeviceConfig`

``` purescript
newtype EbsBlockDeviceConfig
  = EbsBlockDeviceConfig { "VolumeSpecification" :: VolumeSpecification, "VolumesPerInstance" :: NullOrUndefined (Int) }
```

<p>Configuration of requested EBS block device associated with the instance group with count of volumes that will be associated to every instance.</p>

##### Instances
``` purescript
Newtype EbsBlockDeviceConfig _
Generic EbsBlockDeviceConfig _
Show EbsBlockDeviceConfig
Decode EbsBlockDeviceConfig
Encode EbsBlockDeviceConfig
```

#### `newEbsBlockDeviceConfig`

``` purescript
newEbsBlockDeviceConfig :: VolumeSpecification -> EbsBlockDeviceConfig
```

Constructs EbsBlockDeviceConfig from required parameters

#### `newEbsBlockDeviceConfig'`

``` purescript
newEbsBlockDeviceConfig' :: VolumeSpecification -> ({ "VolumeSpecification" :: VolumeSpecification, "VolumesPerInstance" :: NullOrUndefined (Int) } -> { "VolumeSpecification" :: VolumeSpecification, "VolumesPerInstance" :: NullOrUndefined (Int) }) -> EbsBlockDeviceConfig
```

Constructs EbsBlockDeviceConfig's fields from required parameters

#### `EbsBlockDeviceConfigList`

``` purescript
newtype EbsBlockDeviceConfigList
  = EbsBlockDeviceConfigList (Array EbsBlockDeviceConfig)
```

##### Instances
``` purescript
Newtype EbsBlockDeviceConfigList _
Generic EbsBlockDeviceConfigList _
Show EbsBlockDeviceConfigList
Decode EbsBlockDeviceConfigList
Encode EbsBlockDeviceConfigList
```

#### `EbsBlockDeviceList`

``` purescript
newtype EbsBlockDeviceList
  = EbsBlockDeviceList (Array EbsBlockDevice)
```

##### Instances
``` purescript
Newtype EbsBlockDeviceList _
Generic EbsBlockDeviceList _
Show EbsBlockDeviceList
Decode EbsBlockDeviceList
Encode EbsBlockDeviceList
```

#### `EbsConfiguration`

``` purescript
newtype EbsConfiguration
  = EbsConfiguration { "EbsBlockDeviceConfigs" :: NullOrUndefined (EbsBlockDeviceConfigList), "EbsOptimized" :: NullOrUndefined (BooleanObject) }
```

<p>The Amazon EBS configuration of a cluster instance.</p>

##### Instances
``` purescript
Newtype EbsConfiguration _
Generic EbsConfiguration _
Show EbsConfiguration
Decode EbsConfiguration
Encode EbsConfiguration
```

#### `newEbsConfiguration`

``` purescript
newEbsConfiguration :: EbsConfiguration
```

Constructs EbsConfiguration from required parameters

#### `newEbsConfiguration'`

``` purescript
newEbsConfiguration' :: ({ "EbsBlockDeviceConfigs" :: NullOrUndefined (EbsBlockDeviceConfigList), "EbsOptimized" :: NullOrUndefined (BooleanObject) } -> { "EbsBlockDeviceConfigs" :: NullOrUndefined (EbsBlockDeviceConfigList), "EbsOptimized" :: NullOrUndefined (BooleanObject) }) -> EbsConfiguration
```

Constructs EbsConfiguration's fields from required parameters

#### `EbsVolume`

``` purescript
newtype EbsVolume
  = EbsVolume { "Device" :: NullOrUndefined (String), "VolumeId" :: NullOrUndefined (String) }
```

<p>EBS block device that's attached to an EC2 instance.</p>

##### Instances
``` purescript
Newtype EbsVolume _
Generic EbsVolume _
Show EbsVolume
Decode EbsVolume
Encode EbsVolume
```

#### `newEbsVolume`

``` purescript
newEbsVolume :: EbsVolume
```

Constructs EbsVolume from required parameters

#### `newEbsVolume'`

``` purescript
newEbsVolume' :: ({ "Device" :: NullOrUndefined (String), "VolumeId" :: NullOrUndefined (String) } -> { "Device" :: NullOrUndefined (String), "VolumeId" :: NullOrUndefined (String) }) -> EbsVolume
```

Constructs EbsVolume's fields from required parameters

#### `EbsVolumeList`

``` purescript
newtype EbsVolumeList
  = EbsVolumeList (Array EbsVolume)
```

##### Instances
``` purescript
Newtype EbsVolumeList _
Generic EbsVolumeList _
Show EbsVolumeList
Decode EbsVolumeList
Encode EbsVolumeList
```

#### `Ec2InstanceAttributes`

``` purescript
newtype Ec2InstanceAttributes
  = Ec2InstanceAttributes { "Ec2KeyName" :: NullOrUndefined (String), "Ec2SubnetId" :: NullOrUndefined (String), "RequestedEc2SubnetIds" :: NullOrUndefined (XmlStringMaxLen256List), "Ec2AvailabilityZone" :: NullOrUndefined (String), "RequestedEc2AvailabilityZones" :: NullOrUndefined (XmlStringMaxLen256List), "IamInstanceProfile" :: NullOrUndefined (String), "EmrManagedMasterSecurityGroup" :: NullOrUndefined (String), "EmrManagedSlaveSecurityGroup" :: NullOrUndefined (String), "ServiceAccessSecurityGroup" :: NullOrUndefined (String), "AdditionalMasterSecurityGroups" :: NullOrUndefined (StringList), "AdditionalSlaveSecurityGroups" :: NullOrUndefined (StringList) }
```

<p>Provides information about the EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.</p>

##### Instances
``` purescript
Newtype Ec2InstanceAttributes _
Generic Ec2InstanceAttributes _
Show Ec2InstanceAttributes
Decode Ec2InstanceAttributes
Encode Ec2InstanceAttributes
```

#### `newEc2InstanceAttributes`

``` purescript
newEc2InstanceAttributes :: Ec2InstanceAttributes
```

Constructs Ec2InstanceAttributes from required parameters

#### `newEc2InstanceAttributes'`

``` purescript
newEc2InstanceAttributes' :: ({ "Ec2KeyName" :: NullOrUndefined (String), "Ec2SubnetId" :: NullOrUndefined (String), "RequestedEc2SubnetIds" :: NullOrUndefined (XmlStringMaxLen256List), "Ec2AvailabilityZone" :: NullOrUndefined (String), "RequestedEc2AvailabilityZones" :: NullOrUndefined (XmlStringMaxLen256List), "IamInstanceProfile" :: NullOrUndefined (String), "EmrManagedMasterSecurityGroup" :: NullOrUndefined (String), "EmrManagedSlaveSecurityGroup" :: NullOrUndefined (String), "ServiceAccessSecurityGroup" :: NullOrUndefined (String), "AdditionalMasterSecurityGroups" :: NullOrUndefined (StringList), "AdditionalSlaveSecurityGroups" :: NullOrUndefined (StringList) } -> { "Ec2KeyName" :: NullOrUndefined (String), "Ec2SubnetId" :: NullOrUndefined (String), "RequestedEc2SubnetIds" :: NullOrUndefined (XmlStringMaxLen256List), "Ec2AvailabilityZone" :: NullOrUndefined (String), "RequestedEc2AvailabilityZones" :: NullOrUndefined (XmlStringMaxLen256List), "IamInstanceProfile" :: NullOrUndefined (String), "EmrManagedMasterSecurityGroup" :: NullOrUndefined (String), "EmrManagedSlaveSecurityGroup" :: NullOrUndefined (String), "ServiceAccessSecurityGroup" :: NullOrUndefined (String), "AdditionalMasterSecurityGroups" :: NullOrUndefined (StringList), "AdditionalSlaveSecurityGroups" :: NullOrUndefined (StringList) }) -> Ec2InstanceAttributes
```

Constructs Ec2InstanceAttributes's fields from required parameters

#### `ErrorCode`

``` purescript
newtype ErrorCode
  = ErrorCode String
```

##### Instances
``` purescript
Newtype ErrorCode _
Generic ErrorCode _
Show ErrorCode
Decode ErrorCode
Encode ErrorCode
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

##### Instances
``` purescript
Newtype ErrorMessage _
Generic ErrorMessage _
Show ErrorMessage
Decode ErrorMessage
Encode ErrorMessage
```

#### `FailureDetails`

``` purescript
newtype FailureDetails
  = FailureDetails { "Reason" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "LogFile" :: NullOrUndefined (String) }
```

<p>The details of the step failure. The service attempts to detect the root cause for many common failures.</p>

##### Instances
``` purescript
Newtype FailureDetails _
Generic FailureDetails _
Show FailureDetails
Decode FailureDetails
Encode FailureDetails
```

#### `newFailureDetails`

``` purescript
newFailureDetails :: FailureDetails
```

Constructs FailureDetails from required parameters

#### `newFailureDetails'`

``` purescript
newFailureDetails' :: ({ "Reason" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "LogFile" :: NullOrUndefined (String) } -> { "Reason" :: NullOrUndefined (String), "Message" :: NullOrUndefined (String), "LogFile" :: NullOrUndefined (String) }) -> FailureDetails
```

Constructs FailureDetails's fields from required parameters

#### `HadoopJarStepConfig`

``` purescript
newtype HadoopJarStepConfig
  = HadoopJarStepConfig { "Properties" :: NullOrUndefined (KeyValueList), "Jar" :: XmlString, "MainClass" :: NullOrUndefined (XmlString), "Args" :: NullOrUndefined (XmlStringList) }
```

<p>A job flow step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>

##### Instances
``` purescript
Newtype HadoopJarStepConfig _
Generic HadoopJarStepConfig _
Show HadoopJarStepConfig
Decode HadoopJarStepConfig
Encode HadoopJarStepConfig
```

#### `newHadoopJarStepConfig`

``` purescript
newHadoopJarStepConfig :: XmlString -> HadoopJarStepConfig
```

Constructs HadoopJarStepConfig from required parameters

#### `newHadoopJarStepConfig'`

``` purescript
newHadoopJarStepConfig' :: XmlString -> ({ "Properties" :: NullOrUndefined (KeyValueList), "Jar" :: XmlString, "MainClass" :: NullOrUndefined (XmlString), "Args" :: NullOrUndefined (XmlStringList) } -> { "Properties" :: NullOrUndefined (KeyValueList), "Jar" :: XmlString, "MainClass" :: NullOrUndefined (XmlString), "Args" :: NullOrUndefined (XmlStringList) }) -> HadoopJarStepConfig
```

Constructs HadoopJarStepConfig's fields from required parameters

#### `HadoopStepConfig`

``` purescript
newtype HadoopStepConfig
  = HadoopStepConfig { "Jar" :: NullOrUndefined (String), "Properties" :: NullOrUndefined (StringMap), "MainClass" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList) }
```

<p>A cluster step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>

##### Instances
``` purescript
Newtype HadoopStepConfig _
Generic HadoopStepConfig _
Show HadoopStepConfig
Decode HadoopStepConfig
Encode HadoopStepConfig
```

#### `newHadoopStepConfig`

``` purescript
newHadoopStepConfig :: HadoopStepConfig
```

Constructs HadoopStepConfig from required parameters

#### `newHadoopStepConfig'`

``` purescript
newHadoopStepConfig' :: ({ "Jar" :: NullOrUndefined (String), "Properties" :: NullOrUndefined (StringMap), "MainClass" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList) } -> { "Jar" :: NullOrUndefined (String), "Properties" :: NullOrUndefined (StringMap), "MainClass" :: NullOrUndefined (String), "Args" :: NullOrUndefined (StringList) }) -> HadoopStepConfig
```

Constructs HadoopStepConfig's fields from required parameters

#### `Instance`

``` purescript
newtype Instance
  = Instance { "Id" :: NullOrUndefined (InstanceId), "Ec2InstanceId" :: NullOrUndefined (InstanceId), "PublicDnsName" :: NullOrUndefined (String), "PublicIpAddress" :: NullOrUndefined (String), "PrivateDnsName" :: NullOrUndefined (String), "PrivateIpAddress" :: NullOrUndefined (String), "Status" :: NullOrUndefined (InstanceStatus), "InstanceGroupId" :: NullOrUndefined (String), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId), "Market" :: NullOrUndefined (MarketType), "InstanceType" :: NullOrUndefined (InstanceType), "EbsVolumes" :: NullOrUndefined (EbsVolumeList) }
```

<p>Represents an EC2 instance provisioned as part of cluster.</p>

##### Instances
``` purescript
Newtype Instance _
Generic Instance _
Show Instance
Decode Instance
Encode Instance
```

#### `newInstance`

``` purescript
newInstance :: Instance
```

Constructs Instance from required parameters

#### `newInstance'`

``` purescript
newInstance' :: ({ "Id" :: NullOrUndefined (InstanceId), "Ec2InstanceId" :: NullOrUndefined (InstanceId), "PublicDnsName" :: NullOrUndefined (String), "PublicIpAddress" :: NullOrUndefined (String), "PrivateDnsName" :: NullOrUndefined (String), "PrivateIpAddress" :: NullOrUndefined (String), "Status" :: NullOrUndefined (InstanceStatus), "InstanceGroupId" :: NullOrUndefined (String), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId), "Market" :: NullOrUndefined (MarketType), "InstanceType" :: NullOrUndefined (InstanceType), "EbsVolumes" :: NullOrUndefined (EbsVolumeList) } -> { "Id" :: NullOrUndefined (InstanceId), "Ec2InstanceId" :: NullOrUndefined (InstanceId), "PublicDnsName" :: NullOrUndefined (String), "PublicIpAddress" :: NullOrUndefined (String), "PrivateDnsName" :: NullOrUndefined (String), "PrivateIpAddress" :: NullOrUndefined (String), "Status" :: NullOrUndefined (InstanceStatus), "InstanceGroupId" :: NullOrUndefined (String), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId), "Market" :: NullOrUndefined (MarketType), "InstanceType" :: NullOrUndefined (InstanceType), "EbsVolumes" :: NullOrUndefined (EbsVolumeList) }) -> Instance
```

Constructs Instance's fields from required parameters

#### `InstanceCollectionType`

``` purescript
newtype InstanceCollectionType
  = InstanceCollectionType String
```

##### Instances
``` purescript
Newtype InstanceCollectionType _
Generic InstanceCollectionType _
Show InstanceCollectionType
Decode InstanceCollectionType
Encode InstanceCollectionType
```

#### `InstanceFleet`

``` purescript
newtype InstanceFleet
  = InstanceFleet { "Id" :: NullOrUndefined (InstanceFleetId), "Name" :: NullOrUndefined (XmlStringMaxLen256), "Status" :: NullOrUndefined (InstanceFleetStatus), "InstanceFleetType" :: NullOrUndefined (InstanceFleetType), "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber), "ProvisionedOnDemandCapacity" :: NullOrUndefined (WholeNumber), "ProvisionedSpotCapacity" :: NullOrUndefined (WholeNumber), "InstanceTypeSpecifications" :: NullOrUndefined (InstanceTypeSpecificationList), "LaunchSpecifications" :: NullOrUndefined (InstanceFleetProvisioningSpecifications) }
```

<p>Describes an instance fleet, which is a group of EC2 instances that host a particular node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can consist of a mix of instance types and On-Demand and Spot instances, which are provisioned to meet a defined target capacity. </p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceFleet _
Generic InstanceFleet _
Show InstanceFleet
Decode InstanceFleet
Encode InstanceFleet
```

#### `newInstanceFleet`

``` purescript
newInstanceFleet :: InstanceFleet
```

Constructs InstanceFleet from required parameters

#### `newInstanceFleet'`

``` purescript
newInstanceFleet' :: ({ "Id" :: NullOrUndefined (InstanceFleetId), "Name" :: NullOrUndefined (XmlStringMaxLen256), "Status" :: NullOrUndefined (InstanceFleetStatus), "InstanceFleetType" :: NullOrUndefined (InstanceFleetType), "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber), "ProvisionedOnDemandCapacity" :: NullOrUndefined (WholeNumber), "ProvisionedSpotCapacity" :: NullOrUndefined (WholeNumber), "InstanceTypeSpecifications" :: NullOrUndefined (InstanceTypeSpecificationList), "LaunchSpecifications" :: NullOrUndefined (InstanceFleetProvisioningSpecifications) } -> { "Id" :: NullOrUndefined (InstanceFleetId), "Name" :: NullOrUndefined (XmlStringMaxLen256), "Status" :: NullOrUndefined (InstanceFleetStatus), "InstanceFleetType" :: NullOrUndefined (InstanceFleetType), "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber), "ProvisionedOnDemandCapacity" :: NullOrUndefined (WholeNumber), "ProvisionedSpotCapacity" :: NullOrUndefined (WholeNumber), "InstanceTypeSpecifications" :: NullOrUndefined (InstanceTypeSpecificationList), "LaunchSpecifications" :: NullOrUndefined (InstanceFleetProvisioningSpecifications) }) -> InstanceFleet
```

Constructs InstanceFleet's fields from required parameters

#### `InstanceFleetConfig`

``` purescript
newtype InstanceFleetConfig
  = InstanceFleetConfig { "Name" :: NullOrUndefined (XmlStringMaxLen256), "InstanceFleetType" :: InstanceFleetType, "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber), "InstanceTypeConfigs" :: NullOrUndefined (InstanceTypeConfigList), "LaunchSpecifications" :: NullOrUndefined (InstanceFleetProvisioningSpecifications) }
```

<p>The configuration that defines an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceFleetConfig _
Generic InstanceFleetConfig _
Show InstanceFleetConfig
Decode InstanceFleetConfig
Encode InstanceFleetConfig
```

#### `newInstanceFleetConfig`

``` purescript
newInstanceFleetConfig :: InstanceFleetType -> InstanceFleetConfig
```

Constructs InstanceFleetConfig from required parameters

#### `newInstanceFleetConfig'`

``` purescript
newInstanceFleetConfig' :: InstanceFleetType -> ({ "Name" :: NullOrUndefined (XmlStringMaxLen256), "InstanceFleetType" :: InstanceFleetType, "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber), "InstanceTypeConfigs" :: NullOrUndefined (InstanceTypeConfigList), "LaunchSpecifications" :: NullOrUndefined (InstanceFleetProvisioningSpecifications) } -> { "Name" :: NullOrUndefined (XmlStringMaxLen256), "InstanceFleetType" :: InstanceFleetType, "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber), "InstanceTypeConfigs" :: NullOrUndefined (InstanceTypeConfigList), "LaunchSpecifications" :: NullOrUndefined (InstanceFleetProvisioningSpecifications) }) -> InstanceFleetConfig
```

Constructs InstanceFleetConfig's fields from required parameters

#### `InstanceFleetConfigList`

``` purescript
newtype InstanceFleetConfigList
  = InstanceFleetConfigList (Array InstanceFleetConfig)
```

##### Instances
``` purescript
Newtype InstanceFleetConfigList _
Generic InstanceFleetConfigList _
Show InstanceFleetConfigList
Decode InstanceFleetConfigList
Encode InstanceFleetConfigList
```

#### `InstanceFleetId`

``` purescript
newtype InstanceFleetId
  = InstanceFleetId String
```

##### Instances
``` purescript
Newtype InstanceFleetId _
Generic InstanceFleetId _
Show InstanceFleetId
Decode InstanceFleetId
Encode InstanceFleetId
```

#### `InstanceFleetList`

``` purescript
newtype InstanceFleetList
  = InstanceFleetList (Array InstanceFleet)
```

##### Instances
``` purescript
Newtype InstanceFleetList _
Generic InstanceFleetList _
Show InstanceFleetList
Decode InstanceFleetList
Encode InstanceFleetList
```

#### `InstanceFleetModifyConfig`

``` purescript
newtype InstanceFleetModifyConfig
  = InstanceFleetModifyConfig { "InstanceFleetId" :: InstanceFleetId, "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber) }
```

<p>Configuration parameters for an instance fleet modification request.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceFleetModifyConfig _
Generic InstanceFleetModifyConfig _
Show InstanceFleetModifyConfig
Decode InstanceFleetModifyConfig
Encode InstanceFleetModifyConfig
```

#### `newInstanceFleetModifyConfig`

``` purescript
newInstanceFleetModifyConfig :: InstanceFleetId -> InstanceFleetModifyConfig
```

Constructs InstanceFleetModifyConfig from required parameters

#### `newInstanceFleetModifyConfig'`

``` purescript
newInstanceFleetModifyConfig' :: InstanceFleetId -> ({ "InstanceFleetId" :: InstanceFleetId, "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber) } -> { "InstanceFleetId" :: InstanceFleetId, "TargetOnDemandCapacity" :: NullOrUndefined (WholeNumber), "TargetSpotCapacity" :: NullOrUndefined (WholeNumber) }) -> InstanceFleetModifyConfig
```

Constructs InstanceFleetModifyConfig's fields from required parameters

#### `InstanceFleetProvisioningSpecifications`

``` purescript
newtype InstanceFleetProvisioningSpecifications
  = InstanceFleetProvisioningSpecifications { "SpotSpecification" :: SpotProvisioningSpecification }
```

<p>The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceFleetProvisioningSpecifications _
Generic InstanceFleetProvisioningSpecifications _
Show InstanceFleetProvisioningSpecifications
Decode InstanceFleetProvisioningSpecifications
Encode InstanceFleetProvisioningSpecifications
```

#### `newInstanceFleetProvisioningSpecifications`

``` purescript
newInstanceFleetProvisioningSpecifications :: SpotProvisioningSpecification -> InstanceFleetProvisioningSpecifications
```

Constructs InstanceFleetProvisioningSpecifications from required parameters

#### `newInstanceFleetProvisioningSpecifications'`

``` purescript
newInstanceFleetProvisioningSpecifications' :: SpotProvisioningSpecification -> ({ "SpotSpecification" :: SpotProvisioningSpecification } -> { "SpotSpecification" :: SpotProvisioningSpecification }) -> InstanceFleetProvisioningSpecifications
```

Constructs InstanceFleetProvisioningSpecifications's fields from required parameters

#### `InstanceFleetState`

``` purescript
newtype InstanceFleetState
  = InstanceFleetState String
```

##### Instances
``` purescript
Newtype InstanceFleetState _
Generic InstanceFleetState _
Show InstanceFleetState
Decode InstanceFleetState
Encode InstanceFleetState
```

#### `InstanceFleetStateChangeReason`

``` purescript
newtype InstanceFleetStateChangeReason
  = InstanceFleetStateChangeReason { "Code" :: NullOrUndefined (InstanceFleetStateChangeReasonCode), "Message" :: NullOrUndefined (String) }
```

<p>Provides status change reason details for the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceFleetStateChangeReason _
Generic InstanceFleetStateChangeReason _
Show InstanceFleetStateChangeReason
Decode InstanceFleetStateChangeReason
Encode InstanceFleetStateChangeReason
```

#### `newInstanceFleetStateChangeReason`

``` purescript
newInstanceFleetStateChangeReason :: InstanceFleetStateChangeReason
```

Constructs InstanceFleetStateChangeReason from required parameters

#### `newInstanceFleetStateChangeReason'`

``` purescript
newInstanceFleetStateChangeReason' :: ({ "Code" :: NullOrUndefined (InstanceFleetStateChangeReasonCode), "Message" :: NullOrUndefined (String) } -> { "Code" :: NullOrUndefined (InstanceFleetStateChangeReasonCode), "Message" :: NullOrUndefined (String) }) -> InstanceFleetStateChangeReason
```

Constructs InstanceFleetStateChangeReason's fields from required parameters

#### `InstanceFleetStateChangeReasonCode`

``` purescript
newtype InstanceFleetStateChangeReasonCode
  = InstanceFleetStateChangeReasonCode String
```

##### Instances
``` purescript
Newtype InstanceFleetStateChangeReasonCode _
Generic InstanceFleetStateChangeReasonCode _
Show InstanceFleetStateChangeReasonCode
Decode InstanceFleetStateChangeReasonCode
Encode InstanceFleetStateChangeReasonCode
```

#### `InstanceFleetStatus`

``` purescript
newtype InstanceFleetStatus
  = InstanceFleetStatus { "State" :: NullOrUndefined (InstanceFleetState), "StateChangeReason" :: NullOrUndefined (InstanceFleetStateChangeReason), "Timeline" :: NullOrUndefined (InstanceFleetTimeline) }
```

<p>The status of the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceFleetStatus _
Generic InstanceFleetStatus _
Show InstanceFleetStatus
Decode InstanceFleetStatus
Encode InstanceFleetStatus
```

#### `newInstanceFleetStatus`

``` purescript
newInstanceFleetStatus :: InstanceFleetStatus
```

Constructs InstanceFleetStatus from required parameters

#### `newInstanceFleetStatus'`

``` purescript
newInstanceFleetStatus' :: ({ "State" :: NullOrUndefined (InstanceFleetState), "StateChangeReason" :: NullOrUndefined (InstanceFleetStateChangeReason), "Timeline" :: NullOrUndefined (InstanceFleetTimeline) } -> { "State" :: NullOrUndefined (InstanceFleetState), "StateChangeReason" :: NullOrUndefined (InstanceFleetStateChangeReason), "Timeline" :: NullOrUndefined (InstanceFleetTimeline) }) -> InstanceFleetStatus
```

Constructs InstanceFleetStatus's fields from required parameters

#### `InstanceFleetTimeline`

``` purescript
newtype InstanceFleetTimeline
  = InstanceFleetTimeline { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }
```

<p>Provides historical timestamps for the instance fleet, including the time of creation, the time it became ready to run jobs, and the time of termination.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceFleetTimeline _
Generic InstanceFleetTimeline _
Show InstanceFleetTimeline
Decode InstanceFleetTimeline
Encode InstanceFleetTimeline
```

#### `newInstanceFleetTimeline`

``` purescript
newInstanceFleetTimeline :: InstanceFleetTimeline
```

Constructs InstanceFleetTimeline from required parameters

#### `newInstanceFleetTimeline'`

``` purescript
newInstanceFleetTimeline' :: ({ "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) } -> { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }) -> InstanceFleetTimeline
```

Constructs InstanceFleetTimeline's fields from required parameters

#### `InstanceFleetType`

``` purescript
newtype InstanceFleetType
  = InstanceFleetType String
```

##### Instances
``` purescript
Newtype InstanceFleetType _
Generic InstanceFleetType _
Show InstanceFleetType
Decode InstanceFleetType
Encode InstanceFleetType
```

#### `InstanceGroup`

``` purescript
newtype InstanceGroup
  = InstanceGroup { "Id" :: NullOrUndefined (InstanceGroupId), "Name" :: NullOrUndefined (String), "Market" :: NullOrUndefined (MarketType), "InstanceGroupType" :: NullOrUndefined (InstanceGroupType), "BidPrice" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (InstanceType), "RequestedInstanceCount" :: NullOrUndefined (Int), "RunningInstanceCount" :: NullOrUndefined (Int), "Status" :: NullOrUndefined (InstanceGroupStatus), "Configurations" :: NullOrUndefined (ConfigurationList), "EbsBlockDevices" :: NullOrUndefined (EbsBlockDeviceList), "EbsOptimized" :: NullOrUndefined (BooleanObject), "ShrinkPolicy" :: NullOrUndefined (ShrinkPolicy), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicyDescription) }
```

<p>This entity represents an instance group, which is a group of instances that have common purpose. For example, CORE instance group is used for HDFS.</p>

##### Instances
``` purescript
Newtype InstanceGroup _
Generic InstanceGroup _
Show InstanceGroup
Decode InstanceGroup
Encode InstanceGroup
```

#### `newInstanceGroup`

``` purescript
newInstanceGroup :: InstanceGroup
```

Constructs InstanceGroup from required parameters

#### `newInstanceGroup'`

``` purescript
newInstanceGroup' :: ({ "Id" :: NullOrUndefined (InstanceGroupId), "Name" :: NullOrUndefined (String), "Market" :: NullOrUndefined (MarketType), "InstanceGroupType" :: NullOrUndefined (InstanceGroupType), "BidPrice" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (InstanceType), "RequestedInstanceCount" :: NullOrUndefined (Int), "RunningInstanceCount" :: NullOrUndefined (Int), "Status" :: NullOrUndefined (InstanceGroupStatus), "Configurations" :: NullOrUndefined (ConfigurationList), "EbsBlockDevices" :: NullOrUndefined (EbsBlockDeviceList), "EbsOptimized" :: NullOrUndefined (BooleanObject), "ShrinkPolicy" :: NullOrUndefined (ShrinkPolicy), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicyDescription) } -> { "Id" :: NullOrUndefined (InstanceGroupId), "Name" :: NullOrUndefined (String), "Market" :: NullOrUndefined (MarketType), "InstanceGroupType" :: NullOrUndefined (InstanceGroupType), "BidPrice" :: NullOrUndefined (String), "InstanceType" :: NullOrUndefined (InstanceType), "RequestedInstanceCount" :: NullOrUndefined (Int), "RunningInstanceCount" :: NullOrUndefined (Int), "Status" :: NullOrUndefined (InstanceGroupStatus), "Configurations" :: NullOrUndefined (ConfigurationList), "EbsBlockDevices" :: NullOrUndefined (EbsBlockDeviceList), "EbsOptimized" :: NullOrUndefined (BooleanObject), "ShrinkPolicy" :: NullOrUndefined (ShrinkPolicy), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicyDescription) }) -> InstanceGroup
```

Constructs InstanceGroup's fields from required parameters

#### `InstanceGroupConfig`

``` purescript
newtype InstanceGroupConfig
  = InstanceGroupConfig { "Name" :: NullOrUndefined (XmlStringMaxLen256), "Market" :: NullOrUndefined (MarketType), "InstanceRole" :: InstanceRoleType, "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "InstanceType" :: InstanceType, "InstanceCount" :: Int, "Configurations" :: NullOrUndefined (ConfigurationList), "EbsConfiguration" :: NullOrUndefined (EbsConfiguration), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicy) }
```

<p>Configuration defining a new instance group.</p>

##### Instances
``` purescript
Newtype InstanceGroupConfig _
Generic InstanceGroupConfig _
Show InstanceGroupConfig
Decode InstanceGroupConfig
Encode InstanceGroupConfig
```

#### `newInstanceGroupConfig`

``` purescript
newInstanceGroupConfig :: Int -> InstanceRoleType -> InstanceType -> InstanceGroupConfig
```

Constructs InstanceGroupConfig from required parameters

#### `newInstanceGroupConfig'`

``` purescript
newInstanceGroupConfig' :: Int -> InstanceRoleType -> InstanceType -> ({ "Name" :: NullOrUndefined (XmlStringMaxLen256), "Market" :: NullOrUndefined (MarketType), "InstanceRole" :: InstanceRoleType, "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "InstanceType" :: InstanceType, "InstanceCount" :: Int, "Configurations" :: NullOrUndefined (ConfigurationList), "EbsConfiguration" :: NullOrUndefined (EbsConfiguration), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicy) } -> { "Name" :: NullOrUndefined (XmlStringMaxLen256), "Market" :: NullOrUndefined (MarketType), "InstanceRole" :: InstanceRoleType, "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "InstanceType" :: InstanceType, "InstanceCount" :: Int, "Configurations" :: NullOrUndefined (ConfigurationList), "EbsConfiguration" :: NullOrUndefined (EbsConfiguration), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicy) }) -> InstanceGroupConfig
```

Constructs InstanceGroupConfig's fields from required parameters

#### `InstanceGroupConfigList`

``` purescript
newtype InstanceGroupConfigList
  = InstanceGroupConfigList (Array InstanceGroupConfig)
```

##### Instances
``` purescript
Newtype InstanceGroupConfigList _
Generic InstanceGroupConfigList _
Show InstanceGroupConfigList
Decode InstanceGroupConfigList
Encode InstanceGroupConfigList
```

#### `InstanceGroupDetail`

``` purescript
newtype InstanceGroupDetail
  = InstanceGroupDetail { "InstanceGroupId" :: NullOrUndefined (XmlStringMaxLen256), "Name" :: NullOrUndefined (XmlStringMaxLen256), "Market" :: MarketType, "InstanceRole" :: InstanceRoleType, "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "InstanceType" :: InstanceType, "InstanceRequestCount" :: Int, "InstanceRunningCount" :: Int, "State" :: InstanceGroupState, "LastStateChangeReason" :: NullOrUndefined (XmlString), "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }
```

<p>Detailed information about an instance group.</p>

##### Instances
``` purescript
Newtype InstanceGroupDetail _
Generic InstanceGroupDetail _
Show InstanceGroupDetail
Decode InstanceGroupDetail
Encode InstanceGroupDetail
```

#### `newInstanceGroupDetail`

``` purescript
newInstanceGroupDetail :: Date -> Int -> InstanceRoleType -> Int -> InstanceType -> MarketType -> InstanceGroupState -> InstanceGroupDetail
```

Constructs InstanceGroupDetail from required parameters

#### `newInstanceGroupDetail'`

``` purescript
newInstanceGroupDetail' :: Date -> Int -> InstanceRoleType -> Int -> InstanceType -> MarketType -> InstanceGroupState -> ({ "InstanceGroupId" :: NullOrUndefined (XmlStringMaxLen256), "Name" :: NullOrUndefined (XmlStringMaxLen256), "Market" :: MarketType, "InstanceRole" :: InstanceRoleType, "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "InstanceType" :: InstanceType, "InstanceRequestCount" :: Int, "InstanceRunningCount" :: Int, "State" :: InstanceGroupState, "LastStateChangeReason" :: NullOrUndefined (XmlString), "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) } -> { "InstanceGroupId" :: NullOrUndefined (XmlStringMaxLen256), "Name" :: NullOrUndefined (XmlStringMaxLen256), "Market" :: MarketType, "InstanceRole" :: InstanceRoleType, "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "InstanceType" :: InstanceType, "InstanceRequestCount" :: Int, "InstanceRunningCount" :: Int, "State" :: InstanceGroupState, "LastStateChangeReason" :: NullOrUndefined (XmlString), "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }) -> InstanceGroupDetail
```

Constructs InstanceGroupDetail's fields from required parameters

#### `InstanceGroupDetailList`

``` purescript
newtype InstanceGroupDetailList
  = InstanceGroupDetailList (Array InstanceGroupDetail)
```

##### Instances
``` purescript
Newtype InstanceGroupDetailList _
Generic InstanceGroupDetailList _
Show InstanceGroupDetailList
Decode InstanceGroupDetailList
Encode InstanceGroupDetailList
```

#### `InstanceGroupId`

``` purescript
newtype InstanceGroupId
  = InstanceGroupId String
```

##### Instances
``` purescript
Newtype InstanceGroupId _
Generic InstanceGroupId _
Show InstanceGroupId
Decode InstanceGroupId
Encode InstanceGroupId
```

#### `InstanceGroupIdsList`

``` purescript
newtype InstanceGroupIdsList
  = InstanceGroupIdsList (Array XmlStringMaxLen256)
```

##### Instances
``` purescript
Newtype InstanceGroupIdsList _
Generic InstanceGroupIdsList _
Show InstanceGroupIdsList
Decode InstanceGroupIdsList
Encode InstanceGroupIdsList
```

#### `InstanceGroupList`

``` purescript
newtype InstanceGroupList
  = InstanceGroupList (Array InstanceGroup)
```

##### Instances
``` purescript
Newtype InstanceGroupList _
Generic InstanceGroupList _
Show InstanceGroupList
Decode InstanceGroupList
Encode InstanceGroupList
```

#### `InstanceGroupModifyConfig`

``` purescript
newtype InstanceGroupModifyConfig
  = InstanceGroupModifyConfig { "InstanceGroupId" :: XmlStringMaxLen256, "InstanceCount" :: NullOrUndefined (Int), "EC2InstanceIdsToTerminate" :: NullOrUndefined (EC2InstanceIdsToTerminateList), "ShrinkPolicy" :: NullOrUndefined (ShrinkPolicy) }
```

<p>Modify an instance group size.</p>

##### Instances
``` purescript
Newtype InstanceGroupModifyConfig _
Generic InstanceGroupModifyConfig _
Show InstanceGroupModifyConfig
Decode InstanceGroupModifyConfig
Encode InstanceGroupModifyConfig
```

#### `newInstanceGroupModifyConfig`

``` purescript
newInstanceGroupModifyConfig :: XmlStringMaxLen256 -> InstanceGroupModifyConfig
```

Constructs InstanceGroupModifyConfig from required parameters

#### `newInstanceGroupModifyConfig'`

``` purescript
newInstanceGroupModifyConfig' :: XmlStringMaxLen256 -> ({ "InstanceGroupId" :: XmlStringMaxLen256, "InstanceCount" :: NullOrUndefined (Int), "EC2InstanceIdsToTerminate" :: NullOrUndefined (EC2InstanceIdsToTerminateList), "ShrinkPolicy" :: NullOrUndefined (ShrinkPolicy) } -> { "InstanceGroupId" :: XmlStringMaxLen256, "InstanceCount" :: NullOrUndefined (Int), "EC2InstanceIdsToTerminate" :: NullOrUndefined (EC2InstanceIdsToTerminateList), "ShrinkPolicy" :: NullOrUndefined (ShrinkPolicy) }) -> InstanceGroupModifyConfig
```

Constructs InstanceGroupModifyConfig's fields from required parameters

#### `InstanceGroupModifyConfigList`

``` purescript
newtype InstanceGroupModifyConfigList
  = InstanceGroupModifyConfigList (Array InstanceGroupModifyConfig)
```

##### Instances
``` purescript
Newtype InstanceGroupModifyConfigList _
Generic InstanceGroupModifyConfigList _
Show InstanceGroupModifyConfigList
Decode InstanceGroupModifyConfigList
Encode InstanceGroupModifyConfigList
```

#### `InstanceGroupState`

``` purescript
newtype InstanceGroupState
  = InstanceGroupState String
```

##### Instances
``` purescript
Newtype InstanceGroupState _
Generic InstanceGroupState _
Show InstanceGroupState
Decode InstanceGroupState
Encode InstanceGroupState
```

#### `InstanceGroupStateChangeReason`

``` purescript
newtype InstanceGroupStateChangeReason
  = InstanceGroupStateChangeReason { "Code" :: NullOrUndefined (InstanceGroupStateChangeReasonCode), "Message" :: NullOrUndefined (String) }
```

<p>The status change reason details for the instance group.</p>

##### Instances
``` purescript
Newtype InstanceGroupStateChangeReason _
Generic InstanceGroupStateChangeReason _
Show InstanceGroupStateChangeReason
Decode InstanceGroupStateChangeReason
Encode InstanceGroupStateChangeReason
```

#### `newInstanceGroupStateChangeReason`

``` purescript
newInstanceGroupStateChangeReason :: InstanceGroupStateChangeReason
```

Constructs InstanceGroupStateChangeReason from required parameters

#### `newInstanceGroupStateChangeReason'`

``` purescript
newInstanceGroupStateChangeReason' :: ({ "Code" :: NullOrUndefined (InstanceGroupStateChangeReasonCode), "Message" :: NullOrUndefined (String) } -> { "Code" :: NullOrUndefined (InstanceGroupStateChangeReasonCode), "Message" :: NullOrUndefined (String) }) -> InstanceGroupStateChangeReason
```

Constructs InstanceGroupStateChangeReason's fields from required parameters

#### `InstanceGroupStateChangeReasonCode`

``` purescript
newtype InstanceGroupStateChangeReasonCode
  = InstanceGroupStateChangeReasonCode String
```

##### Instances
``` purescript
Newtype InstanceGroupStateChangeReasonCode _
Generic InstanceGroupStateChangeReasonCode _
Show InstanceGroupStateChangeReasonCode
Decode InstanceGroupStateChangeReasonCode
Encode InstanceGroupStateChangeReasonCode
```

#### `InstanceGroupStatus`

``` purescript
newtype InstanceGroupStatus
  = InstanceGroupStatus { "State" :: NullOrUndefined (InstanceGroupState), "StateChangeReason" :: NullOrUndefined (InstanceGroupStateChangeReason), "Timeline" :: NullOrUndefined (InstanceGroupTimeline) }
```

<p>The details of the instance group status.</p>

##### Instances
``` purescript
Newtype InstanceGroupStatus _
Generic InstanceGroupStatus _
Show InstanceGroupStatus
Decode InstanceGroupStatus
Encode InstanceGroupStatus
```

#### `newInstanceGroupStatus`

``` purescript
newInstanceGroupStatus :: InstanceGroupStatus
```

Constructs InstanceGroupStatus from required parameters

#### `newInstanceGroupStatus'`

``` purescript
newInstanceGroupStatus' :: ({ "State" :: NullOrUndefined (InstanceGroupState), "StateChangeReason" :: NullOrUndefined (InstanceGroupStateChangeReason), "Timeline" :: NullOrUndefined (InstanceGroupTimeline) } -> { "State" :: NullOrUndefined (InstanceGroupState), "StateChangeReason" :: NullOrUndefined (InstanceGroupStateChangeReason), "Timeline" :: NullOrUndefined (InstanceGroupTimeline) }) -> InstanceGroupStatus
```

Constructs InstanceGroupStatus's fields from required parameters

#### `InstanceGroupTimeline`

``` purescript
newtype InstanceGroupTimeline
  = InstanceGroupTimeline { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }
```

<p>The timeline of the instance group lifecycle.</p>

##### Instances
``` purescript
Newtype InstanceGroupTimeline _
Generic InstanceGroupTimeline _
Show InstanceGroupTimeline
Decode InstanceGroupTimeline
Encode InstanceGroupTimeline
```

#### `newInstanceGroupTimeline`

``` purescript
newInstanceGroupTimeline :: InstanceGroupTimeline
```

Constructs InstanceGroupTimeline from required parameters

#### `newInstanceGroupTimeline'`

``` purescript
newInstanceGroupTimeline' :: ({ "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) } -> { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }) -> InstanceGroupTimeline
```

Constructs InstanceGroupTimeline's fields from required parameters

#### `InstanceGroupType`

``` purescript
newtype InstanceGroupType
  = InstanceGroupType String
```

##### Instances
``` purescript
Newtype InstanceGroupType _
Generic InstanceGroupType _
Show InstanceGroupType
Decode InstanceGroupType
Encode InstanceGroupType
```

#### `InstanceGroupTypeList`

``` purescript
newtype InstanceGroupTypeList
  = InstanceGroupTypeList (Array InstanceGroupType)
```

##### Instances
``` purescript
Newtype InstanceGroupTypeList _
Generic InstanceGroupTypeList _
Show InstanceGroupTypeList
Decode InstanceGroupTypeList
Encode InstanceGroupTypeList
```

#### `InstanceId`

``` purescript
newtype InstanceId
  = InstanceId String
```

##### Instances
``` purescript
Newtype InstanceId _
Generic InstanceId _
Show InstanceId
Decode InstanceId
Encode InstanceId
```

#### `InstanceList`

``` purescript
newtype InstanceList
  = InstanceList (Array Instance)
```

##### Instances
``` purescript
Newtype InstanceList _
Generic InstanceList _
Show InstanceList
Decode InstanceList
Encode InstanceList
```

#### `InstanceResizePolicy`

``` purescript
newtype InstanceResizePolicy
  = InstanceResizePolicy { "InstancesToTerminate" :: NullOrUndefined (EC2InstanceIdsList), "InstancesToProtect" :: NullOrUndefined (EC2InstanceIdsList), "InstanceTerminationTimeout" :: NullOrUndefined (Int) }
```

<p>Custom policy for requesting termination protection or termination of specific instances when shrinking an instance group.</p>

##### Instances
``` purescript
Newtype InstanceResizePolicy _
Generic InstanceResizePolicy _
Show InstanceResizePolicy
Decode InstanceResizePolicy
Encode InstanceResizePolicy
```

#### `newInstanceResizePolicy`

``` purescript
newInstanceResizePolicy :: InstanceResizePolicy
```

Constructs InstanceResizePolicy from required parameters

#### `newInstanceResizePolicy'`

``` purescript
newInstanceResizePolicy' :: ({ "InstancesToTerminate" :: NullOrUndefined (EC2InstanceIdsList), "InstancesToProtect" :: NullOrUndefined (EC2InstanceIdsList), "InstanceTerminationTimeout" :: NullOrUndefined (Int) } -> { "InstancesToTerminate" :: NullOrUndefined (EC2InstanceIdsList), "InstancesToProtect" :: NullOrUndefined (EC2InstanceIdsList), "InstanceTerminationTimeout" :: NullOrUndefined (Int) }) -> InstanceResizePolicy
```

Constructs InstanceResizePolicy's fields from required parameters

#### `InstanceRoleType`

``` purescript
newtype InstanceRoleType
  = InstanceRoleType String
```

##### Instances
``` purescript
Newtype InstanceRoleType _
Generic InstanceRoleType _
Show InstanceRoleType
Decode InstanceRoleType
Encode InstanceRoleType
```

#### `InstanceState`

``` purescript
newtype InstanceState
  = InstanceState String
```

##### Instances
``` purescript
Newtype InstanceState _
Generic InstanceState _
Show InstanceState
Decode InstanceState
Encode InstanceState
```

#### `InstanceStateChangeReason`

``` purescript
newtype InstanceStateChangeReason
  = InstanceStateChangeReason { "Code" :: NullOrUndefined (InstanceStateChangeReasonCode), "Message" :: NullOrUndefined (String) }
```

<p>The details of the status change reason for the instance.</p>

##### Instances
``` purescript
Newtype InstanceStateChangeReason _
Generic InstanceStateChangeReason _
Show InstanceStateChangeReason
Decode InstanceStateChangeReason
Encode InstanceStateChangeReason
```

#### `newInstanceStateChangeReason`

``` purescript
newInstanceStateChangeReason :: InstanceStateChangeReason
```

Constructs InstanceStateChangeReason from required parameters

#### `newInstanceStateChangeReason'`

``` purescript
newInstanceStateChangeReason' :: ({ "Code" :: NullOrUndefined (InstanceStateChangeReasonCode), "Message" :: NullOrUndefined (String) } -> { "Code" :: NullOrUndefined (InstanceStateChangeReasonCode), "Message" :: NullOrUndefined (String) }) -> InstanceStateChangeReason
```

Constructs InstanceStateChangeReason's fields from required parameters

#### `InstanceStateChangeReasonCode`

``` purescript
newtype InstanceStateChangeReasonCode
  = InstanceStateChangeReasonCode String
```

##### Instances
``` purescript
Newtype InstanceStateChangeReasonCode _
Generic InstanceStateChangeReasonCode _
Show InstanceStateChangeReasonCode
Decode InstanceStateChangeReasonCode
Encode InstanceStateChangeReasonCode
```

#### `InstanceStateList`

``` purescript
newtype InstanceStateList
  = InstanceStateList (Array InstanceState)
```

##### Instances
``` purescript
Newtype InstanceStateList _
Generic InstanceStateList _
Show InstanceStateList
Decode InstanceStateList
Encode InstanceStateList
```

#### `InstanceStatus`

``` purescript
newtype InstanceStatus
  = InstanceStatus { "State" :: NullOrUndefined (InstanceState), "StateChangeReason" :: NullOrUndefined (InstanceStateChangeReason), "Timeline" :: NullOrUndefined (InstanceTimeline) }
```

<p>The instance status details.</p>

##### Instances
``` purescript
Newtype InstanceStatus _
Generic InstanceStatus _
Show InstanceStatus
Decode InstanceStatus
Encode InstanceStatus
```

#### `newInstanceStatus`

``` purescript
newInstanceStatus :: InstanceStatus
```

Constructs InstanceStatus from required parameters

#### `newInstanceStatus'`

``` purescript
newInstanceStatus' :: ({ "State" :: NullOrUndefined (InstanceState), "StateChangeReason" :: NullOrUndefined (InstanceStateChangeReason), "Timeline" :: NullOrUndefined (InstanceTimeline) } -> { "State" :: NullOrUndefined (InstanceState), "StateChangeReason" :: NullOrUndefined (InstanceStateChangeReason), "Timeline" :: NullOrUndefined (InstanceTimeline) }) -> InstanceStatus
```

Constructs InstanceStatus's fields from required parameters

#### `InstanceTimeline`

``` purescript
newtype InstanceTimeline
  = InstanceTimeline { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }
```

<p>The timeline of the instance lifecycle.</p>

##### Instances
``` purescript
Newtype InstanceTimeline _
Generic InstanceTimeline _
Show InstanceTimeline
Decode InstanceTimeline
Encode InstanceTimeline
```

#### `newInstanceTimeline`

``` purescript
newInstanceTimeline :: InstanceTimeline
```

Constructs InstanceTimeline from required parameters

#### `newInstanceTimeline'`

``` purescript
newInstanceTimeline' :: ({ "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) } -> { "CreationDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }) -> InstanceTimeline
```

Constructs InstanceTimeline's fields from required parameters

#### `InstanceType`

``` purescript
newtype InstanceType
  = InstanceType String
```

##### Instances
``` purescript
Newtype InstanceType _
Generic InstanceType _
Show InstanceType
Decode InstanceType
Encode InstanceType
```

#### `InstanceTypeConfig`

``` purescript
newtype InstanceTypeConfig
  = InstanceTypeConfig { "InstanceType" :: InstanceType, "WeightedCapacity" :: NullOrUndefined (WholeNumber), "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined (NonNegativeDouble), "EbsConfiguration" :: NullOrUndefined (EbsConfiguration), "Configurations" :: NullOrUndefined (ConfigurationList) }
```

<p>An instance type configuration for each instance type in an instance fleet, which determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities. There can be a maximum of 5 instance type configurations in a fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceTypeConfig _
Generic InstanceTypeConfig _
Show InstanceTypeConfig
Decode InstanceTypeConfig
Encode InstanceTypeConfig
```

#### `newInstanceTypeConfig`

``` purescript
newInstanceTypeConfig :: InstanceType -> InstanceTypeConfig
```

Constructs InstanceTypeConfig from required parameters

#### `newInstanceTypeConfig'`

``` purescript
newInstanceTypeConfig' :: InstanceType -> ({ "InstanceType" :: InstanceType, "WeightedCapacity" :: NullOrUndefined (WholeNumber), "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined (NonNegativeDouble), "EbsConfiguration" :: NullOrUndefined (EbsConfiguration), "Configurations" :: NullOrUndefined (ConfigurationList) } -> { "InstanceType" :: InstanceType, "WeightedCapacity" :: NullOrUndefined (WholeNumber), "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined (NonNegativeDouble), "EbsConfiguration" :: NullOrUndefined (EbsConfiguration), "Configurations" :: NullOrUndefined (ConfigurationList) }) -> InstanceTypeConfig
```

Constructs InstanceTypeConfig's fields from required parameters

#### `InstanceTypeConfigList`

``` purescript
newtype InstanceTypeConfigList
  = InstanceTypeConfigList (Array InstanceTypeConfig)
```

##### Instances
``` purescript
Newtype InstanceTypeConfigList _
Generic InstanceTypeConfigList _
Show InstanceTypeConfigList
Decode InstanceTypeConfigList
Encode InstanceTypeConfigList
```

#### `InstanceTypeSpecification`

``` purescript
newtype InstanceTypeSpecification
  = InstanceTypeSpecification { "InstanceType" :: NullOrUndefined (InstanceType), "WeightedCapacity" :: NullOrUndefined (WholeNumber), "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined (NonNegativeDouble), "Configurations" :: NullOrUndefined (ConfigurationList), "EbsBlockDevices" :: NullOrUndefined (EbsBlockDeviceList), "EbsOptimized" :: NullOrUndefined (BooleanObject) }
```

<p>The configuration specification for each instance type in an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype InstanceTypeSpecification _
Generic InstanceTypeSpecification _
Show InstanceTypeSpecification
Decode InstanceTypeSpecification
Encode InstanceTypeSpecification
```

#### `newInstanceTypeSpecification`

``` purescript
newInstanceTypeSpecification :: InstanceTypeSpecification
```

Constructs InstanceTypeSpecification from required parameters

#### `newInstanceTypeSpecification'`

``` purescript
newInstanceTypeSpecification' :: ({ "InstanceType" :: NullOrUndefined (InstanceType), "WeightedCapacity" :: NullOrUndefined (WholeNumber), "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined (NonNegativeDouble), "Configurations" :: NullOrUndefined (ConfigurationList), "EbsBlockDevices" :: NullOrUndefined (EbsBlockDeviceList), "EbsOptimized" :: NullOrUndefined (BooleanObject) } -> { "InstanceType" :: NullOrUndefined (InstanceType), "WeightedCapacity" :: NullOrUndefined (WholeNumber), "BidPrice" :: NullOrUndefined (XmlStringMaxLen256), "BidPriceAsPercentageOfOnDemandPrice" :: NullOrUndefined (NonNegativeDouble), "Configurations" :: NullOrUndefined (ConfigurationList), "EbsBlockDevices" :: NullOrUndefined (EbsBlockDeviceList), "EbsOptimized" :: NullOrUndefined (BooleanObject) }) -> InstanceTypeSpecification
```

Constructs InstanceTypeSpecification's fields from required parameters

#### `InstanceTypeSpecificationList`

``` purescript
newtype InstanceTypeSpecificationList
  = InstanceTypeSpecificationList (Array InstanceTypeSpecification)
```

##### Instances
``` purescript
Newtype InstanceTypeSpecificationList _
Generic InstanceTypeSpecificationList _
Show InstanceTypeSpecificationList
Decode InstanceTypeSpecificationList
Encode InstanceTypeSpecificationList
```

#### `InternalServerError`

``` purescript
newtype InternalServerError
  = InternalServerError NoArguments
```

<p>Indicates that an error occurred while processing the request and that the request was not completed.</p>

##### Instances
``` purescript
Newtype InternalServerError _
Generic InternalServerError _
Show InternalServerError
Decode InternalServerError
Encode InternalServerError
```

#### `InternalServerException`

``` purescript
newtype InternalServerException
  = InternalServerException { "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>This exception occurs when there is an internal failure in the EMR service.</p>

##### Instances
``` purescript
Newtype InternalServerException _
Generic InternalServerException _
Show InternalServerException
Decode InternalServerException
Encode InternalServerException
```

#### `newInternalServerException`

``` purescript
newInternalServerException :: InternalServerException
```

Constructs InternalServerException from required parameters

#### `newInternalServerException'`

``` purescript
newInternalServerException' :: ({ "Message" :: NullOrUndefined (ErrorMessage) } -> { "Message" :: NullOrUndefined (ErrorMessage) }) -> InternalServerException
```

Constructs InternalServerException's fields from required parameters

#### `InvalidRequestException`

``` purescript
newtype InvalidRequestException
  = InvalidRequestException { "ErrorCode" :: NullOrUndefined (ErrorCode), "Message" :: NullOrUndefined (ErrorMessage) }
```

<p>This exception occurs when there is something wrong with user input.</p>

##### Instances
``` purescript
Newtype InvalidRequestException _
Generic InvalidRequestException _
Show InvalidRequestException
Decode InvalidRequestException
Encode InvalidRequestException
```

#### `newInvalidRequestException`

``` purescript
newInvalidRequestException :: InvalidRequestException
```

Constructs InvalidRequestException from required parameters

#### `newInvalidRequestException'`

``` purescript
newInvalidRequestException' :: ({ "ErrorCode" :: NullOrUndefined (ErrorCode), "Message" :: NullOrUndefined (ErrorMessage) } -> { "ErrorCode" :: NullOrUndefined (ErrorCode), "Message" :: NullOrUndefined (ErrorMessage) }) -> InvalidRequestException
```

Constructs InvalidRequestException's fields from required parameters

#### `JobFlowDetail`

``` purescript
newtype JobFlowDetail
  = JobFlowDetail { "JobFlowId" :: XmlStringMaxLen256, "Name" :: XmlStringMaxLen256, "LogUri" :: NullOrUndefined (XmlString), "AmiVersion" :: NullOrUndefined (XmlStringMaxLen256), "ExecutionStatusDetail" :: JobFlowExecutionStatusDetail, "Instances" :: JobFlowInstancesDetail, "Steps" :: NullOrUndefined (StepDetailList), "BootstrapActions" :: NullOrUndefined (BootstrapActionDetailList), "SupportedProducts" :: NullOrUndefined (SupportedProductsList), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "JobFlowRole" :: NullOrUndefined (XmlString), "ServiceRole" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior) }
```

<p>A description of a cluster (job flow).</p>

##### Instances
``` purescript
Newtype JobFlowDetail _
Generic JobFlowDetail _
Show JobFlowDetail
Decode JobFlowDetail
Encode JobFlowDetail
```

#### `newJobFlowDetail`

``` purescript
newJobFlowDetail :: JobFlowExecutionStatusDetail -> JobFlowInstancesDetail -> XmlStringMaxLen256 -> XmlStringMaxLen256 -> JobFlowDetail
```

Constructs JobFlowDetail from required parameters

#### `newJobFlowDetail'`

``` purescript
newJobFlowDetail' :: JobFlowExecutionStatusDetail -> JobFlowInstancesDetail -> XmlStringMaxLen256 -> XmlStringMaxLen256 -> ({ "JobFlowId" :: XmlStringMaxLen256, "Name" :: XmlStringMaxLen256, "LogUri" :: NullOrUndefined (XmlString), "AmiVersion" :: NullOrUndefined (XmlStringMaxLen256), "ExecutionStatusDetail" :: JobFlowExecutionStatusDetail, "Instances" :: JobFlowInstancesDetail, "Steps" :: NullOrUndefined (StepDetailList), "BootstrapActions" :: NullOrUndefined (BootstrapActionDetailList), "SupportedProducts" :: NullOrUndefined (SupportedProductsList), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "JobFlowRole" :: NullOrUndefined (XmlString), "ServiceRole" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior) } -> { "JobFlowId" :: XmlStringMaxLen256, "Name" :: XmlStringMaxLen256, "LogUri" :: NullOrUndefined (XmlString), "AmiVersion" :: NullOrUndefined (XmlStringMaxLen256), "ExecutionStatusDetail" :: JobFlowExecutionStatusDetail, "Instances" :: JobFlowInstancesDetail, "Steps" :: NullOrUndefined (StepDetailList), "BootstrapActions" :: NullOrUndefined (BootstrapActionDetailList), "SupportedProducts" :: NullOrUndefined (SupportedProductsList), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "JobFlowRole" :: NullOrUndefined (XmlString), "ServiceRole" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior) }) -> JobFlowDetail
```

Constructs JobFlowDetail's fields from required parameters

#### `JobFlowDetailList`

``` purescript
newtype JobFlowDetailList
  = JobFlowDetailList (Array JobFlowDetail)
```

##### Instances
``` purescript
Newtype JobFlowDetailList _
Generic JobFlowDetailList _
Show JobFlowDetailList
Decode JobFlowDetailList
Encode JobFlowDetailList
```

#### `JobFlowExecutionState`

``` purescript
newtype JobFlowExecutionState
  = JobFlowExecutionState String
```

<p>The type of instance.</p>

##### Instances
``` purescript
Newtype JobFlowExecutionState _
Generic JobFlowExecutionState _
Show JobFlowExecutionState
Decode JobFlowExecutionState
Encode JobFlowExecutionState
```

#### `JobFlowExecutionStateList`

``` purescript
newtype JobFlowExecutionStateList
  = JobFlowExecutionStateList (Array JobFlowExecutionState)
```

##### Instances
``` purescript
Newtype JobFlowExecutionStateList _
Generic JobFlowExecutionStateList _
Show JobFlowExecutionStateList
Decode JobFlowExecutionStateList
Encode JobFlowExecutionStateList
```

#### `JobFlowExecutionStatusDetail`

``` purescript
newtype JobFlowExecutionStatusDetail
  = JobFlowExecutionStatusDetail { "State" :: JobFlowExecutionState, "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date), "LastStateChangeReason" :: NullOrUndefined (XmlString) }
```

<p>Describes the status of the cluster (job flow).</p>

##### Instances
``` purescript
Newtype JobFlowExecutionStatusDetail _
Generic JobFlowExecutionStatusDetail _
Show JobFlowExecutionStatusDetail
Decode JobFlowExecutionStatusDetail
Encode JobFlowExecutionStatusDetail
```

#### `newJobFlowExecutionStatusDetail`

``` purescript
newJobFlowExecutionStatusDetail :: Date -> JobFlowExecutionState -> JobFlowExecutionStatusDetail
```

Constructs JobFlowExecutionStatusDetail from required parameters

#### `newJobFlowExecutionStatusDetail'`

``` purescript
newJobFlowExecutionStatusDetail' :: Date -> JobFlowExecutionState -> ({ "State" :: JobFlowExecutionState, "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date), "LastStateChangeReason" :: NullOrUndefined (XmlString) } -> { "State" :: JobFlowExecutionState, "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "ReadyDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date), "LastStateChangeReason" :: NullOrUndefined (XmlString) }) -> JobFlowExecutionStatusDetail
```

Constructs JobFlowExecutionStatusDetail's fields from required parameters

#### `JobFlowInstancesConfig`

``` purescript
newtype JobFlowInstancesConfig
  = JobFlowInstancesConfig { "MasterInstanceType" :: NullOrUndefined (InstanceType), "SlaveInstanceType" :: NullOrUndefined (InstanceType), "InstanceCount" :: NullOrUndefined (Int), "InstanceGroups" :: NullOrUndefined (InstanceGroupConfigList), "InstanceFleets" :: NullOrUndefined (InstanceFleetConfigList), "Ec2KeyName" :: NullOrUndefined (XmlStringMaxLen256), "Placement" :: NullOrUndefined (PlacementType), "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "HadoopVersion" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetId" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetIds" :: NullOrUndefined (XmlStringMaxLen256List), "EmrManagedMasterSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "EmrManagedSlaveSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "ServiceAccessSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "AdditionalMasterSecurityGroups" :: NullOrUndefined (SecurityGroupsList), "AdditionalSlaveSecurityGroups" :: NullOrUndefined (SecurityGroupsList) }
```

<p>A description of the Amazon EC2 instance on which the cluster (job flow) runs. A valid JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets, which is the recommended configuration. They cannot be used together. You may also have MasterInstanceType, SlaveInstanceType, and InstanceCount (all three must be present), but we don't recommend this configuration.</p>

##### Instances
``` purescript
Newtype JobFlowInstancesConfig _
Generic JobFlowInstancesConfig _
Show JobFlowInstancesConfig
Decode JobFlowInstancesConfig
Encode JobFlowInstancesConfig
```

#### `newJobFlowInstancesConfig`

``` purescript
newJobFlowInstancesConfig :: JobFlowInstancesConfig
```

Constructs JobFlowInstancesConfig from required parameters

#### `newJobFlowInstancesConfig'`

``` purescript
newJobFlowInstancesConfig' :: ({ "MasterInstanceType" :: NullOrUndefined (InstanceType), "SlaveInstanceType" :: NullOrUndefined (InstanceType), "InstanceCount" :: NullOrUndefined (Int), "InstanceGroups" :: NullOrUndefined (InstanceGroupConfigList), "InstanceFleets" :: NullOrUndefined (InstanceFleetConfigList), "Ec2KeyName" :: NullOrUndefined (XmlStringMaxLen256), "Placement" :: NullOrUndefined (PlacementType), "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "HadoopVersion" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetId" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetIds" :: NullOrUndefined (XmlStringMaxLen256List), "EmrManagedMasterSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "EmrManagedSlaveSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "ServiceAccessSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "AdditionalMasterSecurityGroups" :: NullOrUndefined (SecurityGroupsList), "AdditionalSlaveSecurityGroups" :: NullOrUndefined (SecurityGroupsList) } -> { "MasterInstanceType" :: NullOrUndefined (InstanceType), "SlaveInstanceType" :: NullOrUndefined (InstanceType), "InstanceCount" :: NullOrUndefined (Int), "InstanceGroups" :: NullOrUndefined (InstanceGroupConfigList), "InstanceFleets" :: NullOrUndefined (InstanceFleetConfigList), "Ec2KeyName" :: NullOrUndefined (XmlStringMaxLen256), "Placement" :: NullOrUndefined (PlacementType), "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "HadoopVersion" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetId" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetIds" :: NullOrUndefined (XmlStringMaxLen256List), "EmrManagedMasterSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "EmrManagedSlaveSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "ServiceAccessSecurityGroup" :: NullOrUndefined (XmlStringMaxLen256), "AdditionalMasterSecurityGroups" :: NullOrUndefined (SecurityGroupsList), "AdditionalSlaveSecurityGroups" :: NullOrUndefined (SecurityGroupsList) }) -> JobFlowInstancesConfig
```

Constructs JobFlowInstancesConfig's fields from required parameters

#### `JobFlowInstancesDetail`

``` purescript
newtype JobFlowInstancesDetail
  = JobFlowInstancesDetail { "MasterInstanceType" :: InstanceType, "MasterPublicDnsName" :: NullOrUndefined (XmlString), "MasterInstanceId" :: NullOrUndefined (XmlString), "SlaveInstanceType" :: InstanceType, "InstanceCount" :: Int, "InstanceGroups" :: NullOrUndefined (InstanceGroupDetailList), "NormalizedInstanceHours" :: NullOrUndefined (Int), "Ec2KeyName" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetId" :: NullOrUndefined (XmlStringMaxLen256), "Placement" :: NullOrUndefined (PlacementType), "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "HadoopVersion" :: NullOrUndefined (XmlStringMaxLen256) }
```

<p>Specify the type of Amazon EC2 instances that the cluster (job flow) runs on.</p>

##### Instances
``` purescript
Newtype JobFlowInstancesDetail _
Generic JobFlowInstancesDetail _
Show JobFlowInstancesDetail
Decode JobFlowInstancesDetail
Encode JobFlowInstancesDetail
```

#### `newJobFlowInstancesDetail`

``` purescript
newJobFlowInstancesDetail :: Int -> InstanceType -> InstanceType -> JobFlowInstancesDetail
```

Constructs JobFlowInstancesDetail from required parameters

#### `newJobFlowInstancesDetail'`

``` purescript
newJobFlowInstancesDetail' :: Int -> InstanceType -> InstanceType -> ({ "MasterInstanceType" :: InstanceType, "MasterPublicDnsName" :: NullOrUndefined (XmlString), "MasterInstanceId" :: NullOrUndefined (XmlString), "SlaveInstanceType" :: InstanceType, "InstanceCount" :: Int, "InstanceGroups" :: NullOrUndefined (InstanceGroupDetailList), "NormalizedInstanceHours" :: NullOrUndefined (Int), "Ec2KeyName" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetId" :: NullOrUndefined (XmlStringMaxLen256), "Placement" :: NullOrUndefined (PlacementType), "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "HadoopVersion" :: NullOrUndefined (XmlStringMaxLen256) } -> { "MasterInstanceType" :: InstanceType, "MasterPublicDnsName" :: NullOrUndefined (XmlString), "MasterInstanceId" :: NullOrUndefined (XmlString), "SlaveInstanceType" :: InstanceType, "InstanceCount" :: Int, "InstanceGroups" :: NullOrUndefined (InstanceGroupDetailList), "NormalizedInstanceHours" :: NullOrUndefined (Int), "Ec2KeyName" :: NullOrUndefined (XmlStringMaxLen256), "Ec2SubnetId" :: NullOrUndefined (XmlStringMaxLen256), "Placement" :: NullOrUndefined (PlacementType), "KeepJobFlowAliveWhenNoSteps" :: NullOrUndefined (Boolean), "TerminationProtected" :: NullOrUndefined (Boolean), "HadoopVersion" :: NullOrUndefined (XmlStringMaxLen256) }) -> JobFlowInstancesDetail
```

Constructs JobFlowInstancesDetail's fields from required parameters

#### `KerberosAttributes`

``` purescript
newtype KerberosAttributes
  = KerberosAttributes { "Realm" :: XmlStringMaxLen256, "KdcAdminPassword" :: XmlStringMaxLen256, "CrossRealmTrustPrincipalPassword" :: NullOrUndefined (XmlStringMaxLen256), "ADDomainJoinUser" :: NullOrUndefined (XmlStringMaxLen256), "ADDomainJoinPassword" :: NullOrUndefined (XmlStringMaxLen256) }
```

<p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a> in the <i>EMR Management Guide</i>.</p>

##### Instances
``` purescript
Newtype KerberosAttributes _
Generic KerberosAttributes _
Show KerberosAttributes
Decode KerberosAttributes
Encode KerberosAttributes
```

#### `newKerberosAttributes`

``` purescript
newKerberosAttributes :: XmlStringMaxLen256 -> XmlStringMaxLen256 -> KerberosAttributes
```

Constructs KerberosAttributes from required parameters

#### `newKerberosAttributes'`

``` purescript
newKerberosAttributes' :: XmlStringMaxLen256 -> XmlStringMaxLen256 -> ({ "Realm" :: XmlStringMaxLen256, "KdcAdminPassword" :: XmlStringMaxLen256, "CrossRealmTrustPrincipalPassword" :: NullOrUndefined (XmlStringMaxLen256), "ADDomainJoinUser" :: NullOrUndefined (XmlStringMaxLen256), "ADDomainJoinPassword" :: NullOrUndefined (XmlStringMaxLen256) } -> { "Realm" :: XmlStringMaxLen256, "KdcAdminPassword" :: XmlStringMaxLen256, "CrossRealmTrustPrincipalPassword" :: NullOrUndefined (XmlStringMaxLen256), "ADDomainJoinUser" :: NullOrUndefined (XmlStringMaxLen256), "ADDomainJoinPassword" :: NullOrUndefined (XmlStringMaxLen256) }) -> KerberosAttributes
```

Constructs KerberosAttributes's fields from required parameters

#### `KeyValue`

``` purescript
newtype KeyValue
  = KeyValue { "Key" :: NullOrUndefined (XmlString), "Value" :: NullOrUndefined (XmlString) }
```

<p>A key value pair.</p>

##### Instances
``` purescript
Newtype KeyValue _
Generic KeyValue _
Show KeyValue
Decode KeyValue
Encode KeyValue
```

#### `newKeyValue`

``` purescript
newKeyValue :: KeyValue
```

Constructs KeyValue from required parameters

#### `newKeyValue'`

``` purescript
newKeyValue' :: ({ "Key" :: NullOrUndefined (XmlString), "Value" :: NullOrUndefined (XmlString) } -> { "Key" :: NullOrUndefined (XmlString), "Value" :: NullOrUndefined (XmlString) }) -> KeyValue
```

Constructs KeyValue's fields from required parameters

#### `KeyValueList`

``` purescript
newtype KeyValueList
  = KeyValueList (Array KeyValue)
```

##### Instances
``` purescript
Newtype KeyValueList _
Generic KeyValueList _
Show KeyValueList
Decode KeyValueList
Encode KeyValueList
```

#### `ListBootstrapActionsInput`

``` purescript
newtype ListBootstrapActionsInput
  = ListBootstrapActionsInput { "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) }
```

<p>This input determines which bootstrap actions to retrieve.</p>

##### Instances
``` purescript
Newtype ListBootstrapActionsInput _
Generic ListBootstrapActionsInput _
Show ListBootstrapActionsInput
Decode ListBootstrapActionsInput
Encode ListBootstrapActionsInput
```

#### `newListBootstrapActionsInput`

``` purescript
newListBootstrapActionsInput :: ClusterId -> ListBootstrapActionsInput
```

Constructs ListBootstrapActionsInput from required parameters

#### `newListBootstrapActionsInput'`

``` purescript
newListBootstrapActionsInput' :: ClusterId -> ({ "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) } -> { "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) }) -> ListBootstrapActionsInput
```

Constructs ListBootstrapActionsInput's fields from required parameters

#### `ListBootstrapActionsOutput`

``` purescript
newtype ListBootstrapActionsOutput
  = ListBootstrapActionsOutput { "BootstrapActions" :: NullOrUndefined (CommandList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This output contains the bootstrap actions detail.</p>

##### Instances
``` purescript
Newtype ListBootstrapActionsOutput _
Generic ListBootstrapActionsOutput _
Show ListBootstrapActionsOutput
Decode ListBootstrapActionsOutput
Encode ListBootstrapActionsOutput
```

#### `newListBootstrapActionsOutput`

``` purescript
newListBootstrapActionsOutput :: ListBootstrapActionsOutput
```

Constructs ListBootstrapActionsOutput from required parameters

#### `newListBootstrapActionsOutput'`

``` purescript
newListBootstrapActionsOutput' :: ({ "BootstrapActions" :: NullOrUndefined (CommandList), "Marker" :: NullOrUndefined (Marker) } -> { "BootstrapActions" :: NullOrUndefined (CommandList), "Marker" :: NullOrUndefined (Marker) }) -> ListBootstrapActionsOutput
```

Constructs ListBootstrapActionsOutput's fields from required parameters

#### `ListClustersInput`

``` purescript
newtype ListClustersInput
  = ListClustersInput { "CreatedAfter" :: NullOrUndefined (Date), "CreatedBefore" :: NullOrUndefined (Date), "ClusterStates" :: NullOrUndefined (ClusterStateList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This input determines how the ListClusters action filters the list of clusters that it returns.</p>

##### Instances
``` purescript
Newtype ListClustersInput _
Generic ListClustersInput _
Show ListClustersInput
Decode ListClustersInput
Encode ListClustersInput
```

#### `newListClustersInput`

``` purescript
newListClustersInput :: ListClustersInput
```

Constructs ListClustersInput from required parameters

#### `newListClustersInput'`

``` purescript
newListClustersInput' :: ({ "CreatedAfter" :: NullOrUndefined (Date), "CreatedBefore" :: NullOrUndefined (Date), "ClusterStates" :: NullOrUndefined (ClusterStateList), "Marker" :: NullOrUndefined (Marker) } -> { "CreatedAfter" :: NullOrUndefined (Date), "CreatedBefore" :: NullOrUndefined (Date), "ClusterStates" :: NullOrUndefined (ClusterStateList), "Marker" :: NullOrUndefined (Marker) }) -> ListClustersInput
```

Constructs ListClustersInput's fields from required parameters

#### `ListClustersOutput`

``` purescript
newtype ListClustersOutput
  = ListClustersOutput { "Clusters" :: NullOrUndefined (ClusterSummaryList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This contains a ClusterSummaryList with the cluster details; for example, the cluster IDs, names, and status.</p>

##### Instances
``` purescript
Newtype ListClustersOutput _
Generic ListClustersOutput _
Show ListClustersOutput
Decode ListClustersOutput
Encode ListClustersOutput
```

#### `newListClustersOutput`

``` purescript
newListClustersOutput :: ListClustersOutput
```

Constructs ListClustersOutput from required parameters

#### `newListClustersOutput'`

``` purescript
newListClustersOutput' :: ({ "Clusters" :: NullOrUndefined (ClusterSummaryList), "Marker" :: NullOrUndefined (Marker) } -> { "Clusters" :: NullOrUndefined (ClusterSummaryList), "Marker" :: NullOrUndefined (Marker) }) -> ListClustersOutput
```

Constructs ListClustersOutput's fields from required parameters

#### `ListInstanceFleetsInput`

``` purescript
newtype ListInstanceFleetsInput
  = ListInstanceFleetsInput { "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListInstanceFleetsInput _
Generic ListInstanceFleetsInput _
Show ListInstanceFleetsInput
Decode ListInstanceFleetsInput
Encode ListInstanceFleetsInput
```

#### `newListInstanceFleetsInput`

``` purescript
newListInstanceFleetsInput :: ClusterId -> ListInstanceFleetsInput
```

Constructs ListInstanceFleetsInput from required parameters

#### `newListInstanceFleetsInput'`

``` purescript
newListInstanceFleetsInput' :: ClusterId -> ({ "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) } -> { "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) }) -> ListInstanceFleetsInput
```

Constructs ListInstanceFleetsInput's fields from required parameters

#### `ListInstanceFleetsOutput`

``` purescript
newtype ListInstanceFleetsOutput
  = ListInstanceFleetsOutput { "InstanceFleets" :: NullOrUndefined (InstanceFleetList), "Marker" :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListInstanceFleetsOutput _
Generic ListInstanceFleetsOutput _
Show ListInstanceFleetsOutput
Decode ListInstanceFleetsOutput
Encode ListInstanceFleetsOutput
```

#### `newListInstanceFleetsOutput`

``` purescript
newListInstanceFleetsOutput :: ListInstanceFleetsOutput
```

Constructs ListInstanceFleetsOutput from required parameters

#### `newListInstanceFleetsOutput'`

``` purescript
newListInstanceFleetsOutput' :: ({ "InstanceFleets" :: NullOrUndefined (InstanceFleetList), "Marker" :: NullOrUndefined (Marker) } -> { "InstanceFleets" :: NullOrUndefined (InstanceFleetList), "Marker" :: NullOrUndefined (Marker) }) -> ListInstanceFleetsOutput
```

Constructs ListInstanceFleetsOutput's fields from required parameters

#### `ListInstanceGroupsInput`

``` purescript
newtype ListInstanceGroupsInput
  = ListInstanceGroupsInput { "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) }
```

<p>This input determines which instance groups to retrieve.</p>

##### Instances
``` purescript
Newtype ListInstanceGroupsInput _
Generic ListInstanceGroupsInput _
Show ListInstanceGroupsInput
Decode ListInstanceGroupsInput
Encode ListInstanceGroupsInput
```

#### `newListInstanceGroupsInput`

``` purescript
newListInstanceGroupsInput :: ClusterId -> ListInstanceGroupsInput
```

Constructs ListInstanceGroupsInput from required parameters

#### `newListInstanceGroupsInput'`

``` purescript
newListInstanceGroupsInput' :: ClusterId -> ({ "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) } -> { "ClusterId" :: ClusterId, "Marker" :: NullOrUndefined (Marker) }) -> ListInstanceGroupsInput
```

Constructs ListInstanceGroupsInput's fields from required parameters

#### `ListInstanceGroupsOutput`

``` purescript
newtype ListInstanceGroupsOutput
  = ListInstanceGroupsOutput { "InstanceGroups" :: NullOrUndefined (InstanceGroupList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This input determines which instance groups to retrieve.</p>

##### Instances
``` purescript
Newtype ListInstanceGroupsOutput _
Generic ListInstanceGroupsOutput _
Show ListInstanceGroupsOutput
Decode ListInstanceGroupsOutput
Encode ListInstanceGroupsOutput
```

#### `newListInstanceGroupsOutput`

``` purescript
newListInstanceGroupsOutput :: ListInstanceGroupsOutput
```

Constructs ListInstanceGroupsOutput from required parameters

#### `newListInstanceGroupsOutput'`

``` purescript
newListInstanceGroupsOutput' :: ({ "InstanceGroups" :: NullOrUndefined (InstanceGroupList), "Marker" :: NullOrUndefined (Marker) } -> { "InstanceGroups" :: NullOrUndefined (InstanceGroupList), "Marker" :: NullOrUndefined (Marker) }) -> ListInstanceGroupsOutput
```

Constructs ListInstanceGroupsOutput's fields from required parameters

#### `ListInstancesInput`

``` purescript
newtype ListInstancesInput
  = ListInstancesInput { "ClusterId" :: ClusterId, "InstanceGroupId" :: NullOrUndefined (InstanceGroupId), "InstanceGroupTypes" :: NullOrUndefined (InstanceGroupTypeList), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId), "InstanceFleetType" :: NullOrUndefined (InstanceFleetType), "InstanceStates" :: NullOrUndefined (InstanceStateList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This input determines which instances to list.</p>

##### Instances
``` purescript
Newtype ListInstancesInput _
Generic ListInstancesInput _
Show ListInstancesInput
Decode ListInstancesInput
Encode ListInstancesInput
```

#### `newListInstancesInput`

``` purescript
newListInstancesInput :: ClusterId -> ListInstancesInput
```

Constructs ListInstancesInput from required parameters

#### `newListInstancesInput'`

``` purescript
newListInstancesInput' :: ClusterId -> ({ "ClusterId" :: ClusterId, "InstanceGroupId" :: NullOrUndefined (InstanceGroupId), "InstanceGroupTypes" :: NullOrUndefined (InstanceGroupTypeList), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId), "InstanceFleetType" :: NullOrUndefined (InstanceFleetType), "InstanceStates" :: NullOrUndefined (InstanceStateList), "Marker" :: NullOrUndefined (Marker) } -> { "ClusterId" :: ClusterId, "InstanceGroupId" :: NullOrUndefined (InstanceGroupId), "InstanceGroupTypes" :: NullOrUndefined (InstanceGroupTypeList), "InstanceFleetId" :: NullOrUndefined (InstanceFleetId), "InstanceFleetType" :: NullOrUndefined (InstanceFleetType), "InstanceStates" :: NullOrUndefined (InstanceStateList), "Marker" :: NullOrUndefined (Marker) }) -> ListInstancesInput
```

Constructs ListInstancesInput's fields from required parameters

#### `ListInstancesOutput`

``` purescript
newtype ListInstancesOutput
  = ListInstancesOutput { "Instances" :: NullOrUndefined (InstanceList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This output contains the list of instances.</p>

##### Instances
``` purescript
Newtype ListInstancesOutput _
Generic ListInstancesOutput _
Show ListInstancesOutput
Decode ListInstancesOutput
Encode ListInstancesOutput
```

#### `newListInstancesOutput`

``` purescript
newListInstancesOutput :: ListInstancesOutput
```

Constructs ListInstancesOutput from required parameters

#### `newListInstancesOutput'`

``` purescript
newListInstancesOutput' :: ({ "Instances" :: NullOrUndefined (InstanceList), "Marker" :: NullOrUndefined (Marker) } -> { "Instances" :: NullOrUndefined (InstanceList), "Marker" :: NullOrUndefined (Marker) }) -> ListInstancesOutput
```

Constructs ListInstancesOutput's fields from required parameters

#### `ListSecurityConfigurationsInput`

``` purescript
newtype ListSecurityConfigurationsInput
  = ListSecurityConfigurationsInput { "Marker" :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListSecurityConfigurationsInput _
Generic ListSecurityConfigurationsInput _
Show ListSecurityConfigurationsInput
Decode ListSecurityConfigurationsInput
Encode ListSecurityConfigurationsInput
```

#### `newListSecurityConfigurationsInput`

``` purescript
newListSecurityConfigurationsInput :: ListSecurityConfigurationsInput
```

Constructs ListSecurityConfigurationsInput from required parameters

#### `newListSecurityConfigurationsInput'`

``` purescript
newListSecurityConfigurationsInput' :: ({ "Marker" :: NullOrUndefined (Marker) } -> { "Marker" :: NullOrUndefined (Marker) }) -> ListSecurityConfigurationsInput
```

Constructs ListSecurityConfigurationsInput's fields from required parameters

#### `ListSecurityConfigurationsOutput`

``` purescript
newtype ListSecurityConfigurationsOutput
  = ListSecurityConfigurationsOutput { "SecurityConfigurations" :: NullOrUndefined (SecurityConfigurationList), "Marker" :: NullOrUndefined (Marker) }
```

##### Instances
``` purescript
Newtype ListSecurityConfigurationsOutput _
Generic ListSecurityConfigurationsOutput _
Show ListSecurityConfigurationsOutput
Decode ListSecurityConfigurationsOutput
Encode ListSecurityConfigurationsOutput
```

#### `newListSecurityConfigurationsOutput`

``` purescript
newListSecurityConfigurationsOutput :: ListSecurityConfigurationsOutput
```

Constructs ListSecurityConfigurationsOutput from required parameters

#### `newListSecurityConfigurationsOutput'`

``` purescript
newListSecurityConfigurationsOutput' :: ({ "SecurityConfigurations" :: NullOrUndefined (SecurityConfigurationList), "Marker" :: NullOrUndefined (Marker) } -> { "SecurityConfigurations" :: NullOrUndefined (SecurityConfigurationList), "Marker" :: NullOrUndefined (Marker) }) -> ListSecurityConfigurationsOutput
```

Constructs ListSecurityConfigurationsOutput's fields from required parameters

#### `ListStepsInput`

``` purescript
newtype ListStepsInput
  = ListStepsInput { "ClusterId" :: ClusterId, "StepStates" :: NullOrUndefined (StepStateList), "StepIds" :: NullOrUndefined (XmlStringList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This input determines which steps to list.</p>

##### Instances
``` purescript
Newtype ListStepsInput _
Generic ListStepsInput _
Show ListStepsInput
Decode ListStepsInput
Encode ListStepsInput
```

#### `newListStepsInput`

``` purescript
newListStepsInput :: ClusterId -> ListStepsInput
```

Constructs ListStepsInput from required parameters

#### `newListStepsInput'`

``` purescript
newListStepsInput' :: ClusterId -> ({ "ClusterId" :: ClusterId, "StepStates" :: NullOrUndefined (StepStateList), "StepIds" :: NullOrUndefined (XmlStringList), "Marker" :: NullOrUndefined (Marker) } -> { "ClusterId" :: ClusterId, "StepStates" :: NullOrUndefined (StepStateList), "StepIds" :: NullOrUndefined (XmlStringList), "Marker" :: NullOrUndefined (Marker) }) -> ListStepsInput
```

Constructs ListStepsInput's fields from required parameters

#### `ListStepsOutput`

``` purescript
newtype ListStepsOutput
  = ListStepsOutput { "Steps" :: NullOrUndefined (StepSummaryList), "Marker" :: NullOrUndefined (Marker) }
```

<p>This output contains the list of steps returned in reverse order. This means that the last step is the first element in the list.</p>

##### Instances
``` purescript
Newtype ListStepsOutput _
Generic ListStepsOutput _
Show ListStepsOutput
Decode ListStepsOutput
Encode ListStepsOutput
```

#### `newListStepsOutput`

``` purescript
newListStepsOutput :: ListStepsOutput
```

Constructs ListStepsOutput from required parameters

#### `newListStepsOutput'`

``` purescript
newListStepsOutput' :: ({ "Steps" :: NullOrUndefined (StepSummaryList), "Marker" :: NullOrUndefined (Marker) } -> { "Steps" :: NullOrUndefined (StepSummaryList), "Marker" :: NullOrUndefined (Marker) }) -> ListStepsOutput
```

Constructs ListStepsOutput's fields from required parameters

#### `Marker`

``` purescript
newtype Marker
  = Marker String
```

##### Instances
``` purescript
Newtype Marker _
Generic Marker _
Show Marker
Decode Marker
Encode Marker
```

#### `MarketType`

``` purescript
newtype MarketType
  = MarketType String
```

##### Instances
``` purescript
Newtype MarketType _
Generic MarketType _
Show MarketType
Decode MarketType
Encode MarketType
```

#### `MetricDimension`

``` purescript
newtype MetricDimension
  = MetricDimension { "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }
```

<p>A CloudWatch dimension, which is specified using a <code>Key</code> (known as a <code>Name</code> in CloudWatch), <code>Value</code> pair. By default, Amazon EMR uses one dimension whose <code>Key</code> is <code>JobFlowID</code> and <code>Value</code> is a variable representing the cluster ID, which is <code>${emr.clusterId}</code>. This enables the rule to bootstrap when the cluster ID becomes available.</p>

##### Instances
``` purescript
Newtype MetricDimension _
Generic MetricDimension _
Show MetricDimension
Decode MetricDimension
Encode MetricDimension
```

#### `newMetricDimension`

``` purescript
newMetricDimension :: MetricDimension
```

Constructs MetricDimension from required parameters

#### `newMetricDimension'`

``` purescript
newMetricDimension' :: ({ "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) } -> { "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }) -> MetricDimension
```

Constructs MetricDimension's fields from required parameters

#### `MetricDimensionList`

``` purescript
newtype MetricDimensionList
  = MetricDimensionList (Array MetricDimension)
```

##### Instances
``` purescript
Newtype MetricDimensionList _
Generic MetricDimensionList _
Show MetricDimensionList
Decode MetricDimensionList
Encode MetricDimensionList
```

#### `ModifyInstanceFleetInput`

``` purescript
newtype ModifyInstanceFleetInput
  = ModifyInstanceFleetInput { "ClusterId" :: ClusterId, "InstanceFleet" :: InstanceFleetModifyConfig }
```

##### Instances
``` purescript
Newtype ModifyInstanceFleetInput _
Generic ModifyInstanceFleetInput _
Show ModifyInstanceFleetInput
Decode ModifyInstanceFleetInput
Encode ModifyInstanceFleetInput
```

#### `newModifyInstanceFleetInput`

``` purescript
newModifyInstanceFleetInput :: ClusterId -> InstanceFleetModifyConfig -> ModifyInstanceFleetInput
```

Constructs ModifyInstanceFleetInput from required parameters

#### `newModifyInstanceFleetInput'`

``` purescript
newModifyInstanceFleetInput' :: ClusterId -> InstanceFleetModifyConfig -> ({ "ClusterId" :: ClusterId, "InstanceFleet" :: InstanceFleetModifyConfig } -> { "ClusterId" :: ClusterId, "InstanceFleet" :: InstanceFleetModifyConfig }) -> ModifyInstanceFleetInput
```

Constructs ModifyInstanceFleetInput's fields from required parameters

#### `ModifyInstanceGroupsInput`

``` purescript
newtype ModifyInstanceGroupsInput
  = ModifyInstanceGroupsInput { "ClusterId" :: NullOrUndefined (ClusterId), "InstanceGroups" :: NullOrUndefined (InstanceGroupModifyConfigList) }
```

<p>Change the size of some instance groups.</p>

##### Instances
``` purescript
Newtype ModifyInstanceGroupsInput _
Generic ModifyInstanceGroupsInput _
Show ModifyInstanceGroupsInput
Decode ModifyInstanceGroupsInput
Encode ModifyInstanceGroupsInput
```

#### `newModifyInstanceGroupsInput`

``` purescript
newModifyInstanceGroupsInput :: ModifyInstanceGroupsInput
```

Constructs ModifyInstanceGroupsInput from required parameters

#### `newModifyInstanceGroupsInput'`

``` purescript
newModifyInstanceGroupsInput' :: ({ "ClusterId" :: NullOrUndefined (ClusterId), "InstanceGroups" :: NullOrUndefined (InstanceGroupModifyConfigList) } -> { "ClusterId" :: NullOrUndefined (ClusterId), "InstanceGroups" :: NullOrUndefined (InstanceGroupModifyConfigList) }) -> ModifyInstanceGroupsInput
```

Constructs ModifyInstanceGroupsInput's fields from required parameters

#### `NewSupportedProductsList`

``` purescript
newtype NewSupportedProductsList
  = NewSupportedProductsList (Array SupportedProductConfig)
```

##### Instances
``` purescript
Newtype NewSupportedProductsList _
Generic NewSupportedProductsList _
Show NewSupportedProductsList
Decode NewSupportedProductsList
Encode NewSupportedProductsList
```

#### `NonNegativeDouble`

``` purescript
newtype NonNegativeDouble
  = NonNegativeDouble Number
```

##### Instances
``` purescript
Newtype NonNegativeDouble _
Generic NonNegativeDouble _
Show NonNegativeDouble
Decode NonNegativeDouble
Encode NonNegativeDouble
```

#### `PlacementType`

``` purescript
newtype PlacementType
  = PlacementType { "AvailabilityZone" :: NullOrUndefined (XmlString), "AvailabilityZones" :: NullOrUndefined (XmlStringMaxLen256List) }
```

<p>The Amazon EC2 Availability Zone configuration of the cluster (job flow).</p>

##### Instances
``` purescript
Newtype PlacementType _
Generic PlacementType _
Show PlacementType
Decode PlacementType
Encode PlacementType
```

#### `newPlacementType`

``` purescript
newPlacementType :: PlacementType
```

Constructs PlacementType from required parameters

#### `newPlacementType'`

``` purescript
newPlacementType' :: ({ "AvailabilityZone" :: NullOrUndefined (XmlString), "AvailabilityZones" :: NullOrUndefined (XmlStringMaxLen256List) } -> { "AvailabilityZone" :: NullOrUndefined (XmlString), "AvailabilityZones" :: NullOrUndefined (XmlStringMaxLen256List) }) -> PlacementType
```

Constructs PlacementType's fields from required parameters

#### `PutAutoScalingPolicyInput`

``` purescript
newtype PutAutoScalingPolicyInput
  = PutAutoScalingPolicyInput { "ClusterId" :: ClusterId, "InstanceGroupId" :: InstanceGroupId, "AutoScalingPolicy" :: AutoScalingPolicy }
```

##### Instances
``` purescript
Newtype PutAutoScalingPolicyInput _
Generic PutAutoScalingPolicyInput _
Show PutAutoScalingPolicyInput
Decode PutAutoScalingPolicyInput
Encode PutAutoScalingPolicyInput
```

#### `newPutAutoScalingPolicyInput`

``` purescript
newPutAutoScalingPolicyInput :: AutoScalingPolicy -> ClusterId -> InstanceGroupId -> PutAutoScalingPolicyInput
```

Constructs PutAutoScalingPolicyInput from required parameters

#### `newPutAutoScalingPolicyInput'`

``` purescript
newPutAutoScalingPolicyInput' :: AutoScalingPolicy -> ClusterId -> InstanceGroupId -> ({ "ClusterId" :: ClusterId, "InstanceGroupId" :: InstanceGroupId, "AutoScalingPolicy" :: AutoScalingPolicy } -> { "ClusterId" :: ClusterId, "InstanceGroupId" :: InstanceGroupId, "AutoScalingPolicy" :: AutoScalingPolicy }) -> PutAutoScalingPolicyInput
```

Constructs PutAutoScalingPolicyInput's fields from required parameters

#### `PutAutoScalingPolicyOutput`

``` purescript
newtype PutAutoScalingPolicyOutput
  = PutAutoScalingPolicyOutput { "ClusterId" :: NullOrUndefined (ClusterId), "InstanceGroupId" :: NullOrUndefined (InstanceGroupId), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicyDescription) }
```

##### Instances
``` purescript
Newtype PutAutoScalingPolicyOutput _
Generic PutAutoScalingPolicyOutput _
Show PutAutoScalingPolicyOutput
Decode PutAutoScalingPolicyOutput
Encode PutAutoScalingPolicyOutput
```

#### `newPutAutoScalingPolicyOutput`

``` purescript
newPutAutoScalingPolicyOutput :: PutAutoScalingPolicyOutput
```

Constructs PutAutoScalingPolicyOutput from required parameters

#### `newPutAutoScalingPolicyOutput'`

``` purescript
newPutAutoScalingPolicyOutput' :: ({ "ClusterId" :: NullOrUndefined (ClusterId), "InstanceGroupId" :: NullOrUndefined (InstanceGroupId), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicyDescription) } -> { "ClusterId" :: NullOrUndefined (ClusterId), "InstanceGroupId" :: NullOrUndefined (InstanceGroupId), "AutoScalingPolicy" :: NullOrUndefined (AutoScalingPolicyDescription) }) -> PutAutoScalingPolicyOutput
```

Constructs PutAutoScalingPolicyOutput's fields from required parameters

#### `RemoveAutoScalingPolicyInput`

``` purescript
newtype RemoveAutoScalingPolicyInput
  = RemoveAutoScalingPolicyInput { "ClusterId" :: ClusterId, "InstanceGroupId" :: InstanceGroupId }
```

##### Instances
``` purescript
Newtype RemoveAutoScalingPolicyInput _
Generic RemoveAutoScalingPolicyInput _
Show RemoveAutoScalingPolicyInput
Decode RemoveAutoScalingPolicyInput
Encode RemoveAutoScalingPolicyInput
```

#### `newRemoveAutoScalingPolicyInput`

``` purescript
newRemoveAutoScalingPolicyInput :: ClusterId -> InstanceGroupId -> RemoveAutoScalingPolicyInput
```

Constructs RemoveAutoScalingPolicyInput from required parameters

#### `newRemoveAutoScalingPolicyInput'`

``` purescript
newRemoveAutoScalingPolicyInput' :: ClusterId -> InstanceGroupId -> ({ "ClusterId" :: ClusterId, "InstanceGroupId" :: InstanceGroupId } -> { "ClusterId" :: ClusterId, "InstanceGroupId" :: InstanceGroupId }) -> RemoveAutoScalingPolicyInput
```

Constructs RemoveAutoScalingPolicyInput's fields from required parameters

#### `RemoveAutoScalingPolicyOutput`

``` purescript
newtype RemoveAutoScalingPolicyOutput
  = RemoveAutoScalingPolicyOutput NoArguments
```

##### Instances
``` purescript
Newtype RemoveAutoScalingPolicyOutput _
Generic RemoveAutoScalingPolicyOutput _
Show RemoveAutoScalingPolicyOutput
Decode RemoveAutoScalingPolicyOutput
Encode RemoveAutoScalingPolicyOutput
```

#### `RemoveTagsInput`

``` purescript
newtype RemoveTagsInput
  = RemoveTagsInput { "ResourceId" :: ResourceId, "TagKeys" :: StringList }
```

<p>This input identifies a cluster and a list of tags to remove.</p>

##### Instances
``` purescript
Newtype RemoveTagsInput _
Generic RemoveTagsInput _
Show RemoveTagsInput
Decode RemoveTagsInput
Encode RemoveTagsInput
```

#### `newRemoveTagsInput`

``` purescript
newRemoveTagsInput :: ResourceId -> StringList -> RemoveTagsInput
```

Constructs RemoveTagsInput from required parameters

#### `newRemoveTagsInput'`

``` purescript
newRemoveTagsInput' :: ResourceId -> StringList -> ({ "ResourceId" :: ResourceId, "TagKeys" :: StringList } -> { "ResourceId" :: ResourceId, "TagKeys" :: StringList }) -> RemoveTagsInput
```

Constructs RemoveTagsInput's fields from required parameters

#### `RemoveTagsOutput`

``` purescript
newtype RemoveTagsOutput
  = RemoveTagsOutput NoArguments
```

<p>This output indicates the result of removing tags from a resource.</p>

##### Instances
``` purescript
Newtype RemoveTagsOutput _
Generic RemoveTagsOutput _
Show RemoveTagsOutput
Decode RemoveTagsOutput
Encode RemoveTagsOutput
```

#### `RepoUpgradeOnBoot`

``` purescript
newtype RepoUpgradeOnBoot
  = RepoUpgradeOnBoot String
```

##### Instances
``` purescript
Newtype RepoUpgradeOnBoot _
Generic RepoUpgradeOnBoot _
Show RepoUpgradeOnBoot
Decode RepoUpgradeOnBoot
Encode RepoUpgradeOnBoot
```

#### `ResourceId`

``` purescript
newtype ResourceId
  = ResourceId String
```

##### Instances
``` purescript
Newtype ResourceId _
Generic ResourceId _
Show ResourceId
Decode ResourceId
Encode ResourceId
```

#### `RunJobFlowInput`

``` purescript
newtype RunJobFlowInput
  = RunJobFlowInput { "Name" :: XmlStringMaxLen256, "LogUri" :: NullOrUndefined (XmlString), "AdditionalInfo" :: NullOrUndefined (XmlString), "AmiVersion" :: NullOrUndefined (XmlStringMaxLen256), "ReleaseLabel" :: NullOrUndefined (XmlStringMaxLen256), "Instances" :: JobFlowInstancesConfig, "Steps" :: NullOrUndefined (StepConfigList), "BootstrapActions" :: NullOrUndefined (BootstrapActionConfigList), "SupportedProducts" :: NullOrUndefined (SupportedProductsList), "NewSupportedProducts" :: NullOrUndefined (NewSupportedProductsList), "Applications" :: NullOrUndefined (ApplicationList), "Configurations" :: NullOrUndefined (ConfigurationList), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "JobFlowRole" :: NullOrUndefined (XmlString), "ServiceRole" :: NullOrUndefined (XmlString), "Tags" :: NullOrUndefined (TagList), "SecurityConfiguration" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior), "CustomAmiId" :: NullOrUndefined (XmlStringMaxLen256), "EbsRootVolumeSize" :: NullOrUndefined (Int), "RepoUpgradeOnBoot" :: NullOrUndefined (RepoUpgradeOnBoot), "KerberosAttributes" :: NullOrUndefined (KerberosAttributes) }
```

<p> Input to the <a>RunJobFlow</a> operation. </p>

##### Instances
``` purescript
Newtype RunJobFlowInput _
Generic RunJobFlowInput _
Show RunJobFlowInput
Decode RunJobFlowInput
Encode RunJobFlowInput
```

#### `newRunJobFlowInput`

``` purescript
newRunJobFlowInput :: JobFlowInstancesConfig -> XmlStringMaxLen256 -> RunJobFlowInput
```

Constructs RunJobFlowInput from required parameters

#### `newRunJobFlowInput'`

``` purescript
newRunJobFlowInput' :: JobFlowInstancesConfig -> XmlStringMaxLen256 -> ({ "Name" :: XmlStringMaxLen256, "LogUri" :: NullOrUndefined (XmlString), "AdditionalInfo" :: NullOrUndefined (XmlString), "AmiVersion" :: NullOrUndefined (XmlStringMaxLen256), "ReleaseLabel" :: NullOrUndefined (XmlStringMaxLen256), "Instances" :: JobFlowInstancesConfig, "Steps" :: NullOrUndefined (StepConfigList), "BootstrapActions" :: NullOrUndefined (BootstrapActionConfigList), "SupportedProducts" :: NullOrUndefined (SupportedProductsList), "NewSupportedProducts" :: NullOrUndefined (NewSupportedProductsList), "Applications" :: NullOrUndefined (ApplicationList), "Configurations" :: NullOrUndefined (ConfigurationList), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "JobFlowRole" :: NullOrUndefined (XmlString), "ServiceRole" :: NullOrUndefined (XmlString), "Tags" :: NullOrUndefined (TagList), "SecurityConfiguration" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior), "CustomAmiId" :: NullOrUndefined (XmlStringMaxLen256), "EbsRootVolumeSize" :: NullOrUndefined (Int), "RepoUpgradeOnBoot" :: NullOrUndefined (RepoUpgradeOnBoot), "KerberosAttributes" :: NullOrUndefined (KerberosAttributes) } -> { "Name" :: XmlStringMaxLen256, "LogUri" :: NullOrUndefined (XmlString), "AdditionalInfo" :: NullOrUndefined (XmlString), "AmiVersion" :: NullOrUndefined (XmlStringMaxLen256), "ReleaseLabel" :: NullOrUndefined (XmlStringMaxLen256), "Instances" :: JobFlowInstancesConfig, "Steps" :: NullOrUndefined (StepConfigList), "BootstrapActions" :: NullOrUndefined (BootstrapActionConfigList), "SupportedProducts" :: NullOrUndefined (SupportedProductsList), "NewSupportedProducts" :: NullOrUndefined (NewSupportedProductsList), "Applications" :: NullOrUndefined (ApplicationList), "Configurations" :: NullOrUndefined (ConfigurationList), "VisibleToAllUsers" :: NullOrUndefined (Boolean), "JobFlowRole" :: NullOrUndefined (XmlString), "ServiceRole" :: NullOrUndefined (XmlString), "Tags" :: NullOrUndefined (TagList), "SecurityConfiguration" :: NullOrUndefined (XmlString), "AutoScalingRole" :: NullOrUndefined (XmlString), "ScaleDownBehavior" :: NullOrUndefined (ScaleDownBehavior), "CustomAmiId" :: NullOrUndefined (XmlStringMaxLen256), "EbsRootVolumeSize" :: NullOrUndefined (Int), "RepoUpgradeOnBoot" :: NullOrUndefined (RepoUpgradeOnBoot), "KerberosAttributes" :: NullOrUndefined (KerberosAttributes) }) -> RunJobFlowInput
```

Constructs RunJobFlowInput's fields from required parameters

#### `RunJobFlowOutput`

``` purescript
newtype RunJobFlowOutput
  = RunJobFlowOutput { "JobFlowId" :: NullOrUndefined (XmlStringMaxLen256) }
```

<p> The result of the <a>RunJobFlow</a> operation. </p>

##### Instances
``` purescript
Newtype RunJobFlowOutput _
Generic RunJobFlowOutput _
Show RunJobFlowOutput
Decode RunJobFlowOutput
Encode RunJobFlowOutput
```

#### `newRunJobFlowOutput`

``` purescript
newRunJobFlowOutput :: RunJobFlowOutput
```

Constructs RunJobFlowOutput from required parameters

#### `newRunJobFlowOutput'`

``` purescript
newRunJobFlowOutput' :: ({ "JobFlowId" :: NullOrUndefined (XmlStringMaxLen256) } -> { "JobFlowId" :: NullOrUndefined (XmlStringMaxLen256) }) -> RunJobFlowOutput
```

Constructs RunJobFlowOutput's fields from required parameters

#### `ScaleDownBehavior`

``` purescript
newtype ScaleDownBehavior
  = ScaleDownBehavior String
```

##### Instances
``` purescript
Newtype ScaleDownBehavior _
Generic ScaleDownBehavior _
Show ScaleDownBehavior
Decode ScaleDownBehavior
Encode ScaleDownBehavior
```

#### `ScalingAction`

``` purescript
newtype ScalingAction
  = ScalingAction { "Market" :: NullOrUndefined (MarketType), "SimpleScalingPolicyConfiguration" :: SimpleScalingPolicyConfiguration }
```

<p>The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.</p>

##### Instances
``` purescript
Newtype ScalingAction _
Generic ScalingAction _
Show ScalingAction
Decode ScalingAction
Encode ScalingAction
```

#### `newScalingAction`

``` purescript
newScalingAction :: SimpleScalingPolicyConfiguration -> ScalingAction
```

Constructs ScalingAction from required parameters

#### `newScalingAction'`

``` purescript
newScalingAction' :: SimpleScalingPolicyConfiguration -> ({ "Market" :: NullOrUndefined (MarketType), "SimpleScalingPolicyConfiguration" :: SimpleScalingPolicyConfiguration } -> { "Market" :: NullOrUndefined (MarketType), "SimpleScalingPolicyConfiguration" :: SimpleScalingPolicyConfiguration }) -> ScalingAction
```

Constructs ScalingAction's fields from required parameters

#### `ScalingConstraints`

``` purescript
newtype ScalingConstraints
  = ScalingConstraints { "MinCapacity" :: Int, "MaxCapacity" :: Int }
```

<p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activities triggered by automatic scaling rules will not cause an instance group to grow above or below these limits.</p>

##### Instances
``` purescript
Newtype ScalingConstraints _
Generic ScalingConstraints _
Show ScalingConstraints
Decode ScalingConstraints
Encode ScalingConstraints
```

#### `newScalingConstraints`

``` purescript
newScalingConstraints :: Int -> Int -> ScalingConstraints
```

Constructs ScalingConstraints from required parameters

#### `newScalingConstraints'`

``` purescript
newScalingConstraints' :: Int -> Int -> ({ "MinCapacity" :: Int, "MaxCapacity" :: Int } -> { "MinCapacity" :: Int, "MaxCapacity" :: Int }) -> ScalingConstraints
```

Constructs ScalingConstraints's fields from required parameters

#### `ScalingRule`

``` purescript
newtype ScalingRule
  = ScalingRule { "Name" :: String, "Description" :: NullOrUndefined (String), "Action" :: ScalingAction, "Trigger" :: ScalingTrigger }
```

<p>A scale-in or scale-out rule that defines scaling activity, including the CloudWatch metric alarm that triggers activity, how EC2 instances are added or removed, and the periodicity of adjustments. The automatic scaling policy for an instance group can comprise one or more automatic scaling rules.</p>

##### Instances
``` purescript
Newtype ScalingRule _
Generic ScalingRule _
Show ScalingRule
Decode ScalingRule
Encode ScalingRule
```

#### `newScalingRule`

``` purescript
newScalingRule :: ScalingAction -> String -> ScalingTrigger -> ScalingRule
```

Constructs ScalingRule from required parameters

#### `newScalingRule'`

``` purescript
newScalingRule' :: ScalingAction -> String -> ScalingTrigger -> ({ "Name" :: String, "Description" :: NullOrUndefined (String), "Action" :: ScalingAction, "Trigger" :: ScalingTrigger } -> { "Name" :: String, "Description" :: NullOrUndefined (String), "Action" :: ScalingAction, "Trigger" :: ScalingTrigger }) -> ScalingRule
```

Constructs ScalingRule's fields from required parameters

#### `ScalingRuleList`

``` purescript
newtype ScalingRuleList
  = ScalingRuleList (Array ScalingRule)
```

##### Instances
``` purescript
Newtype ScalingRuleList _
Generic ScalingRuleList _
Show ScalingRuleList
Decode ScalingRuleList
Encode ScalingRuleList
```

#### `ScalingTrigger`

``` purescript
newtype ScalingTrigger
  = ScalingTrigger { "CloudWatchAlarmDefinition" :: CloudWatchAlarmDefinition }
```

<p>The conditions that trigger an automatic scaling activity.</p>

##### Instances
``` purescript
Newtype ScalingTrigger _
Generic ScalingTrigger _
Show ScalingTrigger
Decode ScalingTrigger
Encode ScalingTrigger
```

#### `newScalingTrigger`

``` purescript
newScalingTrigger :: CloudWatchAlarmDefinition -> ScalingTrigger
```

Constructs ScalingTrigger from required parameters

#### `newScalingTrigger'`

``` purescript
newScalingTrigger' :: CloudWatchAlarmDefinition -> ({ "CloudWatchAlarmDefinition" :: CloudWatchAlarmDefinition } -> { "CloudWatchAlarmDefinition" :: CloudWatchAlarmDefinition }) -> ScalingTrigger
```

Constructs ScalingTrigger's fields from required parameters

#### `ScriptBootstrapActionConfig`

``` purescript
newtype ScriptBootstrapActionConfig
  = ScriptBootstrapActionConfig { "Path" :: XmlString, "Args" :: NullOrUndefined (XmlStringList) }
```

<p>Configuration of the script to run during a bootstrap action.</p>

##### Instances
``` purescript
Newtype ScriptBootstrapActionConfig _
Generic ScriptBootstrapActionConfig _
Show ScriptBootstrapActionConfig
Decode ScriptBootstrapActionConfig
Encode ScriptBootstrapActionConfig
```

#### `newScriptBootstrapActionConfig`

``` purescript
newScriptBootstrapActionConfig :: XmlString -> ScriptBootstrapActionConfig
```

Constructs ScriptBootstrapActionConfig from required parameters

#### `newScriptBootstrapActionConfig'`

``` purescript
newScriptBootstrapActionConfig' :: XmlString -> ({ "Path" :: XmlString, "Args" :: NullOrUndefined (XmlStringList) } -> { "Path" :: XmlString, "Args" :: NullOrUndefined (XmlStringList) }) -> ScriptBootstrapActionConfig
```

Constructs ScriptBootstrapActionConfig's fields from required parameters

#### `SecurityConfigurationList`

``` purescript
newtype SecurityConfigurationList
  = SecurityConfigurationList (Array SecurityConfigurationSummary)
```

##### Instances
``` purescript
Newtype SecurityConfigurationList _
Generic SecurityConfigurationList _
Show SecurityConfigurationList
Decode SecurityConfigurationList
Encode SecurityConfigurationList
```

#### `SecurityConfigurationSummary`

``` purescript
newtype SecurityConfigurationSummary
  = SecurityConfigurationSummary { "Name" :: NullOrUndefined (XmlString), "CreationDateTime" :: NullOrUndefined (Date) }
```

<p>The creation date and time, and name, of a security configuration.</p>

##### Instances
``` purescript
Newtype SecurityConfigurationSummary _
Generic SecurityConfigurationSummary _
Show SecurityConfigurationSummary
Decode SecurityConfigurationSummary
Encode SecurityConfigurationSummary
```

#### `newSecurityConfigurationSummary`

``` purescript
newSecurityConfigurationSummary :: SecurityConfigurationSummary
```

Constructs SecurityConfigurationSummary from required parameters

#### `newSecurityConfigurationSummary'`

``` purescript
newSecurityConfigurationSummary' :: ({ "Name" :: NullOrUndefined (XmlString), "CreationDateTime" :: NullOrUndefined (Date) } -> { "Name" :: NullOrUndefined (XmlString), "CreationDateTime" :: NullOrUndefined (Date) }) -> SecurityConfigurationSummary
```

Constructs SecurityConfigurationSummary's fields from required parameters

#### `SecurityGroupsList`

``` purescript
newtype SecurityGroupsList
  = SecurityGroupsList (Array XmlStringMaxLen256)
```

##### Instances
``` purescript
Newtype SecurityGroupsList _
Generic SecurityGroupsList _
Show SecurityGroupsList
Decode SecurityGroupsList
Encode SecurityGroupsList
```

#### `SetTerminationProtectionInput`

``` purescript
newtype SetTerminationProtectionInput
  = SetTerminationProtectionInput { "JobFlowIds" :: XmlStringList, "TerminationProtected" :: Boolean }
```

<p> The input argument to the <a>TerminationProtection</a> operation. </p>

##### Instances
``` purescript
Newtype SetTerminationProtectionInput _
Generic SetTerminationProtectionInput _
Show SetTerminationProtectionInput
Decode SetTerminationProtectionInput
Encode SetTerminationProtectionInput
```

#### `newSetTerminationProtectionInput`

``` purescript
newSetTerminationProtectionInput :: XmlStringList -> Boolean -> SetTerminationProtectionInput
```

Constructs SetTerminationProtectionInput from required parameters

#### `newSetTerminationProtectionInput'`

``` purescript
newSetTerminationProtectionInput' :: XmlStringList -> Boolean -> ({ "JobFlowIds" :: XmlStringList, "TerminationProtected" :: Boolean } -> { "JobFlowIds" :: XmlStringList, "TerminationProtected" :: Boolean }) -> SetTerminationProtectionInput
```

Constructs SetTerminationProtectionInput's fields from required parameters

#### `SetVisibleToAllUsersInput`

``` purescript
newtype SetVisibleToAllUsersInput
  = SetVisibleToAllUsersInput { "JobFlowIds" :: XmlStringList, "VisibleToAllUsers" :: Boolean }
```

<p>The input to the SetVisibleToAllUsers action.</p>

##### Instances
``` purescript
Newtype SetVisibleToAllUsersInput _
Generic SetVisibleToAllUsersInput _
Show SetVisibleToAllUsersInput
Decode SetVisibleToAllUsersInput
Encode SetVisibleToAllUsersInput
```

#### `newSetVisibleToAllUsersInput`

``` purescript
newSetVisibleToAllUsersInput :: XmlStringList -> Boolean -> SetVisibleToAllUsersInput
```

Constructs SetVisibleToAllUsersInput from required parameters

#### `newSetVisibleToAllUsersInput'`

``` purescript
newSetVisibleToAllUsersInput' :: XmlStringList -> Boolean -> ({ "JobFlowIds" :: XmlStringList, "VisibleToAllUsers" :: Boolean } -> { "JobFlowIds" :: XmlStringList, "VisibleToAllUsers" :: Boolean }) -> SetVisibleToAllUsersInput
```

Constructs SetVisibleToAllUsersInput's fields from required parameters

#### `ShrinkPolicy`

``` purescript
newtype ShrinkPolicy
  = ShrinkPolicy { "DecommissionTimeout" :: NullOrUndefined (Int), "InstanceResizePolicy" :: NullOrUndefined (InstanceResizePolicy) }
```

<p>Policy for customizing shrink operations. Allows configuration of decommissioning timeout and targeted instance shrinking.</p>

##### Instances
``` purescript
Newtype ShrinkPolicy _
Generic ShrinkPolicy _
Show ShrinkPolicy
Decode ShrinkPolicy
Encode ShrinkPolicy
```

#### `newShrinkPolicy`

``` purescript
newShrinkPolicy :: ShrinkPolicy
```

Constructs ShrinkPolicy from required parameters

#### `newShrinkPolicy'`

``` purescript
newShrinkPolicy' :: ({ "DecommissionTimeout" :: NullOrUndefined (Int), "InstanceResizePolicy" :: NullOrUndefined (InstanceResizePolicy) } -> { "DecommissionTimeout" :: NullOrUndefined (Int), "InstanceResizePolicy" :: NullOrUndefined (InstanceResizePolicy) }) -> ShrinkPolicy
```

Constructs ShrinkPolicy's fields from required parameters

#### `SimpleScalingPolicyConfiguration`

``` purescript
newtype SimpleScalingPolicyConfiguration
  = SimpleScalingPolicyConfiguration { "AdjustmentType" :: NullOrUndefined (AdjustmentType), "ScalingAdjustment" :: Int, "CoolDown" :: NullOrUndefined (Int) }
```

<p>An automatic scaling configuration, which describes how the policy adds or removes instances, the cooldown period, and the number of EC2 instances that will be added each time the CloudWatch metric alarm condition is satisfied.</p>

##### Instances
``` purescript
Newtype SimpleScalingPolicyConfiguration _
Generic SimpleScalingPolicyConfiguration _
Show SimpleScalingPolicyConfiguration
Decode SimpleScalingPolicyConfiguration
Encode SimpleScalingPolicyConfiguration
```

#### `newSimpleScalingPolicyConfiguration`

``` purescript
newSimpleScalingPolicyConfiguration :: Int -> SimpleScalingPolicyConfiguration
```

Constructs SimpleScalingPolicyConfiguration from required parameters

#### `newSimpleScalingPolicyConfiguration'`

``` purescript
newSimpleScalingPolicyConfiguration' :: Int -> ({ "AdjustmentType" :: NullOrUndefined (AdjustmentType), "ScalingAdjustment" :: Int, "CoolDown" :: NullOrUndefined (Int) } -> { "AdjustmentType" :: NullOrUndefined (AdjustmentType), "ScalingAdjustment" :: Int, "CoolDown" :: NullOrUndefined (Int) }) -> SimpleScalingPolicyConfiguration
```

Constructs SimpleScalingPolicyConfiguration's fields from required parameters

#### `SpotProvisioningSpecification`

``` purescript
newtype SpotProvisioningSpecification
  = SpotProvisioningSpecification { "TimeoutDurationMinutes" :: WholeNumber, "TimeoutAction" :: SpotProvisioningTimeoutAction, "BlockDurationMinutes" :: NullOrUndefined (WholeNumber) }
```

<p>The launch specification for Spot instances in the instance fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

##### Instances
``` purescript
Newtype SpotProvisioningSpecification _
Generic SpotProvisioningSpecification _
Show SpotProvisioningSpecification
Decode SpotProvisioningSpecification
Encode SpotProvisioningSpecification
```

#### `newSpotProvisioningSpecification`

``` purescript
newSpotProvisioningSpecification :: SpotProvisioningTimeoutAction -> WholeNumber -> SpotProvisioningSpecification
```

Constructs SpotProvisioningSpecification from required parameters

#### `newSpotProvisioningSpecification'`

``` purescript
newSpotProvisioningSpecification' :: SpotProvisioningTimeoutAction -> WholeNumber -> ({ "TimeoutDurationMinutes" :: WholeNumber, "TimeoutAction" :: SpotProvisioningTimeoutAction, "BlockDurationMinutes" :: NullOrUndefined (WholeNumber) } -> { "TimeoutDurationMinutes" :: WholeNumber, "TimeoutAction" :: SpotProvisioningTimeoutAction, "BlockDurationMinutes" :: NullOrUndefined (WholeNumber) }) -> SpotProvisioningSpecification
```

Constructs SpotProvisioningSpecification's fields from required parameters

#### `SpotProvisioningTimeoutAction`

``` purescript
newtype SpotProvisioningTimeoutAction
  = SpotProvisioningTimeoutAction String
```

##### Instances
``` purescript
Newtype SpotProvisioningTimeoutAction _
Generic SpotProvisioningTimeoutAction _
Show SpotProvisioningTimeoutAction
Decode SpotProvisioningTimeoutAction
Encode SpotProvisioningTimeoutAction
```

#### `Statistic`

``` purescript
newtype Statistic
  = Statistic String
```

##### Instances
``` purescript
Newtype Statistic _
Generic Statistic _
Show Statistic
Decode Statistic
Encode Statistic
```

#### `Step`

``` purescript
newtype Step
  = Step { "Id" :: NullOrUndefined (StepId), "Name" :: NullOrUndefined (String), "Config" :: NullOrUndefined (HadoopStepConfig), "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "Status" :: NullOrUndefined (StepStatus) }
```

<p>This represents a step in a cluster.</p>

##### Instances
``` purescript
Newtype Step _
Generic Step _
Show Step
Decode Step
Encode Step
```

#### `newStep`

``` purescript
newStep :: Step
```

Constructs Step from required parameters

#### `newStep'`

``` purescript
newStep' :: ({ "Id" :: NullOrUndefined (StepId), "Name" :: NullOrUndefined (String), "Config" :: NullOrUndefined (HadoopStepConfig), "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "Status" :: NullOrUndefined (StepStatus) } -> { "Id" :: NullOrUndefined (StepId), "Name" :: NullOrUndefined (String), "Config" :: NullOrUndefined (HadoopStepConfig), "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "Status" :: NullOrUndefined (StepStatus) }) -> Step
```

Constructs Step's fields from required parameters

#### `StepConfig`

``` purescript
newtype StepConfig
  = StepConfig { "Name" :: XmlStringMaxLen256, "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "HadoopJarStep" :: HadoopJarStepConfig }
```

<p>Specification of a cluster (job flow) step.</p>

##### Instances
``` purescript
Newtype StepConfig _
Generic StepConfig _
Show StepConfig
Decode StepConfig
Encode StepConfig
```

#### `newStepConfig`

``` purescript
newStepConfig :: HadoopJarStepConfig -> XmlStringMaxLen256 -> StepConfig
```

Constructs StepConfig from required parameters

#### `newStepConfig'`

``` purescript
newStepConfig' :: HadoopJarStepConfig -> XmlStringMaxLen256 -> ({ "Name" :: XmlStringMaxLen256, "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "HadoopJarStep" :: HadoopJarStepConfig } -> { "Name" :: XmlStringMaxLen256, "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "HadoopJarStep" :: HadoopJarStepConfig }) -> StepConfig
```

Constructs StepConfig's fields from required parameters

#### `StepConfigList`

``` purescript
newtype StepConfigList
  = StepConfigList (Array StepConfig)
```

##### Instances
``` purescript
Newtype StepConfigList _
Generic StepConfigList _
Show StepConfigList
Decode StepConfigList
Encode StepConfigList
```

#### `StepDetail`

``` purescript
newtype StepDetail
  = StepDetail { "StepConfig" :: StepConfig, "ExecutionStatusDetail" :: StepExecutionStatusDetail }
```

<p>Combines the execution state and configuration of a step.</p>

##### Instances
``` purescript
Newtype StepDetail _
Generic StepDetail _
Show StepDetail
Decode StepDetail
Encode StepDetail
```

#### `newStepDetail`

``` purescript
newStepDetail :: StepExecutionStatusDetail -> StepConfig -> StepDetail
```

Constructs StepDetail from required parameters

#### `newStepDetail'`

``` purescript
newStepDetail' :: StepExecutionStatusDetail -> StepConfig -> ({ "StepConfig" :: StepConfig, "ExecutionStatusDetail" :: StepExecutionStatusDetail } -> { "StepConfig" :: StepConfig, "ExecutionStatusDetail" :: StepExecutionStatusDetail }) -> StepDetail
```

Constructs StepDetail's fields from required parameters

#### `StepDetailList`

``` purescript
newtype StepDetailList
  = StepDetailList (Array StepDetail)
```

##### Instances
``` purescript
Newtype StepDetailList _
Generic StepDetailList _
Show StepDetailList
Decode StepDetailList
Encode StepDetailList
```

#### `StepExecutionState`

``` purescript
newtype StepExecutionState
  = StepExecutionState String
```

##### Instances
``` purescript
Newtype StepExecutionState _
Generic StepExecutionState _
Show StepExecutionState
Decode StepExecutionState
Encode StepExecutionState
```

#### `StepExecutionStatusDetail`

``` purescript
newtype StepExecutionStatusDetail
  = StepExecutionStatusDetail { "State" :: StepExecutionState, "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date), "LastStateChangeReason" :: NullOrUndefined (XmlString) }
```

<p>The execution state of a step.</p>

##### Instances
``` purescript
Newtype StepExecutionStatusDetail _
Generic StepExecutionStatusDetail _
Show StepExecutionStatusDetail
Decode StepExecutionStatusDetail
Encode StepExecutionStatusDetail
```

#### `newStepExecutionStatusDetail`

``` purescript
newStepExecutionStatusDetail :: Date -> StepExecutionState -> StepExecutionStatusDetail
```

Constructs StepExecutionStatusDetail from required parameters

#### `newStepExecutionStatusDetail'`

``` purescript
newStepExecutionStatusDetail' :: Date -> StepExecutionState -> ({ "State" :: StepExecutionState, "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date), "LastStateChangeReason" :: NullOrUndefined (XmlString) } -> { "State" :: StepExecutionState, "CreationDateTime" :: Date, "StartDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date), "LastStateChangeReason" :: NullOrUndefined (XmlString) }) -> StepExecutionStatusDetail
```

Constructs StepExecutionStatusDetail's fields from required parameters

#### `StepId`

``` purescript
newtype StepId
  = StepId String
```

##### Instances
``` purescript
Newtype StepId _
Generic StepId _
Show StepId
Decode StepId
Encode StepId
```

#### `StepIdsList`

``` purescript
newtype StepIdsList
  = StepIdsList (Array XmlStringMaxLen256)
```

##### Instances
``` purescript
Newtype StepIdsList _
Generic StepIdsList _
Show StepIdsList
Decode StepIdsList
Encode StepIdsList
```

#### `StepState`

``` purescript
newtype StepState
  = StepState String
```

##### Instances
``` purescript
Newtype StepState _
Generic StepState _
Show StepState
Decode StepState
Encode StepState
```

#### `StepStateChangeReason`

``` purescript
newtype StepStateChangeReason
  = StepStateChangeReason { "Code" :: NullOrUndefined (StepStateChangeReasonCode), "Message" :: NullOrUndefined (String) }
```

<p>The details of the step state change reason.</p>

##### Instances
``` purescript
Newtype StepStateChangeReason _
Generic StepStateChangeReason _
Show StepStateChangeReason
Decode StepStateChangeReason
Encode StepStateChangeReason
```

#### `newStepStateChangeReason`

``` purescript
newStepStateChangeReason :: StepStateChangeReason
```

Constructs StepStateChangeReason from required parameters

#### `newStepStateChangeReason'`

``` purescript
newStepStateChangeReason' :: ({ "Code" :: NullOrUndefined (StepStateChangeReasonCode), "Message" :: NullOrUndefined (String) } -> { "Code" :: NullOrUndefined (StepStateChangeReasonCode), "Message" :: NullOrUndefined (String) }) -> StepStateChangeReason
```

Constructs StepStateChangeReason's fields from required parameters

#### `StepStateChangeReasonCode`

``` purescript
newtype StepStateChangeReasonCode
  = StepStateChangeReasonCode String
```

##### Instances
``` purescript
Newtype StepStateChangeReasonCode _
Generic StepStateChangeReasonCode _
Show StepStateChangeReasonCode
Decode StepStateChangeReasonCode
Encode StepStateChangeReasonCode
```

#### `StepStateList`

``` purescript
newtype StepStateList
  = StepStateList (Array StepState)
```

##### Instances
``` purescript
Newtype StepStateList _
Generic StepStateList _
Show StepStateList
Decode StepStateList
Encode StepStateList
```

#### `StepStatus`

``` purescript
newtype StepStatus
  = StepStatus { "State" :: NullOrUndefined (StepState), "StateChangeReason" :: NullOrUndefined (StepStateChangeReason), "FailureDetails" :: NullOrUndefined (FailureDetails), "Timeline" :: NullOrUndefined (StepTimeline) }
```

<p>The execution status details of the cluster step.</p>

##### Instances
``` purescript
Newtype StepStatus _
Generic StepStatus _
Show StepStatus
Decode StepStatus
Encode StepStatus
```

#### `newStepStatus`

``` purescript
newStepStatus :: StepStatus
```

Constructs StepStatus from required parameters

#### `newStepStatus'`

``` purescript
newStepStatus' :: ({ "State" :: NullOrUndefined (StepState), "StateChangeReason" :: NullOrUndefined (StepStateChangeReason), "FailureDetails" :: NullOrUndefined (FailureDetails), "Timeline" :: NullOrUndefined (StepTimeline) } -> { "State" :: NullOrUndefined (StepState), "StateChangeReason" :: NullOrUndefined (StepStateChangeReason), "FailureDetails" :: NullOrUndefined (FailureDetails), "Timeline" :: NullOrUndefined (StepTimeline) }) -> StepStatus
```

Constructs StepStatus's fields from required parameters

#### `StepSummary`

``` purescript
newtype StepSummary
  = StepSummary { "Id" :: NullOrUndefined (StepId), "Name" :: NullOrUndefined (String), "Config" :: NullOrUndefined (HadoopStepConfig), "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "Status" :: NullOrUndefined (StepStatus) }
```

<p>The summary of the cluster step.</p>

##### Instances
``` purescript
Newtype StepSummary _
Generic StepSummary _
Show StepSummary
Decode StepSummary
Encode StepSummary
```

#### `newStepSummary`

``` purescript
newStepSummary :: StepSummary
```

Constructs StepSummary from required parameters

#### `newStepSummary'`

``` purescript
newStepSummary' :: ({ "Id" :: NullOrUndefined (StepId), "Name" :: NullOrUndefined (String), "Config" :: NullOrUndefined (HadoopStepConfig), "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "Status" :: NullOrUndefined (StepStatus) } -> { "Id" :: NullOrUndefined (StepId), "Name" :: NullOrUndefined (String), "Config" :: NullOrUndefined (HadoopStepConfig), "ActionOnFailure" :: NullOrUndefined (ActionOnFailure), "Status" :: NullOrUndefined (StepStatus) }) -> StepSummary
```

Constructs StepSummary's fields from required parameters

#### `StepSummaryList`

``` purescript
newtype StepSummaryList
  = StepSummaryList (Array StepSummary)
```

##### Instances
``` purescript
Newtype StepSummaryList _
Generic StepSummaryList _
Show StepSummaryList
Decode StepSummaryList
Encode StepSummaryList
```

#### `StepTimeline`

``` purescript
newtype StepTimeline
  = StepTimeline { "CreationDateTime" :: NullOrUndefined (Date), "StartDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }
```

<p>The timeline of the cluster step lifecycle.</p>

##### Instances
``` purescript
Newtype StepTimeline _
Generic StepTimeline _
Show StepTimeline
Decode StepTimeline
Encode StepTimeline
```

#### `newStepTimeline`

``` purescript
newStepTimeline :: StepTimeline
```

Constructs StepTimeline from required parameters

#### `newStepTimeline'`

``` purescript
newStepTimeline' :: ({ "CreationDateTime" :: NullOrUndefined (Date), "StartDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) } -> { "CreationDateTime" :: NullOrUndefined (Date), "StartDateTime" :: NullOrUndefined (Date), "EndDateTime" :: NullOrUndefined (Date) }) -> StepTimeline
```

Constructs StepTimeline's fields from required parameters

#### `StringList`

``` purescript
newtype StringList
  = StringList (Array String)
```

##### Instances
``` purescript
Newtype StringList _
Generic StringList _
Show StringList
Decode StringList
Encode StringList
```

#### `StringMap`

``` purescript
newtype StringMap
  = StringMap (StrMap String)
```

##### Instances
``` purescript
Newtype StringMap _
Generic StringMap _
Show StringMap
Decode StringMap
Encode StringMap
```

#### `SupportedProductConfig`

``` purescript
newtype SupportedProductConfig
  = SupportedProductConfig { "Name" :: NullOrUndefined (XmlStringMaxLen256), "Args" :: NullOrUndefined (XmlStringList) }
```

<p>The list of supported product configurations which allow user-supplied arguments. EMR accepts these arguments and forwards them to the corresponding installation script as bootstrap action arguments.</p>

##### Instances
``` purescript
Newtype SupportedProductConfig _
Generic SupportedProductConfig _
Show SupportedProductConfig
Decode SupportedProductConfig
Encode SupportedProductConfig
```

#### `newSupportedProductConfig`

``` purescript
newSupportedProductConfig :: SupportedProductConfig
```

Constructs SupportedProductConfig from required parameters

#### `newSupportedProductConfig'`

``` purescript
newSupportedProductConfig' :: ({ "Name" :: NullOrUndefined (XmlStringMaxLen256), "Args" :: NullOrUndefined (XmlStringList) } -> { "Name" :: NullOrUndefined (XmlStringMaxLen256), "Args" :: NullOrUndefined (XmlStringList) }) -> SupportedProductConfig
```

Constructs SupportedProductConfig's fields from required parameters

#### `SupportedProductsList`

``` purescript
newtype SupportedProductsList
  = SupportedProductsList (Array XmlStringMaxLen256)
```

##### Instances
``` purescript
Newtype SupportedProductsList _
Generic SupportedProductsList _
Show SupportedProductsList
Decode SupportedProductsList
Encode SupportedProductsList
```

#### `Tag`

``` purescript
newtype Tag
  = Tag { "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }
```

<p>A key/value pair containing user-defined metadata that you can associate with an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>

##### Instances
``` purescript
Newtype Tag _
Generic Tag _
Show Tag
Decode Tag
Encode Tag
```

#### `newTag`

``` purescript
newTag :: Tag
```

Constructs Tag from required parameters

#### `newTag'`

``` purescript
newTag' :: ({ "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) } -> { "Key" :: NullOrUndefined (String), "Value" :: NullOrUndefined (String) }) -> Tag
```

Constructs Tag's fields from required parameters

#### `TagList`

``` purescript
newtype TagList
  = TagList (Array Tag)
```

##### Instances
``` purescript
Newtype TagList _
Generic TagList _
Show TagList
Decode TagList
Encode TagList
```

#### `TerminateJobFlowsInput`

``` purescript
newtype TerminateJobFlowsInput
  = TerminateJobFlowsInput { "JobFlowIds" :: XmlStringList }
```

<p> Input to the <a>TerminateJobFlows</a> operation. </p>

##### Instances
``` purescript
Newtype TerminateJobFlowsInput _
Generic TerminateJobFlowsInput _
Show TerminateJobFlowsInput
Decode TerminateJobFlowsInput
Encode TerminateJobFlowsInput
```

#### `newTerminateJobFlowsInput`

``` purescript
newTerminateJobFlowsInput :: XmlStringList -> TerminateJobFlowsInput
```

Constructs TerminateJobFlowsInput from required parameters

#### `newTerminateJobFlowsInput'`

``` purescript
newTerminateJobFlowsInput' :: XmlStringList -> ({ "JobFlowIds" :: XmlStringList } -> { "JobFlowIds" :: XmlStringList }) -> TerminateJobFlowsInput
```

Constructs TerminateJobFlowsInput's fields from required parameters

#### `Unit''`

``` purescript
newtype Unit''
  = Unit'' String
```

##### Instances
``` purescript
Newtype Unit'' _
Generic Unit'' _
Show Unit''
Decode Unit''
Encode Unit''
```

#### `VolumeSpecification`

``` purescript
newtype VolumeSpecification
  = VolumeSpecification { "VolumeType" :: String, "Iops" :: NullOrUndefined (Int), "SizeInGB" :: Int }
```

<p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.</p>

##### Instances
``` purescript
Newtype VolumeSpecification _
Generic VolumeSpecification _
Show VolumeSpecification
Decode VolumeSpecification
Encode VolumeSpecification
```

#### `newVolumeSpecification`

``` purescript
newVolumeSpecification :: Int -> String -> VolumeSpecification
```

Constructs VolumeSpecification from required parameters

#### `newVolumeSpecification'`

``` purescript
newVolumeSpecification' :: Int -> String -> ({ "VolumeType" :: String, "Iops" :: NullOrUndefined (Int), "SizeInGB" :: Int } -> { "VolumeType" :: String, "Iops" :: NullOrUndefined (Int), "SizeInGB" :: Int }) -> VolumeSpecification
```

Constructs VolumeSpecification's fields from required parameters

#### `WholeNumber`

``` purescript
newtype WholeNumber
  = WholeNumber Int
```

##### Instances
``` purescript
Newtype WholeNumber _
Generic WholeNumber _
Show WholeNumber
Decode WholeNumber
Encode WholeNumber
```

#### `XmlString`

``` purescript
newtype XmlString
  = XmlString String
```

##### Instances
``` purescript
Newtype XmlString _
Generic XmlString _
Show XmlString
Decode XmlString
Encode XmlString
```

#### `XmlStringList`

``` purescript
newtype XmlStringList
  = XmlStringList (Array XmlString)
```

##### Instances
``` purescript
Newtype XmlStringList _
Generic XmlStringList _
Show XmlStringList
Decode XmlStringList
Encode XmlStringList
```

#### `XmlStringMaxLen256`

``` purescript
newtype XmlStringMaxLen256
  = XmlStringMaxLen256 String
```

##### Instances
``` purescript
Newtype XmlStringMaxLen256 _
Generic XmlStringMaxLen256 _
Show XmlStringMaxLen256
Decode XmlStringMaxLen256
Encode XmlStringMaxLen256
```

#### `XmlStringMaxLen256List`

``` purescript
newtype XmlStringMaxLen256List
  = XmlStringMaxLen256List (Array XmlStringMaxLen256)
```

##### Instances
``` purescript
Newtype XmlStringMaxLen256List _
Generic XmlStringMaxLen256List _
Show XmlStringMaxLen256List
Decode XmlStringMaxLen256List
Encode XmlStringMaxLen256List
```


