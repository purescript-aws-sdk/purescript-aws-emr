## Module AWS.EMR.Requests

#### `addInstanceFleet`

``` purescript
addInstanceFleet :: forall eff. Service -> AddInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) AddInstanceFleetOutput
```

<p>Adds an instance fleet to a running cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x.</p> </note>

#### `addInstanceGroups`

``` purescript
addInstanceGroups :: forall eff. Service -> AddInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) AddInstanceGroupsOutput
```

<p>Adds one or more instance groups to a running cluster.</p>

#### `addJobFlowSteps`

``` purescript
addJobFlowSteps :: forall eff. Service -> AddJobFlowStepsInput -> Aff (exception :: EXCEPTION | eff) AddJobFlowStepsOutput
```

<p>AddJobFlowSteps adds new steps to a running cluster. A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using SSH to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>A step specifies the location of a JAR file stored either on the master node of the cluster or in Amazon S3. Each step is performed by the main function of the main class of the JAR file. The main class can be specified either in the manifest of the JAR or by using the MainFunction parameter of the step.</p> <p>Amazon EMR executes each step in the order listed. For a step to be considered complete, the main function must exit with a zero exit code and all Hadoop jobs started while the step was running must have completed and run successfully.</p> <p>You can only add steps to a cluster that is in one of the following states: STARTING, BOOTSTRAPPING, RUNNING, or WAITING.</p>

#### `addTags`

``` purescript
addTags :: forall eff. Service -> AddTagsInput -> Aff (exception :: EXCEPTION | eff) AddTagsOutput
```

<p>Adds tags to an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>

#### `cancelSteps`

``` purescript
cancelSteps :: forall eff. Service -> CancelStepsInput -> Aff (exception :: EXCEPTION | eff) CancelStepsOutput
```

<p>Cancels a pending step or steps in a running cluster. Available only in Amazon EMR versions 4.8.0 and later, excluding version 5.0.0. A maximum of 256 steps are allowed in each CancelSteps request. CancelSteps is idempotent but asynchronous; it does not guarantee a step will be canceled, even if the request is successfully submitted. You can only cancel steps that are in a <code>PENDING</code> state.</p>

#### `createSecurityConfiguration`

``` purescript
createSecurityConfiguration :: forall eff. Service -> CreateSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) CreateSecurityConfigurationOutput
```

<p>Creates a security configuration, which is stored in the service and can be specified when a cluster is created.</p>

#### `deleteSecurityConfiguration`

``` purescript
deleteSecurityConfiguration :: forall eff. Service -> DeleteSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) DeleteSecurityConfigurationOutput
```

<p>Deletes a security configuration.</p>

#### `describeCluster`

``` purescript
describeCluster :: forall eff. Service -> DescribeClusterInput -> Aff (exception :: EXCEPTION | eff) DescribeClusterOutput
```

<p>Provides cluster-level details including status, hardware and software configuration, VPC settings, and so on. For information about the cluster steps, see <a>ListSteps</a>.</p>

#### `describeJobFlows`

``` purescript
describeJobFlows :: forall eff. Service -> DescribeJobFlowsInput -> Aff (exception :: EXCEPTION | eff) DescribeJobFlowsOutput
```

<p>This API is deprecated and will eventually be removed. We recommend you use <a>ListClusters</a>, <a>DescribeCluster</a>, <a>ListSteps</a>, <a>ListInstanceGroups</a> and <a>ListBootstrapActions</a> instead.</p> <p>DescribeJobFlows returns a list of job flows that match all of the supplied parameters. The parameters can include a list of job flow IDs, job flow states, and restrictions on job flow creation date and time.</p> <p>Regardless of supplied parameters, only job flows created within the last two months are returned.</p> <p>If no parameters are supplied, then job flows matching either of the following criteria are returned:</p> <ul> <li> <p>Job flows created and completed in the last two weeks</p> </li> <li> <p> Job flows created within the last two months that are in one of the following states: <code>RUNNING</code>, <code>WAITING</code>, <code>SHUTTING_DOWN</code>, <code>STARTING</code> </p> </li> </ul> <p>Amazon EMR can return a maximum of 512 job flow descriptions.</p>

#### `describeSecurityConfiguration`

``` purescript
describeSecurityConfiguration :: forall eff. Service -> DescribeSecurityConfigurationInput -> Aff (exception :: EXCEPTION | eff) DescribeSecurityConfigurationOutput
```

<p>Provides the details of a security configuration by returning the configuration JSON.</p>

#### `describeStep`

``` purescript
describeStep :: forall eff. Service -> DescribeStepInput -> Aff (exception :: EXCEPTION | eff) DescribeStepOutput
```

<p>Provides more detail about the cluster step.</p>

#### `listBootstrapActions`

``` purescript
listBootstrapActions :: forall eff. Service -> ListBootstrapActionsInput -> Aff (exception :: EXCEPTION | eff) ListBootstrapActionsOutput
```

<p>Provides information about the bootstrap actions associated with a cluster.</p>

#### `listClusters`

``` purescript
listClusters :: forall eff. Service -> ListClustersInput -> Aff (exception :: EXCEPTION | eff) ListClustersOutput
```

<p>Provides the status of all clusters visible to this AWS account. Allows you to filter the list of clusters based on certain criteria; for example, filtering by cluster creation date and time or by status. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListClusters calls.</p>

#### `listInstanceFleets`

``` purescript
listInstanceFleets :: forall eff. Service -> ListInstanceFleetsInput -> Aff (exception :: EXCEPTION | eff) ListInstanceFleetsOutput
```

<p>Lists all available details about the instance fleets in a cluster.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

#### `listInstanceGroups`

``` purescript
listInstanceGroups :: forall eff. Service -> ListInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) ListInstanceGroupsOutput
```

<p>Provides all available details about the instance groups in a cluster.</p>

#### `listInstances`

``` purescript
listInstances :: forall eff. Service -> ListInstancesInput -> Aff (exception :: EXCEPTION | eff) ListInstancesOutput
```

<p>Provides information for all active EC2 instances and EC2 instances terminated in the last 30 days, up to a maximum of 2,000. EC2 instances in any of the following states are considered active: AWAITING_FULFILLMENT, PROVISIONING, BOOTSTRAPPING, RUNNING.</p>

#### `listSecurityConfigurations`

``` purescript
listSecurityConfigurations :: forall eff. Service -> ListSecurityConfigurationsInput -> Aff (exception :: EXCEPTION | eff) ListSecurityConfigurationsOutput
```

<p>Lists all the security configurations visible to this account, providing their creation dates and times, and their names. This call returns a maximum of 50 clusters per call, but returns a marker to track the paging of the cluster list across multiple ListSecurityConfigurations calls.</p>

#### `listSteps`

``` purescript
listSteps :: forall eff. Service -> ListStepsInput -> Aff (exception :: EXCEPTION | eff) ListStepsOutput
```

<p>Provides a list of steps for the cluster in reverse order unless you specify stepIds with the request.</p>

#### `modifyInstanceFleet`

``` purescript
modifyInstanceFleet :: forall eff. Service -> ModifyInstanceFleetInput -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Modifies the target On-Demand and target Spot capacities for the instance fleet with the specified InstanceFleetID within the cluster specified using ClusterID. The call either succeeds or fails atomically.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>

#### `modifyInstanceGroups`

``` purescript
modifyInstanceGroups :: forall eff. Service -> ModifyInstanceGroupsInput -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>ModifyInstanceGroups modifies the number of nodes and configuration settings of an instance group. The input parameters include the new target instance count for the group and the instance group ID. The call will either succeed or fail atomically.</p>

#### `putAutoScalingPolicy`

``` purescript
putAutoScalingPolicy :: forall eff. Service -> PutAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) PutAutoScalingPolicyOutput
```

<p>Creates or updates an automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric.</p>

#### `removeAutoScalingPolicy`

``` purescript
removeAutoScalingPolicy :: forall eff. Service -> RemoveAutoScalingPolicyInput -> Aff (exception :: EXCEPTION | eff) RemoveAutoScalingPolicyOutput
```

<p>Removes an automatic scaling policy from a specified instance group within an EMR cluster.</p>

#### `removeTags`

``` purescript
removeTags :: forall eff. Service -> RemoveTagsInput -> Aff (exception :: EXCEPTION | eff) RemoveTagsOutput
```

<p>Removes tags from an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p> <p>The following example removes the stack tag with value Prod from a cluster:</p>

#### `runJobFlow`

``` purescript
runJobFlow :: forall eff. Service -> RunJobFlowInput -> Aff (exception :: EXCEPTION | eff) RunJobFlowOutput
```

<p>RunJobFlow creates and starts running a new cluster (job flow). The cluster runs the steps specified. After the steps complete, the cluster stops and the HDFS partition is lost. To prevent loss of data, configure the last step of the job flow to store results in Amazon S3. If the <a>JobFlowInstancesConfig</a> <code>KeepJobFlowAliveWhenNoSteps</code> parameter is set to <code>TRUE</code>, the cluster transitions to the WAITING state rather than shutting down after the steps have completed. </p> <p>For additional protection, you can set the <a>JobFlowInstancesConfig</a> <code>TerminationProtected</code> parameter to <code>TRUE</code> to lock the cluster and prevent it from being terminated by API call, user intervention, or in the event of a job flow error.</p> <p>A maximum of 256 steps are allowed in each job flow.</p> <p>If your cluster is long-running (such as a Hive data warehouse) or complex, you may require more than 256 steps to process your data. You can bypass the 256-step limitation in various ways, including using the SSH shell to connect to the master node and submitting queries directly to the software running on the master node, such as Hive and Hadoop. For more information on how to do this, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/AddMoreThan256Steps.html">Add More than 256 Steps to a Cluster</a> in the <i>Amazon EMR Management Guide</i>.</p> <p>For long running clusters, we recommend that you periodically store your results.</p> <note> <p>The instance fleets configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions. The RunJobFlow request can contain InstanceFleets parameters or InstanceGroups parameters, but not both.</p> </note>

#### `setTerminationProtection`

``` purescript
setTerminationProtection :: forall eff. Service -> SetTerminationProtectionInput -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>SetTerminationProtection locks a cluster (job flow) so the EC2 instances in the cluster cannot be terminated by user intervention, an API call, or in the event of a job-flow error. The cluster still terminates upon successful completion of the job flow. Calling <code>SetTerminationProtection</code> on a cluster is similar to calling the Amazon EC2 <code>DisableAPITermination</code> API on all EC2 instances in a cluster.</p> <p> <code>SetTerminationProtection</code> is used to prevent accidental termination of a cluster and to ensure that in the event of an error, the instances persist so that you can recover any data stored in their ephemeral instance storage.</p> <p> To terminate a cluster that has been locked by setting <code>SetTerminationProtection</code> to <code>true</code>, you must first unlock the job flow by a subsequent call to <code>SetTerminationProtection</code> in which you set the value to <code>false</code>. </p> <p> For more information, see<a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/UsingEMR_TerminationProtection.html">Managing Cluster Termination</a> in the <i>Amazon EMR Management Guide</i>. </p>

#### `setVisibleToAllUsers`

``` purescript
setVisibleToAllUsers :: forall eff. Service -> SetVisibleToAllUsersInput -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>Sets whether all AWS Identity and Access Management (IAM) users under your account can access the specified clusters (job flows). This action works on running clusters. You can also set the visibility of a cluster when you launch it using the <code>VisibleToAllUsers</code> parameter of <a>RunJobFlow</a>. The SetVisibleToAllUsers action can be called only by an IAM user who created the cluster or the AWS account that owns the cluster.</p>

#### `terminateJobFlows`

``` purescript
terminateJobFlows :: forall eff. Service -> TerminateJobFlowsInput -> Aff (exception :: EXCEPTION | eff) Unit
```

<p>TerminateJobFlows shuts a list of clusters (job flows) down. When a job flow is shut down, any step not yet completed is canceled and the EC2 instances on which the cluster is running are stopped. Any log files not already saved are uploaded to Amazon S3 if a LogUri was specified when the cluster was created.</p> <p>The maximum number of clusters allowed is 10. The call to <code>TerminateJobFlows</code> is asynchronous. Depending on the configuration of the cluster, it may take up to 1-5 minutes for the cluster to completely terminate and release allocated resources, such as Amazon EC2 instances.</p>


