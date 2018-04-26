
module AWS.EMR.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


newtype ActionOnFailure = ActionOnFailure String
derive instance newtypeActionOnFailure :: Newtype ActionOnFailure _
derive instance repGenericActionOnFailure :: Generic ActionOnFailure _
instance showActionOnFailure :: Show ActionOnFailure where show = genericShow
instance decodeActionOnFailure :: Decode ActionOnFailure where decode = genericDecode options
instance encodeActionOnFailure :: Encode ActionOnFailure where encode = genericEncode options



newtype AddInstanceFleetInput = AddInstanceFleetInput 
  { "ClusterId" :: (XmlStringMaxLen256)
  , "InstanceFleet" :: (InstanceFleetConfig)
  }
derive instance newtypeAddInstanceFleetInput :: Newtype AddInstanceFleetInput _
derive instance repGenericAddInstanceFleetInput :: Generic AddInstanceFleetInput _
instance showAddInstanceFleetInput :: Show AddInstanceFleetInput where show = genericShow
instance decodeAddInstanceFleetInput :: Decode AddInstanceFleetInput where decode = genericDecode options
instance encodeAddInstanceFleetInput :: Encode AddInstanceFleetInput where encode = genericEncode options

-- | Constructs AddInstanceFleetInput from required parameters
newAddInstanceFleetInput :: XmlStringMaxLen256 -> InstanceFleetConfig -> AddInstanceFleetInput
newAddInstanceFleetInput _ClusterId _InstanceFleet = AddInstanceFleetInput { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }

-- | Constructs AddInstanceFleetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceFleetInput' :: XmlStringMaxLen256 -> InstanceFleetConfig -> ( { "ClusterId" :: (XmlStringMaxLen256) , "InstanceFleet" :: (InstanceFleetConfig) } -> {"ClusterId" :: (XmlStringMaxLen256) , "InstanceFleet" :: (InstanceFleetConfig) } ) -> AddInstanceFleetInput
newAddInstanceFleetInput' _ClusterId _InstanceFleet customize = (AddInstanceFleetInput <<< customize) { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }



newtype AddInstanceFleetOutput = AddInstanceFleetOutput 
  { "ClusterId" :: Maybe (XmlStringMaxLen256)
  , "InstanceFleetId" :: Maybe (InstanceFleetId)
  }
derive instance newtypeAddInstanceFleetOutput :: Newtype AddInstanceFleetOutput _
derive instance repGenericAddInstanceFleetOutput :: Generic AddInstanceFleetOutput _
instance showAddInstanceFleetOutput :: Show AddInstanceFleetOutput where show = genericShow
instance decodeAddInstanceFleetOutput :: Decode AddInstanceFleetOutput where decode = genericDecode options
instance encodeAddInstanceFleetOutput :: Encode AddInstanceFleetOutput where encode = genericEncode options

-- | Constructs AddInstanceFleetOutput from required parameters
newAddInstanceFleetOutput :: AddInstanceFleetOutput
newAddInstanceFleetOutput  = AddInstanceFleetOutput { "ClusterId": Nothing, "InstanceFleetId": Nothing }

-- | Constructs AddInstanceFleetOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceFleetOutput' :: ( { "ClusterId" :: Maybe (XmlStringMaxLen256) , "InstanceFleetId" :: Maybe (InstanceFleetId) } -> {"ClusterId" :: Maybe (XmlStringMaxLen256) , "InstanceFleetId" :: Maybe (InstanceFleetId) } ) -> AddInstanceFleetOutput
newAddInstanceFleetOutput'  customize = (AddInstanceFleetOutput <<< customize) { "ClusterId": Nothing, "InstanceFleetId": Nothing }



-- | <p>Input to an AddInstanceGroups call.</p>
newtype AddInstanceGroupsInput = AddInstanceGroupsInput 
  { "InstanceGroups" :: (InstanceGroupConfigList)
  , "JobFlowId" :: (XmlStringMaxLen256)
  }
derive instance newtypeAddInstanceGroupsInput :: Newtype AddInstanceGroupsInput _
derive instance repGenericAddInstanceGroupsInput :: Generic AddInstanceGroupsInput _
instance showAddInstanceGroupsInput :: Show AddInstanceGroupsInput where show = genericShow
instance decodeAddInstanceGroupsInput :: Decode AddInstanceGroupsInput where decode = genericDecode options
instance encodeAddInstanceGroupsInput :: Encode AddInstanceGroupsInput where encode = genericEncode options

-- | Constructs AddInstanceGroupsInput from required parameters
newAddInstanceGroupsInput :: InstanceGroupConfigList -> XmlStringMaxLen256 -> AddInstanceGroupsInput
newAddInstanceGroupsInput _InstanceGroups _JobFlowId = AddInstanceGroupsInput { "InstanceGroups": _InstanceGroups, "JobFlowId": _JobFlowId }

-- | Constructs AddInstanceGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceGroupsInput' :: InstanceGroupConfigList -> XmlStringMaxLen256 -> ( { "InstanceGroups" :: (InstanceGroupConfigList) , "JobFlowId" :: (XmlStringMaxLen256) } -> {"InstanceGroups" :: (InstanceGroupConfigList) , "JobFlowId" :: (XmlStringMaxLen256) } ) -> AddInstanceGroupsInput
newAddInstanceGroupsInput' _InstanceGroups _JobFlowId customize = (AddInstanceGroupsInput <<< customize) { "InstanceGroups": _InstanceGroups, "JobFlowId": _JobFlowId }



-- | <p>Output from an AddInstanceGroups call.</p>
newtype AddInstanceGroupsOutput = AddInstanceGroupsOutput 
  { "JobFlowId" :: Maybe (XmlStringMaxLen256)
  , "InstanceGroupIds" :: Maybe (InstanceGroupIdsList)
  }
derive instance newtypeAddInstanceGroupsOutput :: Newtype AddInstanceGroupsOutput _
derive instance repGenericAddInstanceGroupsOutput :: Generic AddInstanceGroupsOutput _
instance showAddInstanceGroupsOutput :: Show AddInstanceGroupsOutput where show = genericShow
instance decodeAddInstanceGroupsOutput :: Decode AddInstanceGroupsOutput where decode = genericDecode options
instance encodeAddInstanceGroupsOutput :: Encode AddInstanceGroupsOutput where encode = genericEncode options

-- | Constructs AddInstanceGroupsOutput from required parameters
newAddInstanceGroupsOutput :: AddInstanceGroupsOutput
newAddInstanceGroupsOutput  = AddInstanceGroupsOutput { "InstanceGroupIds": Nothing, "JobFlowId": Nothing }

-- | Constructs AddInstanceGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddInstanceGroupsOutput' :: ( { "JobFlowId" :: Maybe (XmlStringMaxLen256) , "InstanceGroupIds" :: Maybe (InstanceGroupIdsList) } -> {"JobFlowId" :: Maybe (XmlStringMaxLen256) , "InstanceGroupIds" :: Maybe (InstanceGroupIdsList) } ) -> AddInstanceGroupsOutput
newAddInstanceGroupsOutput'  customize = (AddInstanceGroupsOutput <<< customize) { "InstanceGroupIds": Nothing, "JobFlowId": Nothing }



-- | <p> The input argument to the <a>AddJobFlowSteps</a> operation. </p>
newtype AddJobFlowStepsInput = AddJobFlowStepsInput 
  { "JobFlowId" :: (XmlStringMaxLen256)
  , "Steps" :: (StepConfigList)
  }
derive instance newtypeAddJobFlowStepsInput :: Newtype AddJobFlowStepsInput _
derive instance repGenericAddJobFlowStepsInput :: Generic AddJobFlowStepsInput _
instance showAddJobFlowStepsInput :: Show AddJobFlowStepsInput where show = genericShow
instance decodeAddJobFlowStepsInput :: Decode AddJobFlowStepsInput where decode = genericDecode options
instance encodeAddJobFlowStepsInput :: Encode AddJobFlowStepsInput where encode = genericEncode options

-- | Constructs AddJobFlowStepsInput from required parameters
newAddJobFlowStepsInput :: XmlStringMaxLen256 -> StepConfigList -> AddJobFlowStepsInput
newAddJobFlowStepsInput _JobFlowId _Steps = AddJobFlowStepsInput { "JobFlowId": _JobFlowId, "Steps": _Steps }

-- | Constructs AddJobFlowStepsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddJobFlowStepsInput' :: XmlStringMaxLen256 -> StepConfigList -> ( { "JobFlowId" :: (XmlStringMaxLen256) , "Steps" :: (StepConfigList) } -> {"JobFlowId" :: (XmlStringMaxLen256) , "Steps" :: (StepConfigList) } ) -> AddJobFlowStepsInput
newAddJobFlowStepsInput' _JobFlowId _Steps customize = (AddJobFlowStepsInput <<< customize) { "JobFlowId": _JobFlowId, "Steps": _Steps }



-- | <p> The output for the <a>AddJobFlowSteps</a> operation. </p>
newtype AddJobFlowStepsOutput = AddJobFlowStepsOutput 
  { "StepIds" :: Maybe (StepIdsList)
  }
derive instance newtypeAddJobFlowStepsOutput :: Newtype AddJobFlowStepsOutput _
derive instance repGenericAddJobFlowStepsOutput :: Generic AddJobFlowStepsOutput _
instance showAddJobFlowStepsOutput :: Show AddJobFlowStepsOutput where show = genericShow
instance decodeAddJobFlowStepsOutput :: Decode AddJobFlowStepsOutput where decode = genericDecode options
instance encodeAddJobFlowStepsOutput :: Encode AddJobFlowStepsOutput where encode = genericEncode options

-- | Constructs AddJobFlowStepsOutput from required parameters
newAddJobFlowStepsOutput :: AddJobFlowStepsOutput
newAddJobFlowStepsOutput  = AddJobFlowStepsOutput { "StepIds": Nothing }

-- | Constructs AddJobFlowStepsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAddJobFlowStepsOutput' :: ( { "StepIds" :: Maybe (StepIdsList) } -> {"StepIds" :: Maybe (StepIdsList) } ) -> AddJobFlowStepsOutput
newAddJobFlowStepsOutput'  customize = (AddJobFlowStepsOutput <<< customize) { "StepIds": Nothing }



-- | <p>This input identifies a cluster and a list of tags to attach.</p>
newtype AddTagsInput = AddTagsInput 
  { "ResourceId" :: (ResourceId)
  , "Tags" :: (TagList)
  }
derive instance newtypeAddTagsInput :: Newtype AddTagsInput _
derive instance repGenericAddTagsInput :: Generic AddTagsInput _
instance showAddTagsInput :: Show AddTagsInput where show = genericShow
instance decodeAddTagsInput :: Decode AddTagsInput where decode = genericDecode options
instance encodeAddTagsInput :: Encode AddTagsInput where encode = genericEncode options

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
instance showAddTagsOutput :: Show AddTagsOutput where show = genericShow
instance decodeAddTagsOutput :: Decode AddTagsOutput where decode = genericDecode options
instance encodeAddTagsOutput :: Encode AddTagsOutput where encode = genericEncode options



newtype AdjustmentType = AdjustmentType String
derive instance newtypeAdjustmentType :: Newtype AdjustmentType _
derive instance repGenericAdjustmentType :: Generic AdjustmentType _
instance showAdjustmentType :: Show AdjustmentType where show = genericShow
instance decodeAdjustmentType :: Decode AdjustmentType where decode = genericDecode options
instance encodeAdjustmentType :: Encode AdjustmentType where encode = genericEncode options



-- | <p>An application is any Amazon or third-party software that you can add to the cluster. This structure contains a list of strings that indicates the software to use with the cluster and accepts a user argument list. Amazon EMR accepts and forwards the argument list to the corresponding installation script as bootstrap action argument. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-mapr.html">Using the MapR Distribution for Hadoop</a>. Currently supported values are:</p> <ul> <li> <p>"mapr-m3" - launch the cluster using MapR M3 Edition.</p> </li> <li> <p>"mapr-m5" - launch the cluster using MapR M5 Edition.</p> </li> <li> <p>"mapr" with the user arguments specifying "--edition,m3" or "--edition,m5" - launch the cluster using MapR M3 or M5 Edition, respectively.</p> </li> </ul> <note> <p>In Amazon EMR releases 4.x and later, the only accepted parameter is the application name. To pass arguments to applications, you supply a configuration for each application.</p> </note>
newtype Application = Application 
  { "Name" :: Maybe (String)
  , "Version" :: Maybe (String)
  , "Args" :: Maybe (StringList)
  , "AdditionalInfo" :: Maybe (StringMap)
  }
derive instance newtypeApplication :: Newtype Application _
derive instance repGenericApplication :: Generic Application _
instance showApplication :: Show Application where show = genericShow
instance decodeApplication :: Decode Application where decode = genericDecode options
instance encodeApplication :: Encode Application where encode = genericEncode options

-- | Constructs Application from required parameters
newApplication :: Application
newApplication  = Application { "AdditionalInfo": Nothing, "Args": Nothing, "Name": Nothing, "Version": Nothing }

-- | Constructs Application's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newApplication' :: ( { "Name" :: Maybe (String) , "Version" :: Maybe (String) , "Args" :: Maybe (StringList) , "AdditionalInfo" :: Maybe (StringMap) } -> {"Name" :: Maybe (String) , "Version" :: Maybe (String) , "Args" :: Maybe (StringList) , "AdditionalInfo" :: Maybe (StringMap) } ) -> Application
newApplication'  customize = (Application <<< customize) { "AdditionalInfo": Nothing, "Args": Nothing, "Name": Nothing, "Version": Nothing }



newtype ApplicationList = ApplicationList (Array Application)
derive instance newtypeApplicationList :: Newtype ApplicationList _
derive instance repGenericApplicationList :: Generic ApplicationList _
instance showApplicationList :: Show ApplicationList where show = genericShow
instance decodeApplicationList :: Decode ApplicationList where decode = genericDecode options
instance encodeApplicationList :: Encode ApplicationList where encode = genericEncode options



-- | <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. An automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>
newtype AutoScalingPolicy = AutoScalingPolicy 
  { "Constraints" :: (ScalingConstraints)
  , "Rules" :: (ScalingRuleList)
  }
derive instance newtypeAutoScalingPolicy :: Newtype AutoScalingPolicy _
derive instance repGenericAutoScalingPolicy :: Generic AutoScalingPolicy _
instance showAutoScalingPolicy :: Show AutoScalingPolicy where show = genericShow
instance decodeAutoScalingPolicy :: Decode AutoScalingPolicy where decode = genericDecode options
instance encodeAutoScalingPolicy :: Encode AutoScalingPolicy where encode = genericEncode options

-- | Constructs AutoScalingPolicy from required parameters
newAutoScalingPolicy :: ScalingConstraints -> ScalingRuleList -> AutoScalingPolicy
newAutoScalingPolicy _Constraints _Rules = AutoScalingPolicy { "Constraints": _Constraints, "Rules": _Rules }

-- | Constructs AutoScalingPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicy' :: ScalingConstraints -> ScalingRuleList -> ( { "Constraints" :: (ScalingConstraints) , "Rules" :: (ScalingRuleList) } -> {"Constraints" :: (ScalingConstraints) , "Rules" :: (ScalingRuleList) } ) -> AutoScalingPolicy
newAutoScalingPolicy' _Constraints _Rules customize = (AutoScalingPolicy <<< customize) { "Constraints": _Constraints, "Rules": _Rules }



-- | <p>An automatic scaling policy for a core instance group or task instance group in an Amazon EMR cluster. The automatic scaling policy defines how an instance group dynamically adds and terminates EC2 instances in response to the value of a CloudWatch metric. See <a>PutAutoScalingPolicy</a>.</p>
newtype AutoScalingPolicyDescription = AutoScalingPolicyDescription 
  { "Status" :: Maybe (AutoScalingPolicyStatus)
  , "Constraints" :: Maybe (ScalingConstraints)
  , "Rules" :: Maybe (ScalingRuleList)
  }
derive instance newtypeAutoScalingPolicyDescription :: Newtype AutoScalingPolicyDescription _
derive instance repGenericAutoScalingPolicyDescription :: Generic AutoScalingPolicyDescription _
instance showAutoScalingPolicyDescription :: Show AutoScalingPolicyDescription where show = genericShow
instance decodeAutoScalingPolicyDescription :: Decode AutoScalingPolicyDescription where decode = genericDecode options
instance encodeAutoScalingPolicyDescription :: Encode AutoScalingPolicyDescription where encode = genericEncode options

-- | Constructs AutoScalingPolicyDescription from required parameters
newAutoScalingPolicyDescription :: AutoScalingPolicyDescription
newAutoScalingPolicyDescription  = AutoScalingPolicyDescription { "Constraints": Nothing, "Rules": Nothing, "Status": Nothing }

-- | Constructs AutoScalingPolicyDescription's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicyDescription' :: ( { "Status" :: Maybe (AutoScalingPolicyStatus) , "Constraints" :: Maybe (ScalingConstraints) , "Rules" :: Maybe (ScalingRuleList) } -> {"Status" :: Maybe (AutoScalingPolicyStatus) , "Constraints" :: Maybe (ScalingConstraints) , "Rules" :: Maybe (ScalingRuleList) } ) -> AutoScalingPolicyDescription
newAutoScalingPolicyDescription'  customize = (AutoScalingPolicyDescription <<< customize) { "Constraints": Nothing, "Rules": Nothing, "Status": Nothing }



newtype AutoScalingPolicyState = AutoScalingPolicyState String
derive instance newtypeAutoScalingPolicyState :: Newtype AutoScalingPolicyState _
derive instance repGenericAutoScalingPolicyState :: Generic AutoScalingPolicyState _
instance showAutoScalingPolicyState :: Show AutoScalingPolicyState where show = genericShow
instance decodeAutoScalingPolicyState :: Decode AutoScalingPolicyState where decode = genericDecode options
instance encodeAutoScalingPolicyState :: Encode AutoScalingPolicyState where encode = genericEncode options



-- | <p>The reason for an <a>AutoScalingPolicyStatus</a> change.</p>
newtype AutoScalingPolicyStateChangeReason = AutoScalingPolicyStateChangeReason 
  { "Code" :: Maybe (AutoScalingPolicyStateChangeReasonCode)
  , "Message" :: Maybe (String)
  }
derive instance newtypeAutoScalingPolicyStateChangeReason :: Newtype AutoScalingPolicyStateChangeReason _
derive instance repGenericAutoScalingPolicyStateChangeReason :: Generic AutoScalingPolicyStateChangeReason _
instance showAutoScalingPolicyStateChangeReason :: Show AutoScalingPolicyStateChangeReason where show = genericShow
instance decodeAutoScalingPolicyStateChangeReason :: Decode AutoScalingPolicyStateChangeReason where decode = genericDecode options
instance encodeAutoScalingPolicyStateChangeReason :: Encode AutoScalingPolicyStateChangeReason where encode = genericEncode options

-- | Constructs AutoScalingPolicyStateChangeReason from required parameters
newAutoScalingPolicyStateChangeReason :: AutoScalingPolicyStateChangeReason
newAutoScalingPolicyStateChangeReason  = AutoScalingPolicyStateChangeReason { "Code": Nothing, "Message": Nothing }

-- | Constructs AutoScalingPolicyStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicyStateChangeReason' :: ( { "Code" :: Maybe (AutoScalingPolicyStateChangeReasonCode) , "Message" :: Maybe (String) } -> {"Code" :: Maybe (AutoScalingPolicyStateChangeReasonCode) , "Message" :: Maybe (String) } ) -> AutoScalingPolicyStateChangeReason
newAutoScalingPolicyStateChangeReason'  customize = (AutoScalingPolicyStateChangeReason <<< customize) { "Code": Nothing, "Message": Nothing }



newtype AutoScalingPolicyStateChangeReasonCode = AutoScalingPolicyStateChangeReasonCode String
derive instance newtypeAutoScalingPolicyStateChangeReasonCode :: Newtype AutoScalingPolicyStateChangeReasonCode _
derive instance repGenericAutoScalingPolicyStateChangeReasonCode :: Generic AutoScalingPolicyStateChangeReasonCode _
instance showAutoScalingPolicyStateChangeReasonCode :: Show AutoScalingPolicyStateChangeReasonCode where show = genericShow
instance decodeAutoScalingPolicyStateChangeReasonCode :: Decode AutoScalingPolicyStateChangeReasonCode where decode = genericDecode options
instance encodeAutoScalingPolicyStateChangeReasonCode :: Encode AutoScalingPolicyStateChangeReasonCode where encode = genericEncode options



-- | <p>The status of an automatic scaling policy. </p>
newtype AutoScalingPolicyStatus = AutoScalingPolicyStatus 
  { "State" :: Maybe (AutoScalingPolicyState)
  , "StateChangeReason" :: Maybe (AutoScalingPolicyStateChangeReason)
  }
derive instance newtypeAutoScalingPolicyStatus :: Newtype AutoScalingPolicyStatus _
derive instance repGenericAutoScalingPolicyStatus :: Generic AutoScalingPolicyStatus _
instance showAutoScalingPolicyStatus :: Show AutoScalingPolicyStatus where show = genericShow
instance decodeAutoScalingPolicyStatus :: Decode AutoScalingPolicyStatus where decode = genericDecode options
instance encodeAutoScalingPolicyStatus :: Encode AutoScalingPolicyStatus where encode = genericEncode options

-- | Constructs AutoScalingPolicyStatus from required parameters
newAutoScalingPolicyStatus :: AutoScalingPolicyStatus
newAutoScalingPolicyStatus  = AutoScalingPolicyStatus { "State": Nothing, "StateChangeReason": Nothing }

-- | Constructs AutoScalingPolicyStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAutoScalingPolicyStatus' :: ( { "State" :: Maybe (AutoScalingPolicyState) , "StateChangeReason" :: Maybe (AutoScalingPolicyStateChangeReason) } -> {"State" :: Maybe (AutoScalingPolicyState) , "StateChangeReason" :: Maybe (AutoScalingPolicyStateChangeReason) } ) -> AutoScalingPolicyStatus
newAutoScalingPolicyStatus'  customize = (AutoScalingPolicyStatus <<< customize) { "State": Nothing, "StateChangeReason": Nothing }



newtype BooleanObject = BooleanObject Boolean
derive instance newtypeBooleanObject :: Newtype BooleanObject _
derive instance repGenericBooleanObject :: Generic BooleanObject _
instance showBooleanObject :: Show BooleanObject where show = genericShow
instance decodeBooleanObject :: Decode BooleanObject where decode = genericDecode options
instance encodeBooleanObject :: Encode BooleanObject where encode = genericEncode options



-- | <p>Configuration of a bootstrap action.</p>
newtype BootstrapActionConfig = BootstrapActionConfig 
  { "Name" :: (XmlStringMaxLen256)
  , "ScriptBootstrapAction" :: (ScriptBootstrapActionConfig)
  }
derive instance newtypeBootstrapActionConfig :: Newtype BootstrapActionConfig _
derive instance repGenericBootstrapActionConfig :: Generic BootstrapActionConfig _
instance showBootstrapActionConfig :: Show BootstrapActionConfig where show = genericShow
instance decodeBootstrapActionConfig :: Decode BootstrapActionConfig where decode = genericDecode options
instance encodeBootstrapActionConfig :: Encode BootstrapActionConfig where encode = genericEncode options

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
instance showBootstrapActionConfigList :: Show BootstrapActionConfigList where show = genericShow
instance decodeBootstrapActionConfigList :: Decode BootstrapActionConfigList where decode = genericDecode options
instance encodeBootstrapActionConfigList :: Encode BootstrapActionConfigList where encode = genericEncode options



-- | <p>Reports the configuration of a bootstrap action in a cluster (job flow).</p>
newtype BootstrapActionDetail = BootstrapActionDetail 
  { "BootstrapActionConfig" :: Maybe (BootstrapActionConfig)
  }
derive instance newtypeBootstrapActionDetail :: Newtype BootstrapActionDetail _
derive instance repGenericBootstrapActionDetail :: Generic BootstrapActionDetail _
instance showBootstrapActionDetail :: Show BootstrapActionDetail where show = genericShow
instance decodeBootstrapActionDetail :: Decode BootstrapActionDetail where decode = genericDecode options
instance encodeBootstrapActionDetail :: Encode BootstrapActionDetail where encode = genericEncode options

-- | Constructs BootstrapActionDetail from required parameters
newBootstrapActionDetail :: BootstrapActionDetail
newBootstrapActionDetail  = BootstrapActionDetail { "BootstrapActionConfig": Nothing }

-- | Constructs BootstrapActionDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newBootstrapActionDetail' :: ( { "BootstrapActionConfig" :: Maybe (BootstrapActionConfig) } -> {"BootstrapActionConfig" :: Maybe (BootstrapActionConfig) } ) -> BootstrapActionDetail
newBootstrapActionDetail'  customize = (BootstrapActionDetail <<< customize) { "BootstrapActionConfig": Nothing }



newtype BootstrapActionDetailList = BootstrapActionDetailList (Array BootstrapActionDetail)
derive instance newtypeBootstrapActionDetailList :: Newtype BootstrapActionDetailList _
derive instance repGenericBootstrapActionDetailList :: Generic BootstrapActionDetailList _
instance showBootstrapActionDetailList :: Show BootstrapActionDetailList where show = genericShow
instance decodeBootstrapActionDetailList :: Decode BootstrapActionDetailList where decode = genericDecode options
instance encodeBootstrapActionDetailList :: Encode BootstrapActionDetailList where encode = genericEncode options



-- | <p>Specification of the status of a CancelSteps request. Available only in Amazon EMR version 4.8.0 and later, excluding version 5.0.0.</p>
newtype CancelStepsInfo = CancelStepsInfo 
  { "StepId" :: Maybe (StepId)
  , "Status" :: Maybe (CancelStepsRequestStatus)
  , "Reason" :: Maybe (String)
  }
derive instance newtypeCancelStepsInfo :: Newtype CancelStepsInfo _
derive instance repGenericCancelStepsInfo :: Generic CancelStepsInfo _
instance showCancelStepsInfo :: Show CancelStepsInfo where show = genericShow
instance decodeCancelStepsInfo :: Decode CancelStepsInfo where decode = genericDecode options
instance encodeCancelStepsInfo :: Encode CancelStepsInfo where encode = genericEncode options

-- | Constructs CancelStepsInfo from required parameters
newCancelStepsInfo :: CancelStepsInfo
newCancelStepsInfo  = CancelStepsInfo { "Reason": Nothing, "Status": Nothing, "StepId": Nothing }

-- | Constructs CancelStepsInfo's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelStepsInfo' :: ( { "StepId" :: Maybe (StepId) , "Status" :: Maybe (CancelStepsRequestStatus) , "Reason" :: Maybe (String) } -> {"StepId" :: Maybe (StepId) , "Status" :: Maybe (CancelStepsRequestStatus) , "Reason" :: Maybe (String) } ) -> CancelStepsInfo
newCancelStepsInfo'  customize = (CancelStepsInfo <<< customize) { "Reason": Nothing, "Status": Nothing, "StepId": Nothing }



newtype CancelStepsInfoList = CancelStepsInfoList (Array CancelStepsInfo)
derive instance newtypeCancelStepsInfoList :: Newtype CancelStepsInfoList _
derive instance repGenericCancelStepsInfoList :: Generic CancelStepsInfoList _
instance showCancelStepsInfoList :: Show CancelStepsInfoList where show = genericShow
instance decodeCancelStepsInfoList :: Decode CancelStepsInfoList where decode = genericDecode options
instance encodeCancelStepsInfoList :: Encode CancelStepsInfoList where encode = genericEncode options



-- | <p>The input argument to the <a>CancelSteps</a> operation.</p>
newtype CancelStepsInput = CancelStepsInput 
  { "ClusterId" :: Maybe (XmlStringMaxLen256)
  , "StepIds" :: Maybe (StepIdsList)
  }
derive instance newtypeCancelStepsInput :: Newtype CancelStepsInput _
derive instance repGenericCancelStepsInput :: Generic CancelStepsInput _
instance showCancelStepsInput :: Show CancelStepsInput where show = genericShow
instance decodeCancelStepsInput :: Decode CancelStepsInput where decode = genericDecode options
instance encodeCancelStepsInput :: Encode CancelStepsInput where encode = genericEncode options

-- | Constructs CancelStepsInput from required parameters
newCancelStepsInput :: CancelStepsInput
newCancelStepsInput  = CancelStepsInput { "ClusterId": Nothing, "StepIds": Nothing }

-- | Constructs CancelStepsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelStepsInput' :: ( { "ClusterId" :: Maybe (XmlStringMaxLen256) , "StepIds" :: Maybe (StepIdsList) } -> {"ClusterId" :: Maybe (XmlStringMaxLen256) , "StepIds" :: Maybe (StepIdsList) } ) -> CancelStepsInput
newCancelStepsInput'  customize = (CancelStepsInput <<< customize) { "ClusterId": Nothing, "StepIds": Nothing }



-- | <p> The output for the <a>CancelSteps</a> operation. </p>
newtype CancelStepsOutput = CancelStepsOutput 
  { "CancelStepsInfoList" :: Maybe (CancelStepsInfoList)
  }
derive instance newtypeCancelStepsOutput :: Newtype CancelStepsOutput _
derive instance repGenericCancelStepsOutput :: Generic CancelStepsOutput _
instance showCancelStepsOutput :: Show CancelStepsOutput where show = genericShow
instance decodeCancelStepsOutput :: Decode CancelStepsOutput where decode = genericDecode options
instance encodeCancelStepsOutput :: Encode CancelStepsOutput where encode = genericEncode options

-- | Constructs CancelStepsOutput from required parameters
newCancelStepsOutput :: CancelStepsOutput
newCancelStepsOutput  = CancelStepsOutput { "CancelStepsInfoList": Nothing }

-- | Constructs CancelStepsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelStepsOutput' :: ( { "CancelStepsInfoList" :: Maybe (CancelStepsInfoList) } -> {"CancelStepsInfoList" :: Maybe (CancelStepsInfoList) } ) -> CancelStepsOutput
newCancelStepsOutput'  customize = (CancelStepsOutput <<< customize) { "CancelStepsInfoList": Nothing }



newtype CancelStepsRequestStatus = CancelStepsRequestStatus String
derive instance newtypeCancelStepsRequestStatus :: Newtype CancelStepsRequestStatus _
derive instance repGenericCancelStepsRequestStatus :: Generic CancelStepsRequestStatus _
instance showCancelStepsRequestStatus :: Show CancelStepsRequestStatus where show = genericShow
instance decodeCancelStepsRequestStatus :: Decode CancelStepsRequestStatus where decode = genericDecode options
instance encodeCancelStepsRequestStatus :: Encode CancelStepsRequestStatus where encode = genericEncode options



-- | <p>The definition of a CloudWatch metric alarm, which determines when an automatic scaling activity is triggered. When the defined alarm conditions are satisfied, scaling activity begins.</p>
newtype CloudWatchAlarmDefinition = CloudWatchAlarmDefinition 
  { "ComparisonOperator" :: (ComparisonOperator)
  , "EvaluationPeriods" :: Maybe (Int)
  , "MetricName" :: (String)
  , "Namespace" :: Maybe (String)
  , "Period" :: (Int)
  , "Statistic" :: Maybe (Statistic)
  , "Threshold" :: (NonNegativeDouble)
  , "Unit" :: Maybe (Unit'')
  , "Dimensions" :: Maybe (MetricDimensionList)
  }
derive instance newtypeCloudWatchAlarmDefinition :: Newtype CloudWatchAlarmDefinition _
derive instance repGenericCloudWatchAlarmDefinition :: Generic CloudWatchAlarmDefinition _
instance showCloudWatchAlarmDefinition :: Show CloudWatchAlarmDefinition where show = genericShow
instance decodeCloudWatchAlarmDefinition :: Decode CloudWatchAlarmDefinition where decode = genericDecode options
instance encodeCloudWatchAlarmDefinition :: Encode CloudWatchAlarmDefinition where encode = genericEncode options

-- | Constructs CloudWatchAlarmDefinition from required parameters
newCloudWatchAlarmDefinition :: ComparisonOperator -> String -> Int -> NonNegativeDouble -> CloudWatchAlarmDefinition
newCloudWatchAlarmDefinition _ComparisonOperator _MetricName _Period _Threshold = CloudWatchAlarmDefinition { "ComparisonOperator": _ComparisonOperator, "MetricName": _MetricName, "Period": _Period, "Threshold": _Threshold, "Dimensions": Nothing, "EvaluationPeriods": Nothing, "Namespace": Nothing, "Statistic": Nothing, "Unit": Nothing }

-- | Constructs CloudWatchAlarmDefinition's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCloudWatchAlarmDefinition' :: ComparisonOperator -> String -> Int -> NonNegativeDouble -> ( { "ComparisonOperator" :: (ComparisonOperator) , "EvaluationPeriods" :: Maybe (Int) , "MetricName" :: (String) , "Namespace" :: Maybe (String) , "Period" :: (Int) , "Statistic" :: Maybe (Statistic) , "Threshold" :: (NonNegativeDouble) , "Unit" :: Maybe (Unit'') , "Dimensions" :: Maybe (MetricDimensionList) } -> {"ComparisonOperator" :: (ComparisonOperator) , "EvaluationPeriods" :: Maybe (Int) , "MetricName" :: (String) , "Namespace" :: Maybe (String) , "Period" :: (Int) , "Statistic" :: Maybe (Statistic) , "Threshold" :: (NonNegativeDouble) , "Unit" :: Maybe (Unit'') , "Dimensions" :: Maybe (MetricDimensionList) } ) -> CloudWatchAlarmDefinition
newCloudWatchAlarmDefinition' _ComparisonOperator _MetricName _Period _Threshold customize = (CloudWatchAlarmDefinition <<< customize) { "ComparisonOperator": _ComparisonOperator, "MetricName": _MetricName, "Period": _Period, "Threshold": _Threshold, "Dimensions": Nothing, "EvaluationPeriods": Nothing, "Namespace": Nothing, "Statistic": Nothing, "Unit": Nothing }



-- | <p>The detailed description of the cluster.</p>
newtype Cluster = Cluster 
  { "Id" :: Maybe (ClusterId)
  , "Name" :: Maybe (String)
  , "Status" :: Maybe (ClusterStatus)
  , "Ec2InstanceAttributes" :: Maybe (Ec2InstanceAttributes)
  , "InstanceCollectionType" :: Maybe (InstanceCollectionType)
  , "LogUri" :: Maybe (String)
  , "RequestedAmiVersion" :: Maybe (String)
  , "RunningAmiVersion" :: Maybe (String)
  , "ReleaseLabel" :: Maybe (String)
  , "AutoTerminate" :: Maybe (Boolean)
  , "TerminationProtected" :: Maybe (Boolean)
  , "VisibleToAllUsers" :: Maybe (Boolean)
  , "Applications" :: Maybe (ApplicationList)
  , "Tags" :: Maybe (TagList)
  , "ServiceRole" :: Maybe (String)
  , "NormalizedInstanceHours" :: Maybe (Int)
  , "MasterPublicDnsName" :: Maybe (String)
  , "Configurations" :: Maybe (ConfigurationList)
  , "SecurityConfiguration" :: Maybe (XmlString)
  , "AutoScalingRole" :: Maybe (XmlString)
  , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior)
  , "CustomAmiId" :: Maybe (XmlStringMaxLen256)
  , "EbsRootVolumeSize" :: Maybe (Int)
  , "RepoUpgradeOnBoot" :: Maybe (RepoUpgradeOnBoot)
  , "KerberosAttributes" :: Maybe (KerberosAttributes)
  }
derive instance newtypeCluster :: Newtype Cluster _
derive instance repGenericCluster :: Generic Cluster _
instance showCluster :: Show Cluster where show = genericShow
instance decodeCluster :: Decode Cluster where decode = genericDecode options
instance encodeCluster :: Encode Cluster where encode = genericEncode options

-- | Constructs Cluster from required parameters
newCluster :: Cluster
newCluster  = Cluster { "Applications": Nothing, "AutoScalingRole": Nothing, "AutoTerminate": Nothing, "Configurations": Nothing, "CustomAmiId": Nothing, "EbsRootVolumeSize": Nothing, "Ec2InstanceAttributes": Nothing, "Id": Nothing, "InstanceCollectionType": Nothing, "KerberosAttributes": Nothing, "LogUri": Nothing, "MasterPublicDnsName": Nothing, "Name": Nothing, "NormalizedInstanceHours": Nothing, "ReleaseLabel": Nothing, "RepoUpgradeOnBoot": Nothing, "RequestedAmiVersion": Nothing, "RunningAmiVersion": Nothing, "ScaleDownBehavior": Nothing, "SecurityConfiguration": Nothing, "ServiceRole": Nothing, "Status": Nothing, "Tags": Nothing, "TerminationProtected": Nothing, "VisibleToAllUsers": Nothing }

-- | Constructs Cluster's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCluster' :: ( { "Id" :: Maybe (ClusterId) , "Name" :: Maybe (String) , "Status" :: Maybe (ClusterStatus) , "Ec2InstanceAttributes" :: Maybe (Ec2InstanceAttributes) , "InstanceCollectionType" :: Maybe (InstanceCollectionType) , "LogUri" :: Maybe (String) , "RequestedAmiVersion" :: Maybe (String) , "RunningAmiVersion" :: Maybe (String) , "ReleaseLabel" :: Maybe (String) , "AutoTerminate" :: Maybe (Boolean) , "TerminationProtected" :: Maybe (Boolean) , "VisibleToAllUsers" :: Maybe (Boolean) , "Applications" :: Maybe (ApplicationList) , "Tags" :: Maybe (TagList) , "ServiceRole" :: Maybe (String) , "NormalizedInstanceHours" :: Maybe (Int) , "MasterPublicDnsName" :: Maybe (String) , "Configurations" :: Maybe (ConfigurationList) , "SecurityConfiguration" :: Maybe (XmlString) , "AutoScalingRole" :: Maybe (XmlString) , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior) , "CustomAmiId" :: Maybe (XmlStringMaxLen256) , "EbsRootVolumeSize" :: Maybe (Int) , "RepoUpgradeOnBoot" :: Maybe (RepoUpgradeOnBoot) , "KerberosAttributes" :: Maybe (KerberosAttributes) } -> {"Id" :: Maybe (ClusterId) , "Name" :: Maybe (String) , "Status" :: Maybe (ClusterStatus) , "Ec2InstanceAttributes" :: Maybe (Ec2InstanceAttributes) , "InstanceCollectionType" :: Maybe (InstanceCollectionType) , "LogUri" :: Maybe (String) , "RequestedAmiVersion" :: Maybe (String) , "RunningAmiVersion" :: Maybe (String) , "ReleaseLabel" :: Maybe (String) , "AutoTerminate" :: Maybe (Boolean) , "TerminationProtected" :: Maybe (Boolean) , "VisibleToAllUsers" :: Maybe (Boolean) , "Applications" :: Maybe (ApplicationList) , "Tags" :: Maybe (TagList) , "ServiceRole" :: Maybe (String) , "NormalizedInstanceHours" :: Maybe (Int) , "MasterPublicDnsName" :: Maybe (String) , "Configurations" :: Maybe (ConfigurationList) , "SecurityConfiguration" :: Maybe (XmlString) , "AutoScalingRole" :: Maybe (XmlString) , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior) , "CustomAmiId" :: Maybe (XmlStringMaxLen256) , "EbsRootVolumeSize" :: Maybe (Int) , "RepoUpgradeOnBoot" :: Maybe (RepoUpgradeOnBoot) , "KerberosAttributes" :: Maybe (KerberosAttributes) } ) -> Cluster
newCluster'  customize = (Cluster <<< customize) { "Applications": Nothing, "AutoScalingRole": Nothing, "AutoTerminate": Nothing, "Configurations": Nothing, "CustomAmiId": Nothing, "EbsRootVolumeSize": Nothing, "Ec2InstanceAttributes": Nothing, "Id": Nothing, "InstanceCollectionType": Nothing, "KerberosAttributes": Nothing, "LogUri": Nothing, "MasterPublicDnsName": Nothing, "Name": Nothing, "NormalizedInstanceHours": Nothing, "ReleaseLabel": Nothing, "RepoUpgradeOnBoot": Nothing, "RequestedAmiVersion": Nothing, "RunningAmiVersion": Nothing, "ScaleDownBehavior": Nothing, "SecurityConfiguration": Nothing, "ServiceRole": Nothing, "Status": Nothing, "Tags": Nothing, "TerminationProtected": Nothing, "VisibleToAllUsers": Nothing }



newtype ClusterId = ClusterId String
derive instance newtypeClusterId :: Newtype ClusterId _
derive instance repGenericClusterId :: Generic ClusterId _
instance showClusterId :: Show ClusterId where show = genericShow
instance decodeClusterId :: Decode ClusterId where decode = genericDecode options
instance encodeClusterId :: Encode ClusterId where encode = genericEncode options



newtype ClusterState = ClusterState String
derive instance newtypeClusterState :: Newtype ClusterState _
derive instance repGenericClusterState :: Generic ClusterState _
instance showClusterState :: Show ClusterState where show = genericShow
instance decodeClusterState :: Decode ClusterState where decode = genericDecode options
instance encodeClusterState :: Encode ClusterState where encode = genericEncode options



-- | <p>The reason that the cluster changed to its current state.</p>
newtype ClusterStateChangeReason = ClusterStateChangeReason 
  { "Code" :: Maybe (ClusterStateChangeReasonCode)
  , "Message" :: Maybe (String)
  }
derive instance newtypeClusterStateChangeReason :: Newtype ClusterStateChangeReason _
derive instance repGenericClusterStateChangeReason :: Generic ClusterStateChangeReason _
instance showClusterStateChangeReason :: Show ClusterStateChangeReason where show = genericShow
instance decodeClusterStateChangeReason :: Decode ClusterStateChangeReason where decode = genericDecode options
instance encodeClusterStateChangeReason :: Encode ClusterStateChangeReason where encode = genericEncode options

-- | Constructs ClusterStateChangeReason from required parameters
newClusterStateChangeReason :: ClusterStateChangeReason
newClusterStateChangeReason  = ClusterStateChangeReason { "Code": Nothing, "Message": Nothing }

-- | Constructs ClusterStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterStateChangeReason' :: ( { "Code" :: Maybe (ClusterStateChangeReasonCode) , "Message" :: Maybe (String) } -> {"Code" :: Maybe (ClusterStateChangeReasonCode) , "Message" :: Maybe (String) } ) -> ClusterStateChangeReason
newClusterStateChangeReason'  customize = (ClusterStateChangeReason <<< customize) { "Code": Nothing, "Message": Nothing }



newtype ClusterStateChangeReasonCode = ClusterStateChangeReasonCode String
derive instance newtypeClusterStateChangeReasonCode :: Newtype ClusterStateChangeReasonCode _
derive instance repGenericClusterStateChangeReasonCode :: Generic ClusterStateChangeReasonCode _
instance showClusterStateChangeReasonCode :: Show ClusterStateChangeReasonCode where show = genericShow
instance decodeClusterStateChangeReasonCode :: Decode ClusterStateChangeReasonCode where decode = genericDecode options
instance encodeClusterStateChangeReasonCode :: Encode ClusterStateChangeReasonCode where encode = genericEncode options



newtype ClusterStateList = ClusterStateList (Array ClusterState)
derive instance newtypeClusterStateList :: Newtype ClusterStateList _
derive instance repGenericClusterStateList :: Generic ClusterStateList _
instance showClusterStateList :: Show ClusterStateList where show = genericShow
instance decodeClusterStateList :: Decode ClusterStateList where decode = genericDecode options
instance encodeClusterStateList :: Encode ClusterStateList where encode = genericEncode options



-- | <p>The detailed status of the cluster.</p>
newtype ClusterStatus = ClusterStatus 
  { "State" :: Maybe (ClusterState)
  , "StateChangeReason" :: Maybe (ClusterStateChangeReason)
  , "Timeline" :: Maybe (ClusterTimeline)
  }
derive instance newtypeClusterStatus :: Newtype ClusterStatus _
derive instance repGenericClusterStatus :: Generic ClusterStatus _
instance showClusterStatus :: Show ClusterStatus where show = genericShow
instance decodeClusterStatus :: Decode ClusterStatus where decode = genericDecode options
instance encodeClusterStatus :: Encode ClusterStatus where encode = genericEncode options

-- | Constructs ClusterStatus from required parameters
newClusterStatus :: ClusterStatus
newClusterStatus  = ClusterStatus { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }

-- | Constructs ClusterStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterStatus' :: ( { "State" :: Maybe (ClusterState) , "StateChangeReason" :: Maybe (ClusterStateChangeReason) , "Timeline" :: Maybe (ClusterTimeline) } -> {"State" :: Maybe (ClusterState) , "StateChangeReason" :: Maybe (ClusterStateChangeReason) , "Timeline" :: Maybe (ClusterTimeline) } ) -> ClusterStatus
newClusterStatus'  customize = (ClusterStatus <<< customize) { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }



-- | <p>The summary description of the cluster.</p>
newtype ClusterSummary = ClusterSummary 
  { "Id" :: Maybe (ClusterId)
  , "Name" :: Maybe (String)
  , "Status" :: Maybe (ClusterStatus)
  , "NormalizedInstanceHours" :: Maybe (Int)
  }
derive instance newtypeClusterSummary :: Newtype ClusterSummary _
derive instance repGenericClusterSummary :: Generic ClusterSummary _
instance showClusterSummary :: Show ClusterSummary where show = genericShow
instance decodeClusterSummary :: Decode ClusterSummary where decode = genericDecode options
instance encodeClusterSummary :: Encode ClusterSummary where encode = genericEncode options

-- | Constructs ClusterSummary from required parameters
newClusterSummary :: ClusterSummary
newClusterSummary  = ClusterSummary { "Id": Nothing, "Name": Nothing, "NormalizedInstanceHours": Nothing, "Status": Nothing }

-- | Constructs ClusterSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterSummary' :: ( { "Id" :: Maybe (ClusterId) , "Name" :: Maybe (String) , "Status" :: Maybe (ClusterStatus) , "NormalizedInstanceHours" :: Maybe (Int) } -> {"Id" :: Maybe (ClusterId) , "Name" :: Maybe (String) , "Status" :: Maybe (ClusterStatus) , "NormalizedInstanceHours" :: Maybe (Int) } ) -> ClusterSummary
newClusterSummary'  customize = (ClusterSummary <<< customize) { "Id": Nothing, "Name": Nothing, "NormalizedInstanceHours": Nothing, "Status": Nothing }



newtype ClusterSummaryList = ClusterSummaryList (Array ClusterSummary)
derive instance newtypeClusterSummaryList :: Newtype ClusterSummaryList _
derive instance repGenericClusterSummaryList :: Generic ClusterSummaryList _
instance showClusterSummaryList :: Show ClusterSummaryList where show = genericShow
instance decodeClusterSummaryList :: Decode ClusterSummaryList where decode = genericDecode options
instance encodeClusterSummaryList :: Encode ClusterSummaryList where encode = genericEncode options



-- | <p>Represents the timeline of the cluster's lifecycle.</p>
newtype ClusterTimeline = ClusterTimeline 
  { "CreationDateTime" :: Maybe (Date)
  , "ReadyDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  }
derive instance newtypeClusterTimeline :: Newtype ClusterTimeline _
derive instance repGenericClusterTimeline :: Generic ClusterTimeline _
instance showClusterTimeline :: Show ClusterTimeline where show = genericShow
instance decodeClusterTimeline :: Decode ClusterTimeline where decode = genericDecode options
instance encodeClusterTimeline :: Encode ClusterTimeline where encode = genericEncode options

-- | Constructs ClusterTimeline from required parameters
newClusterTimeline :: ClusterTimeline
newClusterTimeline  = ClusterTimeline { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }

-- | Constructs ClusterTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newClusterTimeline' :: ( { "CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } -> {"CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } ) -> ClusterTimeline
newClusterTimeline'  customize = (ClusterTimeline <<< customize) { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }



-- | <p>An entity describing an executable that runs on a cluster.</p>
newtype Command = Command 
  { "Name" :: Maybe (String)
  , "ScriptPath" :: Maybe (String)
  , "Args" :: Maybe (StringList)
  }
derive instance newtypeCommand :: Newtype Command _
derive instance repGenericCommand :: Generic Command _
instance showCommand :: Show Command where show = genericShow
instance decodeCommand :: Decode Command where decode = genericDecode options
instance encodeCommand :: Encode Command where encode = genericEncode options

-- | Constructs Command from required parameters
newCommand :: Command
newCommand  = Command { "Args": Nothing, "Name": Nothing, "ScriptPath": Nothing }

-- | Constructs Command's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCommand' :: ( { "Name" :: Maybe (String) , "ScriptPath" :: Maybe (String) , "Args" :: Maybe (StringList) } -> {"Name" :: Maybe (String) , "ScriptPath" :: Maybe (String) , "Args" :: Maybe (StringList) } ) -> Command
newCommand'  customize = (Command <<< customize) { "Args": Nothing, "Name": Nothing, "ScriptPath": Nothing }



newtype CommandList = CommandList (Array Command)
derive instance newtypeCommandList :: Newtype CommandList _
derive instance repGenericCommandList :: Generic CommandList _
instance showCommandList :: Show CommandList where show = genericShow
instance decodeCommandList :: Decode CommandList where decode = genericDecode options
instance encodeCommandList :: Encode CommandList where encode = genericEncode options



newtype ComparisonOperator = ComparisonOperator String
derive instance newtypeComparisonOperator :: Newtype ComparisonOperator _
derive instance repGenericComparisonOperator :: Generic ComparisonOperator _
instance showComparisonOperator :: Show ComparisonOperator where show = genericShow
instance decodeComparisonOperator :: Decode ComparisonOperator where decode = genericDecode options
instance encodeComparisonOperator :: Encode ComparisonOperator where encode = genericEncode options



-- | <note> <p>Amazon EMR releases 4.x or later.</p> </note> <p>An optional configuration specification to be used when provisioning cluster instances, which can include configurations for applications and software bundled with Amazon EMR. A configuration consists of a classification, properties, and optional nested configurations. A classification refers to an application-specific configuration file. Properties are the settings you want to change in that file. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ReleaseGuide/emr-configure-apps.html">Configuring Applications</a>.</p>
newtype Configuration = Configuration 
  { "Classification" :: Maybe (String)
  , "Properties" :: Maybe (StringMap)
  }
derive instance newtypeConfiguration :: Newtype Configuration _
derive instance repGenericConfiguration :: Generic Configuration _
instance showConfiguration :: Show Configuration where show = genericShow
instance decodeConfiguration :: Decode Configuration where decode = genericDecode options
instance encodeConfiguration :: Encode Configuration where encode = genericEncode options

-- | Constructs Configuration from required parameters
newConfiguration :: Configuration
newConfiguration  = Configuration { "Classification": Nothing, "Properties": Nothing }

-- | Constructs Configuration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConfiguration' :: ( { "Classification" :: Maybe (String) , "Properties" :: Maybe (StringMap) } -> {"Classification" :: Maybe (String) , "Properties" :: Maybe (StringMap) } ) -> Configuration
newConfiguration'  customize = (Configuration <<< customize) { "Classification": Nothing, "Properties": Nothing }



newtype ConfigurationList = ConfigurationList (Array Configuration)
derive instance newtypeConfigurationList :: Newtype ConfigurationList _
derive instance repGenericConfigurationList :: Generic ConfigurationList _
instance showConfigurationList :: Show ConfigurationList where show = genericShow
instance decodeConfigurationList :: Decode ConfigurationList where decode = genericDecode options
instance encodeConfigurationList :: Encode ConfigurationList where encode = genericEncode options



newtype CreateSecurityConfigurationInput = CreateSecurityConfigurationInput 
  { "Name" :: (XmlString)
  , "SecurityConfiguration" :: (String)
  }
derive instance newtypeCreateSecurityConfigurationInput :: Newtype CreateSecurityConfigurationInput _
derive instance repGenericCreateSecurityConfigurationInput :: Generic CreateSecurityConfigurationInput _
instance showCreateSecurityConfigurationInput :: Show CreateSecurityConfigurationInput where show = genericShow
instance decodeCreateSecurityConfigurationInput :: Decode CreateSecurityConfigurationInput where decode = genericDecode options
instance encodeCreateSecurityConfigurationInput :: Encode CreateSecurityConfigurationInput where encode = genericEncode options

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
instance showCreateSecurityConfigurationOutput :: Show CreateSecurityConfigurationOutput where show = genericShow
instance decodeCreateSecurityConfigurationOutput :: Decode CreateSecurityConfigurationOutput where decode = genericDecode options
instance encodeCreateSecurityConfigurationOutput :: Encode CreateSecurityConfigurationOutput where encode = genericEncode options

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
instance showDate :: Show Date where show = genericShow
instance decodeDate :: Decode Date where decode = genericDecode options
instance encodeDate :: Encode Date where encode = genericEncode options



newtype DeleteSecurityConfigurationInput = DeleteSecurityConfigurationInput 
  { "Name" :: (XmlString)
  }
derive instance newtypeDeleteSecurityConfigurationInput :: Newtype DeleteSecurityConfigurationInput _
derive instance repGenericDeleteSecurityConfigurationInput :: Generic DeleteSecurityConfigurationInput _
instance showDeleteSecurityConfigurationInput :: Show DeleteSecurityConfigurationInput where show = genericShow
instance decodeDeleteSecurityConfigurationInput :: Decode DeleteSecurityConfigurationInput where decode = genericDecode options
instance encodeDeleteSecurityConfigurationInput :: Encode DeleteSecurityConfigurationInput where encode = genericEncode options

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
instance showDeleteSecurityConfigurationOutput :: Show DeleteSecurityConfigurationOutput where show = genericShow
instance decodeDeleteSecurityConfigurationOutput :: Decode DeleteSecurityConfigurationOutput where decode = genericDecode options
instance encodeDeleteSecurityConfigurationOutput :: Encode DeleteSecurityConfigurationOutput where encode = genericEncode options



-- | <p>This input determines which cluster to describe.</p>
newtype DescribeClusterInput = DescribeClusterInput 
  { "ClusterId" :: (ClusterId)
  }
derive instance newtypeDescribeClusterInput :: Newtype DescribeClusterInput _
derive instance repGenericDescribeClusterInput :: Generic DescribeClusterInput _
instance showDescribeClusterInput :: Show DescribeClusterInput where show = genericShow
instance decodeDescribeClusterInput :: Decode DescribeClusterInput where decode = genericDecode options
instance encodeDescribeClusterInput :: Encode DescribeClusterInput where encode = genericEncode options

-- | Constructs DescribeClusterInput from required parameters
newDescribeClusterInput :: ClusterId -> DescribeClusterInput
newDescribeClusterInput _ClusterId = DescribeClusterInput { "ClusterId": _ClusterId }

-- | Constructs DescribeClusterInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) } -> {"ClusterId" :: (ClusterId) } ) -> DescribeClusterInput
newDescribeClusterInput' _ClusterId customize = (DescribeClusterInput <<< customize) { "ClusterId": _ClusterId }



-- | <p>This output contains the description of the cluster.</p>
newtype DescribeClusterOutput = DescribeClusterOutput 
  { "Cluster" :: Maybe (Cluster)
  }
derive instance newtypeDescribeClusterOutput :: Newtype DescribeClusterOutput _
derive instance repGenericDescribeClusterOutput :: Generic DescribeClusterOutput _
instance showDescribeClusterOutput :: Show DescribeClusterOutput where show = genericShow
instance decodeDescribeClusterOutput :: Decode DescribeClusterOutput where decode = genericDecode options
instance encodeDescribeClusterOutput :: Encode DescribeClusterOutput where encode = genericEncode options

-- | Constructs DescribeClusterOutput from required parameters
newDescribeClusterOutput :: DescribeClusterOutput
newDescribeClusterOutput  = DescribeClusterOutput { "Cluster": Nothing }

-- | Constructs DescribeClusterOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeClusterOutput' :: ( { "Cluster" :: Maybe (Cluster) } -> {"Cluster" :: Maybe (Cluster) } ) -> DescribeClusterOutput
newDescribeClusterOutput'  customize = (DescribeClusterOutput <<< customize) { "Cluster": Nothing }



-- | <p> The input for the <a>DescribeJobFlows</a> operation. </p>
newtype DescribeJobFlowsInput = DescribeJobFlowsInput 
  { "CreatedAfter" :: Maybe (Date)
  , "CreatedBefore" :: Maybe (Date)
  , "JobFlowIds" :: Maybe (XmlStringList)
  , "JobFlowStates" :: Maybe (JobFlowExecutionStateList)
  }
derive instance newtypeDescribeJobFlowsInput :: Newtype DescribeJobFlowsInput _
derive instance repGenericDescribeJobFlowsInput :: Generic DescribeJobFlowsInput _
instance showDescribeJobFlowsInput :: Show DescribeJobFlowsInput where show = genericShow
instance decodeDescribeJobFlowsInput :: Decode DescribeJobFlowsInput where decode = genericDecode options
instance encodeDescribeJobFlowsInput :: Encode DescribeJobFlowsInput where encode = genericEncode options

-- | Constructs DescribeJobFlowsInput from required parameters
newDescribeJobFlowsInput :: DescribeJobFlowsInput
newDescribeJobFlowsInput  = DescribeJobFlowsInput { "CreatedAfter": Nothing, "CreatedBefore": Nothing, "JobFlowIds": Nothing, "JobFlowStates": Nothing }

-- | Constructs DescribeJobFlowsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobFlowsInput' :: ( { "CreatedAfter" :: Maybe (Date) , "CreatedBefore" :: Maybe (Date) , "JobFlowIds" :: Maybe (XmlStringList) , "JobFlowStates" :: Maybe (JobFlowExecutionStateList) } -> {"CreatedAfter" :: Maybe (Date) , "CreatedBefore" :: Maybe (Date) , "JobFlowIds" :: Maybe (XmlStringList) , "JobFlowStates" :: Maybe (JobFlowExecutionStateList) } ) -> DescribeJobFlowsInput
newDescribeJobFlowsInput'  customize = (DescribeJobFlowsInput <<< customize) { "CreatedAfter": Nothing, "CreatedBefore": Nothing, "JobFlowIds": Nothing, "JobFlowStates": Nothing }



-- | <p> The output for the <a>DescribeJobFlows</a> operation. </p>
newtype DescribeJobFlowsOutput = DescribeJobFlowsOutput 
  { "JobFlows" :: Maybe (JobFlowDetailList)
  }
derive instance newtypeDescribeJobFlowsOutput :: Newtype DescribeJobFlowsOutput _
derive instance repGenericDescribeJobFlowsOutput :: Generic DescribeJobFlowsOutput _
instance showDescribeJobFlowsOutput :: Show DescribeJobFlowsOutput where show = genericShow
instance decodeDescribeJobFlowsOutput :: Decode DescribeJobFlowsOutput where decode = genericDecode options
instance encodeDescribeJobFlowsOutput :: Encode DescribeJobFlowsOutput where encode = genericEncode options

-- | Constructs DescribeJobFlowsOutput from required parameters
newDescribeJobFlowsOutput :: DescribeJobFlowsOutput
newDescribeJobFlowsOutput  = DescribeJobFlowsOutput { "JobFlows": Nothing }

-- | Constructs DescribeJobFlowsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeJobFlowsOutput' :: ( { "JobFlows" :: Maybe (JobFlowDetailList) } -> {"JobFlows" :: Maybe (JobFlowDetailList) } ) -> DescribeJobFlowsOutput
newDescribeJobFlowsOutput'  customize = (DescribeJobFlowsOutput <<< customize) { "JobFlows": Nothing }



newtype DescribeSecurityConfigurationInput = DescribeSecurityConfigurationInput 
  { "Name" :: (XmlString)
  }
derive instance newtypeDescribeSecurityConfigurationInput :: Newtype DescribeSecurityConfigurationInput _
derive instance repGenericDescribeSecurityConfigurationInput :: Generic DescribeSecurityConfigurationInput _
instance showDescribeSecurityConfigurationInput :: Show DescribeSecurityConfigurationInput where show = genericShow
instance decodeDescribeSecurityConfigurationInput :: Decode DescribeSecurityConfigurationInput where decode = genericDecode options
instance encodeDescribeSecurityConfigurationInput :: Encode DescribeSecurityConfigurationInput where encode = genericEncode options

-- | Constructs DescribeSecurityConfigurationInput from required parameters
newDescribeSecurityConfigurationInput :: XmlString -> DescribeSecurityConfigurationInput
newDescribeSecurityConfigurationInput _Name = DescribeSecurityConfigurationInput { "Name": _Name }

-- | Constructs DescribeSecurityConfigurationInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSecurityConfigurationInput' :: XmlString -> ( { "Name" :: (XmlString) } -> {"Name" :: (XmlString) } ) -> DescribeSecurityConfigurationInput
newDescribeSecurityConfigurationInput' _Name customize = (DescribeSecurityConfigurationInput <<< customize) { "Name": _Name }



newtype DescribeSecurityConfigurationOutput = DescribeSecurityConfigurationOutput 
  { "Name" :: Maybe (XmlString)
  , "SecurityConfiguration" :: Maybe (String)
  , "CreationDateTime" :: Maybe (Date)
  }
derive instance newtypeDescribeSecurityConfigurationOutput :: Newtype DescribeSecurityConfigurationOutput _
derive instance repGenericDescribeSecurityConfigurationOutput :: Generic DescribeSecurityConfigurationOutput _
instance showDescribeSecurityConfigurationOutput :: Show DescribeSecurityConfigurationOutput where show = genericShow
instance decodeDescribeSecurityConfigurationOutput :: Decode DescribeSecurityConfigurationOutput where decode = genericDecode options
instance encodeDescribeSecurityConfigurationOutput :: Encode DescribeSecurityConfigurationOutput where encode = genericEncode options

-- | Constructs DescribeSecurityConfigurationOutput from required parameters
newDescribeSecurityConfigurationOutput :: DescribeSecurityConfigurationOutput
newDescribeSecurityConfigurationOutput  = DescribeSecurityConfigurationOutput { "CreationDateTime": Nothing, "Name": Nothing, "SecurityConfiguration": Nothing }

-- | Constructs DescribeSecurityConfigurationOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeSecurityConfigurationOutput' :: ( { "Name" :: Maybe (XmlString) , "SecurityConfiguration" :: Maybe (String) , "CreationDateTime" :: Maybe (Date) } -> {"Name" :: Maybe (XmlString) , "SecurityConfiguration" :: Maybe (String) , "CreationDateTime" :: Maybe (Date) } ) -> DescribeSecurityConfigurationOutput
newDescribeSecurityConfigurationOutput'  customize = (DescribeSecurityConfigurationOutput <<< customize) { "CreationDateTime": Nothing, "Name": Nothing, "SecurityConfiguration": Nothing }



-- | <p>This input determines which step to describe.</p>
newtype DescribeStepInput = DescribeStepInput 
  { "ClusterId" :: (ClusterId)
  , "StepId" :: (StepId)
  }
derive instance newtypeDescribeStepInput :: Newtype DescribeStepInput _
derive instance repGenericDescribeStepInput :: Generic DescribeStepInput _
instance showDescribeStepInput :: Show DescribeStepInput where show = genericShow
instance decodeDescribeStepInput :: Decode DescribeStepInput where decode = genericDecode options
instance encodeDescribeStepInput :: Encode DescribeStepInput where encode = genericEncode options

-- | Constructs DescribeStepInput from required parameters
newDescribeStepInput :: ClusterId -> StepId -> DescribeStepInput
newDescribeStepInput _ClusterId _StepId = DescribeStepInput { "ClusterId": _ClusterId, "StepId": _StepId }

-- | Constructs DescribeStepInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStepInput' :: ClusterId -> StepId -> ( { "ClusterId" :: (ClusterId) , "StepId" :: (StepId) } -> {"ClusterId" :: (ClusterId) , "StepId" :: (StepId) } ) -> DescribeStepInput
newDescribeStepInput' _ClusterId _StepId customize = (DescribeStepInput <<< customize) { "ClusterId": _ClusterId, "StepId": _StepId }



-- | <p>This output contains the description of the cluster step.</p>
newtype DescribeStepOutput = DescribeStepOutput 
  { "Step" :: Maybe (Step)
  }
derive instance newtypeDescribeStepOutput :: Newtype DescribeStepOutput _
derive instance repGenericDescribeStepOutput :: Generic DescribeStepOutput _
instance showDescribeStepOutput :: Show DescribeStepOutput where show = genericShow
instance decodeDescribeStepOutput :: Decode DescribeStepOutput where decode = genericDecode options
instance encodeDescribeStepOutput :: Encode DescribeStepOutput where encode = genericEncode options

-- | Constructs DescribeStepOutput from required parameters
newDescribeStepOutput :: DescribeStepOutput
newDescribeStepOutput  = DescribeStepOutput { "Step": Nothing }

-- | Constructs DescribeStepOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeStepOutput' :: ( { "Step" :: Maybe (Step) } -> {"Step" :: Maybe (Step) } ) -> DescribeStepOutput
newDescribeStepOutput'  customize = (DescribeStepOutput <<< customize) { "Step": Nothing }



newtype EC2InstanceIdsList = EC2InstanceIdsList (Array InstanceId)
derive instance newtypeEC2InstanceIdsList :: Newtype EC2InstanceIdsList _
derive instance repGenericEC2InstanceIdsList :: Generic EC2InstanceIdsList _
instance showEC2InstanceIdsList :: Show EC2InstanceIdsList where show = genericShow
instance decodeEC2InstanceIdsList :: Decode EC2InstanceIdsList where decode = genericDecode options
instance encodeEC2InstanceIdsList :: Encode EC2InstanceIdsList where encode = genericEncode options



newtype EC2InstanceIdsToTerminateList = EC2InstanceIdsToTerminateList (Array InstanceId)
derive instance newtypeEC2InstanceIdsToTerminateList :: Newtype EC2InstanceIdsToTerminateList _
derive instance repGenericEC2InstanceIdsToTerminateList :: Generic EC2InstanceIdsToTerminateList _
instance showEC2InstanceIdsToTerminateList :: Show EC2InstanceIdsToTerminateList where show = genericShow
instance decodeEC2InstanceIdsToTerminateList :: Decode EC2InstanceIdsToTerminateList where decode = genericDecode options
instance encodeEC2InstanceIdsToTerminateList :: Encode EC2InstanceIdsToTerminateList where encode = genericEncode options



-- | <p>Configuration of requested EBS block device associated with the instance group.</p>
newtype EbsBlockDevice = EbsBlockDevice 
  { "VolumeSpecification" :: Maybe (VolumeSpecification)
  , "Device" :: Maybe (String)
  }
derive instance newtypeEbsBlockDevice :: Newtype EbsBlockDevice _
derive instance repGenericEbsBlockDevice :: Generic EbsBlockDevice _
instance showEbsBlockDevice :: Show EbsBlockDevice where show = genericShow
instance decodeEbsBlockDevice :: Decode EbsBlockDevice where decode = genericDecode options
instance encodeEbsBlockDevice :: Encode EbsBlockDevice where encode = genericEncode options

-- | Constructs EbsBlockDevice from required parameters
newEbsBlockDevice :: EbsBlockDevice
newEbsBlockDevice  = EbsBlockDevice { "Device": Nothing, "VolumeSpecification": Nothing }

-- | Constructs EbsBlockDevice's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsBlockDevice' :: ( { "VolumeSpecification" :: Maybe (VolumeSpecification) , "Device" :: Maybe (String) } -> {"VolumeSpecification" :: Maybe (VolumeSpecification) , "Device" :: Maybe (String) } ) -> EbsBlockDevice
newEbsBlockDevice'  customize = (EbsBlockDevice <<< customize) { "Device": Nothing, "VolumeSpecification": Nothing }



-- | <p>Configuration of requested EBS block device associated with the instance group with count of volumes that will be associated to every instance.</p>
newtype EbsBlockDeviceConfig = EbsBlockDeviceConfig 
  { "VolumeSpecification" :: (VolumeSpecification)
  , "VolumesPerInstance" :: Maybe (Int)
  }
derive instance newtypeEbsBlockDeviceConfig :: Newtype EbsBlockDeviceConfig _
derive instance repGenericEbsBlockDeviceConfig :: Generic EbsBlockDeviceConfig _
instance showEbsBlockDeviceConfig :: Show EbsBlockDeviceConfig where show = genericShow
instance decodeEbsBlockDeviceConfig :: Decode EbsBlockDeviceConfig where decode = genericDecode options
instance encodeEbsBlockDeviceConfig :: Encode EbsBlockDeviceConfig where encode = genericEncode options

-- | Constructs EbsBlockDeviceConfig from required parameters
newEbsBlockDeviceConfig :: VolumeSpecification -> EbsBlockDeviceConfig
newEbsBlockDeviceConfig _VolumeSpecification = EbsBlockDeviceConfig { "VolumeSpecification": _VolumeSpecification, "VolumesPerInstance": Nothing }

-- | Constructs EbsBlockDeviceConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsBlockDeviceConfig' :: VolumeSpecification -> ( { "VolumeSpecification" :: (VolumeSpecification) , "VolumesPerInstance" :: Maybe (Int) } -> {"VolumeSpecification" :: (VolumeSpecification) , "VolumesPerInstance" :: Maybe (Int) } ) -> EbsBlockDeviceConfig
newEbsBlockDeviceConfig' _VolumeSpecification customize = (EbsBlockDeviceConfig <<< customize) { "VolumeSpecification": _VolumeSpecification, "VolumesPerInstance": Nothing }



newtype EbsBlockDeviceConfigList = EbsBlockDeviceConfigList (Array EbsBlockDeviceConfig)
derive instance newtypeEbsBlockDeviceConfigList :: Newtype EbsBlockDeviceConfigList _
derive instance repGenericEbsBlockDeviceConfigList :: Generic EbsBlockDeviceConfigList _
instance showEbsBlockDeviceConfigList :: Show EbsBlockDeviceConfigList where show = genericShow
instance decodeEbsBlockDeviceConfigList :: Decode EbsBlockDeviceConfigList where decode = genericDecode options
instance encodeEbsBlockDeviceConfigList :: Encode EbsBlockDeviceConfigList where encode = genericEncode options



newtype EbsBlockDeviceList = EbsBlockDeviceList (Array EbsBlockDevice)
derive instance newtypeEbsBlockDeviceList :: Newtype EbsBlockDeviceList _
derive instance repGenericEbsBlockDeviceList :: Generic EbsBlockDeviceList _
instance showEbsBlockDeviceList :: Show EbsBlockDeviceList where show = genericShow
instance decodeEbsBlockDeviceList :: Decode EbsBlockDeviceList where decode = genericDecode options
instance encodeEbsBlockDeviceList :: Encode EbsBlockDeviceList where encode = genericEncode options



-- | <p>The Amazon EBS configuration of a cluster instance.</p>
newtype EbsConfiguration = EbsConfiguration 
  { "EbsBlockDeviceConfigs" :: Maybe (EbsBlockDeviceConfigList)
  , "EbsOptimized" :: Maybe (BooleanObject)
  }
derive instance newtypeEbsConfiguration :: Newtype EbsConfiguration _
derive instance repGenericEbsConfiguration :: Generic EbsConfiguration _
instance showEbsConfiguration :: Show EbsConfiguration where show = genericShow
instance decodeEbsConfiguration :: Decode EbsConfiguration where decode = genericDecode options
instance encodeEbsConfiguration :: Encode EbsConfiguration where encode = genericEncode options

-- | Constructs EbsConfiguration from required parameters
newEbsConfiguration :: EbsConfiguration
newEbsConfiguration  = EbsConfiguration { "EbsBlockDeviceConfigs": Nothing, "EbsOptimized": Nothing }

-- | Constructs EbsConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsConfiguration' :: ( { "EbsBlockDeviceConfigs" :: Maybe (EbsBlockDeviceConfigList) , "EbsOptimized" :: Maybe (BooleanObject) } -> {"EbsBlockDeviceConfigs" :: Maybe (EbsBlockDeviceConfigList) , "EbsOptimized" :: Maybe (BooleanObject) } ) -> EbsConfiguration
newEbsConfiguration'  customize = (EbsConfiguration <<< customize) { "EbsBlockDeviceConfigs": Nothing, "EbsOptimized": Nothing }



-- | <p>EBS block device that's attached to an EC2 instance.</p>
newtype EbsVolume = EbsVolume 
  { "Device" :: Maybe (String)
  , "VolumeId" :: Maybe (String)
  }
derive instance newtypeEbsVolume :: Newtype EbsVolume _
derive instance repGenericEbsVolume :: Generic EbsVolume _
instance showEbsVolume :: Show EbsVolume where show = genericShow
instance decodeEbsVolume :: Decode EbsVolume where decode = genericDecode options
instance encodeEbsVolume :: Encode EbsVolume where encode = genericEncode options

-- | Constructs EbsVolume from required parameters
newEbsVolume :: EbsVolume
newEbsVolume  = EbsVolume { "Device": Nothing, "VolumeId": Nothing }

-- | Constructs EbsVolume's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEbsVolume' :: ( { "Device" :: Maybe (String) , "VolumeId" :: Maybe (String) } -> {"Device" :: Maybe (String) , "VolumeId" :: Maybe (String) } ) -> EbsVolume
newEbsVolume'  customize = (EbsVolume <<< customize) { "Device": Nothing, "VolumeId": Nothing }



newtype EbsVolumeList = EbsVolumeList (Array EbsVolume)
derive instance newtypeEbsVolumeList :: Newtype EbsVolumeList _
derive instance repGenericEbsVolumeList :: Generic EbsVolumeList _
instance showEbsVolumeList :: Show EbsVolumeList where show = genericShow
instance decodeEbsVolumeList :: Decode EbsVolumeList where decode = genericDecode options
instance encodeEbsVolumeList :: Encode EbsVolumeList where encode = genericEncode options



-- | <p>Provides information about the EC2 instances in a cluster grouped by category. For example, key name, subnet ID, IAM instance profile, and so on.</p>
newtype Ec2InstanceAttributes = Ec2InstanceAttributes 
  { "Ec2KeyName" :: Maybe (String)
  , "Ec2SubnetId" :: Maybe (String)
  , "RequestedEc2SubnetIds" :: Maybe (XmlStringMaxLen256List)
  , "Ec2AvailabilityZone" :: Maybe (String)
  , "RequestedEc2AvailabilityZones" :: Maybe (XmlStringMaxLen256List)
  , "IamInstanceProfile" :: Maybe (String)
  , "EmrManagedMasterSecurityGroup" :: Maybe (String)
  , "EmrManagedSlaveSecurityGroup" :: Maybe (String)
  , "ServiceAccessSecurityGroup" :: Maybe (String)
  , "AdditionalMasterSecurityGroups" :: Maybe (StringList)
  , "AdditionalSlaveSecurityGroups" :: Maybe (StringList)
  }
derive instance newtypeEc2InstanceAttributes :: Newtype Ec2InstanceAttributes _
derive instance repGenericEc2InstanceAttributes :: Generic Ec2InstanceAttributes _
instance showEc2InstanceAttributes :: Show Ec2InstanceAttributes where show = genericShow
instance decodeEc2InstanceAttributes :: Decode Ec2InstanceAttributes where decode = genericDecode options
instance encodeEc2InstanceAttributes :: Encode Ec2InstanceAttributes where encode = genericEncode options

-- | Constructs Ec2InstanceAttributes from required parameters
newEc2InstanceAttributes :: Ec2InstanceAttributes
newEc2InstanceAttributes  = Ec2InstanceAttributes { "AdditionalMasterSecurityGroups": Nothing, "AdditionalSlaveSecurityGroups": Nothing, "Ec2AvailabilityZone": Nothing, "Ec2KeyName": Nothing, "Ec2SubnetId": Nothing, "EmrManagedMasterSecurityGroup": Nothing, "EmrManagedSlaveSecurityGroup": Nothing, "IamInstanceProfile": Nothing, "RequestedEc2AvailabilityZones": Nothing, "RequestedEc2SubnetIds": Nothing, "ServiceAccessSecurityGroup": Nothing }

-- | Constructs Ec2InstanceAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEc2InstanceAttributes' :: ( { "Ec2KeyName" :: Maybe (String) , "Ec2SubnetId" :: Maybe (String) , "RequestedEc2SubnetIds" :: Maybe (XmlStringMaxLen256List) , "Ec2AvailabilityZone" :: Maybe (String) , "RequestedEc2AvailabilityZones" :: Maybe (XmlStringMaxLen256List) , "IamInstanceProfile" :: Maybe (String) , "EmrManagedMasterSecurityGroup" :: Maybe (String) , "EmrManagedSlaveSecurityGroup" :: Maybe (String) , "ServiceAccessSecurityGroup" :: Maybe (String) , "AdditionalMasterSecurityGroups" :: Maybe (StringList) , "AdditionalSlaveSecurityGroups" :: Maybe (StringList) } -> {"Ec2KeyName" :: Maybe (String) , "Ec2SubnetId" :: Maybe (String) , "RequestedEc2SubnetIds" :: Maybe (XmlStringMaxLen256List) , "Ec2AvailabilityZone" :: Maybe (String) , "RequestedEc2AvailabilityZones" :: Maybe (XmlStringMaxLen256List) , "IamInstanceProfile" :: Maybe (String) , "EmrManagedMasterSecurityGroup" :: Maybe (String) , "EmrManagedSlaveSecurityGroup" :: Maybe (String) , "ServiceAccessSecurityGroup" :: Maybe (String) , "AdditionalMasterSecurityGroups" :: Maybe (StringList) , "AdditionalSlaveSecurityGroups" :: Maybe (StringList) } ) -> Ec2InstanceAttributes
newEc2InstanceAttributes'  customize = (Ec2InstanceAttributes <<< customize) { "AdditionalMasterSecurityGroups": Nothing, "AdditionalSlaveSecurityGroups": Nothing, "Ec2AvailabilityZone": Nothing, "Ec2KeyName": Nothing, "Ec2SubnetId": Nothing, "EmrManagedMasterSecurityGroup": Nothing, "EmrManagedSlaveSecurityGroup": Nothing, "IamInstanceProfile": Nothing, "RequestedEc2AvailabilityZones": Nothing, "RequestedEc2SubnetIds": Nothing, "ServiceAccessSecurityGroup": Nothing }



newtype ErrorCode = ErrorCode String
derive instance newtypeErrorCode :: Newtype ErrorCode _
derive instance repGenericErrorCode :: Generic ErrorCode _
instance showErrorCode :: Show ErrorCode where show = genericShow
instance decodeErrorCode :: Decode ErrorCode where decode = genericDecode options
instance encodeErrorCode :: Encode ErrorCode where encode = genericEncode options



newtype ErrorMessage = ErrorMessage String
derive instance newtypeErrorMessage :: Newtype ErrorMessage _
derive instance repGenericErrorMessage :: Generic ErrorMessage _
instance showErrorMessage :: Show ErrorMessage where show = genericShow
instance decodeErrorMessage :: Decode ErrorMessage where decode = genericDecode options
instance encodeErrorMessage :: Encode ErrorMessage where encode = genericEncode options



-- | <p>The details of the step failure. The service attempts to detect the root cause for many common failures.</p>
newtype FailureDetails = FailureDetails 
  { "Reason" :: Maybe (String)
  , "Message" :: Maybe (String)
  , "LogFile" :: Maybe (String)
  }
derive instance newtypeFailureDetails :: Newtype FailureDetails _
derive instance repGenericFailureDetails :: Generic FailureDetails _
instance showFailureDetails :: Show FailureDetails where show = genericShow
instance decodeFailureDetails :: Decode FailureDetails where decode = genericDecode options
instance encodeFailureDetails :: Encode FailureDetails where encode = genericEncode options

-- | Constructs FailureDetails from required parameters
newFailureDetails :: FailureDetails
newFailureDetails  = FailureDetails { "LogFile": Nothing, "Message": Nothing, "Reason": Nothing }

-- | Constructs FailureDetails's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFailureDetails' :: ( { "Reason" :: Maybe (String) , "Message" :: Maybe (String) , "LogFile" :: Maybe (String) } -> {"Reason" :: Maybe (String) , "Message" :: Maybe (String) , "LogFile" :: Maybe (String) } ) -> FailureDetails
newFailureDetails'  customize = (FailureDetails <<< customize) { "LogFile": Nothing, "Message": Nothing, "Reason": Nothing }



-- | <p>A job flow step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>
newtype HadoopJarStepConfig = HadoopJarStepConfig 
  { "Properties" :: Maybe (KeyValueList)
  , "Jar" :: (XmlString)
  , "MainClass" :: Maybe (XmlString)
  , "Args" :: Maybe (XmlStringList)
  }
derive instance newtypeHadoopJarStepConfig :: Newtype HadoopJarStepConfig _
derive instance repGenericHadoopJarStepConfig :: Generic HadoopJarStepConfig _
instance showHadoopJarStepConfig :: Show HadoopJarStepConfig where show = genericShow
instance decodeHadoopJarStepConfig :: Decode HadoopJarStepConfig where decode = genericDecode options
instance encodeHadoopJarStepConfig :: Encode HadoopJarStepConfig where encode = genericEncode options

-- | Constructs HadoopJarStepConfig from required parameters
newHadoopJarStepConfig :: XmlString -> HadoopJarStepConfig
newHadoopJarStepConfig _Jar = HadoopJarStepConfig { "Jar": _Jar, "Args": Nothing, "MainClass": Nothing, "Properties": Nothing }

-- | Constructs HadoopJarStepConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHadoopJarStepConfig' :: XmlString -> ( { "Properties" :: Maybe (KeyValueList) , "Jar" :: (XmlString) , "MainClass" :: Maybe (XmlString) , "Args" :: Maybe (XmlStringList) } -> {"Properties" :: Maybe (KeyValueList) , "Jar" :: (XmlString) , "MainClass" :: Maybe (XmlString) , "Args" :: Maybe (XmlStringList) } ) -> HadoopJarStepConfig
newHadoopJarStepConfig' _Jar customize = (HadoopJarStepConfig <<< customize) { "Jar": _Jar, "Args": Nothing, "MainClass": Nothing, "Properties": Nothing }



-- | <p>A cluster step consisting of a JAR file whose main function will be executed. The main function submits a job for Hadoop to execute and waits for the job to finish or fail.</p>
newtype HadoopStepConfig = HadoopStepConfig 
  { "Jar" :: Maybe (String)
  , "Properties" :: Maybe (StringMap)
  , "MainClass" :: Maybe (String)
  , "Args" :: Maybe (StringList)
  }
derive instance newtypeHadoopStepConfig :: Newtype HadoopStepConfig _
derive instance repGenericHadoopStepConfig :: Generic HadoopStepConfig _
instance showHadoopStepConfig :: Show HadoopStepConfig where show = genericShow
instance decodeHadoopStepConfig :: Decode HadoopStepConfig where decode = genericDecode options
instance encodeHadoopStepConfig :: Encode HadoopStepConfig where encode = genericEncode options

-- | Constructs HadoopStepConfig from required parameters
newHadoopStepConfig :: HadoopStepConfig
newHadoopStepConfig  = HadoopStepConfig { "Args": Nothing, "Jar": Nothing, "MainClass": Nothing, "Properties": Nothing }

-- | Constructs HadoopStepConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHadoopStepConfig' :: ( { "Jar" :: Maybe (String) , "Properties" :: Maybe (StringMap) , "MainClass" :: Maybe (String) , "Args" :: Maybe (StringList) } -> {"Jar" :: Maybe (String) , "Properties" :: Maybe (StringMap) , "MainClass" :: Maybe (String) , "Args" :: Maybe (StringList) } ) -> HadoopStepConfig
newHadoopStepConfig'  customize = (HadoopStepConfig <<< customize) { "Args": Nothing, "Jar": Nothing, "MainClass": Nothing, "Properties": Nothing }



-- | <p>Represents an EC2 instance provisioned as part of cluster.</p>
newtype Instance = Instance 
  { "Id" :: Maybe (InstanceId)
  , "Ec2InstanceId" :: Maybe (InstanceId)
  , "PublicDnsName" :: Maybe (String)
  , "PublicIpAddress" :: Maybe (String)
  , "PrivateDnsName" :: Maybe (String)
  , "PrivateIpAddress" :: Maybe (String)
  , "Status" :: Maybe (InstanceStatus)
  , "InstanceGroupId" :: Maybe (String)
  , "InstanceFleetId" :: Maybe (InstanceFleetId)
  , "Market" :: Maybe (MarketType)
  , "InstanceType" :: Maybe (InstanceType)
  , "EbsVolumes" :: Maybe (EbsVolumeList)
  }
derive instance newtypeInstance :: Newtype Instance _
derive instance repGenericInstance :: Generic Instance _
instance showInstance :: Show Instance where show = genericShow
instance decodeInstance :: Decode Instance where decode = genericDecode options
instance encodeInstance :: Encode Instance where encode = genericEncode options

-- | Constructs Instance from required parameters
newInstance :: Instance
newInstance  = Instance { "EbsVolumes": Nothing, "Ec2InstanceId": Nothing, "Id": Nothing, "InstanceFleetId": Nothing, "InstanceGroupId": Nothing, "InstanceType": Nothing, "Market": Nothing, "PrivateDnsName": Nothing, "PrivateIpAddress": Nothing, "PublicDnsName": Nothing, "PublicIpAddress": Nothing, "Status": Nothing }

-- | Constructs Instance's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstance' :: ( { "Id" :: Maybe (InstanceId) , "Ec2InstanceId" :: Maybe (InstanceId) , "PublicDnsName" :: Maybe (String) , "PublicIpAddress" :: Maybe (String) , "PrivateDnsName" :: Maybe (String) , "PrivateIpAddress" :: Maybe (String) , "Status" :: Maybe (InstanceStatus) , "InstanceGroupId" :: Maybe (String) , "InstanceFleetId" :: Maybe (InstanceFleetId) , "Market" :: Maybe (MarketType) , "InstanceType" :: Maybe (InstanceType) , "EbsVolumes" :: Maybe (EbsVolumeList) } -> {"Id" :: Maybe (InstanceId) , "Ec2InstanceId" :: Maybe (InstanceId) , "PublicDnsName" :: Maybe (String) , "PublicIpAddress" :: Maybe (String) , "PrivateDnsName" :: Maybe (String) , "PrivateIpAddress" :: Maybe (String) , "Status" :: Maybe (InstanceStatus) , "InstanceGroupId" :: Maybe (String) , "InstanceFleetId" :: Maybe (InstanceFleetId) , "Market" :: Maybe (MarketType) , "InstanceType" :: Maybe (InstanceType) , "EbsVolumes" :: Maybe (EbsVolumeList) } ) -> Instance
newInstance'  customize = (Instance <<< customize) { "EbsVolumes": Nothing, "Ec2InstanceId": Nothing, "Id": Nothing, "InstanceFleetId": Nothing, "InstanceGroupId": Nothing, "InstanceType": Nothing, "Market": Nothing, "PrivateDnsName": Nothing, "PrivateIpAddress": Nothing, "PublicDnsName": Nothing, "PublicIpAddress": Nothing, "Status": Nothing }



newtype InstanceCollectionType = InstanceCollectionType String
derive instance newtypeInstanceCollectionType :: Newtype InstanceCollectionType _
derive instance repGenericInstanceCollectionType :: Generic InstanceCollectionType _
instance showInstanceCollectionType :: Show InstanceCollectionType where show = genericShow
instance decodeInstanceCollectionType :: Decode InstanceCollectionType where decode = genericDecode options
instance encodeInstanceCollectionType :: Encode InstanceCollectionType where encode = genericEncode options



-- | <p>Describes an instance fleet, which is a group of EC2 instances that host a particular node type (master, core, or task) in an Amazon EMR cluster. Instance fleets can consist of a mix of instance types and On-Demand and Spot instances, which are provisioned to meet a defined target capacity. </p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleet = InstanceFleet 
  { "Id" :: Maybe (InstanceFleetId)
  , "Name" :: Maybe (XmlStringMaxLen256)
  , "Status" :: Maybe (InstanceFleetStatus)
  , "InstanceFleetType" :: Maybe (InstanceFleetType)
  , "TargetOnDemandCapacity" :: Maybe (WholeNumber)
  , "TargetSpotCapacity" :: Maybe (WholeNumber)
  , "ProvisionedOnDemandCapacity" :: Maybe (WholeNumber)
  , "ProvisionedSpotCapacity" :: Maybe (WholeNumber)
  , "InstanceTypeSpecifications" :: Maybe (InstanceTypeSpecificationList)
  , "LaunchSpecifications" :: Maybe (InstanceFleetProvisioningSpecifications)
  }
derive instance newtypeInstanceFleet :: Newtype InstanceFleet _
derive instance repGenericInstanceFleet :: Generic InstanceFleet _
instance showInstanceFleet :: Show InstanceFleet where show = genericShow
instance decodeInstanceFleet :: Decode InstanceFleet where decode = genericDecode options
instance encodeInstanceFleet :: Encode InstanceFleet where encode = genericEncode options

-- | Constructs InstanceFleet from required parameters
newInstanceFleet :: InstanceFleet
newInstanceFleet  = InstanceFleet { "Id": Nothing, "InstanceFleetType": Nothing, "InstanceTypeSpecifications": Nothing, "LaunchSpecifications": Nothing, "Name": Nothing, "ProvisionedOnDemandCapacity": Nothing, "ProvisionedSpotCapacity": Nothing, "Status": Nothing, "TargetOnDemandCapacity": Nothing, "TargetSpotCapacity": Nothing }

-- | Constructs InstanceFleet's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleet' :: ( { "Id" :: Maybe (InstanceFleetId) , "Name" :: Maybe (XmlStringMaxLen256) , "Status" :: Maybe (InstanceFleetStatus) , "InstanceFleetType" :: Maybe (InstanceFleetType) , "TargetOnDemandCapacity" :: Maybe (WholeNumber) , "TargetSpotCapacity" :: Maybe (WholeNumber) , "ProvisionedOnDemandCapacity" :: Maybe (WholeNumber) , "ProvisionedSpotCapacity" :: Maybe (WholeNumber) , "InstanceTypeSpecifications" :: Maybe (InstanceTypeSpecificationList) , "LaunchSpecifications" :: Maybe (InstanceFleetProvisioningSpecifications) } -> {"Id" :: Maybe (InstanceFleetId) , "Name" :: Maybe (XmlStringMaxLen256) , "Status" :: Maybe (InstanceFleetStatus) , "InstanceFleetType" :: Maybe (InstanceFleetType) , "TargetOnDemandCapacity" :: Maybe (WholeNumber) , "TargetSpotCapacity" :: Maybe (WholeNumber) , "ProvisionedOnDemandCapacity" :: Maybe (WholeNumber) , "ProvisionedSpotCapacity" :: Maybe (WholeNumber) , "InstanceTypeSpecifications" :: Maybe (InstanceTypeSpecificationList) , "LaunchSpecifications" :: Maybe (InstanceFleetProvisioningSpecifications) } ) -> InstanceFleet
newInstanceFleet'  customize = (InstanceFleet <<< customize) { "Id": Nothing, "InstanceFleetType": Nothing, "InstanceTypeSpecifications": Nothing, "LaunchSpecifications": Nothing, "Name": Nothing, "ProvisionedOnDemandCapacity": Nothing, "ProvisionedSpotCapacity": Nothing, "Status": Nothing, "TargetOnDemandCapacity": Nothing, "TargetSpotCapacity": Nothing }



-- | <p>The configuration that defines an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetConfig = InstanceFleetConfig 
  { "Name" :: Maybe (XmlStringMaxLen256)
  , "InstanceFleetType" :: (InstanceFleetType)
  , "TargetOnDemandCapacity" :: Maybe (WholeNumber)
  , "TargetSpotCapacity" :: Maybe (WholeNumber)
  , "InstanceTypeConfigs" :: Maybe (InstanceTypeConfigList)
  , "LaunchSpecifications" :: Maybe (InstanceFleetProvisioningSpecifications)
  }
derive instance newtypeInstanceFleetConfig :: Newtype InstanceFleetConfig _
derive instance repGenericInstanceFleetConfig :: Generic InstanceFleetConfig _
instance showInstanceFleetConfig :: Show InstanceFleetConfig where show = genericShow
instance decodeInstanceFleetConfig :: Decode InstanceFleetConfig where decode = genericDecode options
instance encodeInstanceFleetConfig :: Encode InstanceFleetConfig where encode = genericEncode options

-- | Constructs InstanceFleetConfig from required parameters
newInstanceFleetConfig :: InstanceFleetType -> InstanceFleetConfig
newInstanceFleetConfig _InstanceFleetType = InstanceFleetConfig { "InstanceFleetType": _InstanceFleetType, "InstanceTypeConfigs": Nothing, "LaunchSpecifications": Nothing, "Name": Nothing, "TargetOnDemandCapacity": Nothing, "TargetSpotCapacity": Nothing }

-- | Constructs InstanceFleetConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetConfig' :: InstanceFleetType -> ( { "Name" :: Maybe (XmlStringMaxLen256) , "InstanceFleetType" :: (InstanceFleetType) , "TargetOnDemandCapacity" :: Maybe (WholeNumber) , "TargetSpotCapacity" :: Maybe (WholeNumber) , "InstanceTypeConfigs" :: Maybe (InstanceTypeConfigList) , "LaunchSpecifications" :: Maybe (InstanceFleetProvisioningSpecifications) } -> {"Name" :: Maybe (XmlStringMaxLen256) , "InstanceFleetType" :: (InstanceFleetType) , "TargetOnDemandCapacity" :: Maybe (WholeNumber) , "TargetSpotCapacity" :: Maybe (WholeNumber) , "InstanceTypeConfigs" :: Maybe (InstanceTypeConfigList) , "LaunchSpecifications" :: Maybe (InstanceFleetProvisioningSpecifications) } ) -> InstanceFleetConfig
newInstanceFleetConfig' _InstanceFleetType customize = (InstanceFleetConfig <<< customize) { "InstanceFleetType": _InstanceFleetType, "InstanceTypeConfigs": Nothing, "LaunchSpecifications": Nothing, "Name": Nothing, "TargetOnDemandCapacity": Nothing, "TargetSpotCapacity": Nothing }



newtype InstanceFleetConfigList = InstanceFleetConfigList (Array InstanceFleetConfig)
derive instance newtypeInstanceFleetConfigList :: Newtype InstanceFleetConfigList _
derive instance repGenericInstanceFleetConfigList :: Generic InstanceFleetConfigList _
instance showInstanceFleetConfigList :: Show InstanceFleetConfigList where show = genericShow
instance decodeInstanceFleetConfigList :: Decode InstanceFleetConfigList where decode = genericDecode options
instance encodeInstanceFleetConfigList :: Encode InstanceFleetConfigList where encode = genericEncode options



newtype InstanceFleetId = InstanceFleetId String
derive instance newtypeInstanceFleetId :: Newtype InstanceFleetId _
derive instance repGenericInstanceFleetId :: Generic InstanceFleetId _
instance showInstanceFleetId :: Show InstanceFleetId where show = genericShow
instance decodeInstanceFleetId :: Decode InstanceFleetId where decode = genericDecode options
instance encodeInstanceFleetId :: Encode InstanceFleetId where encode = genericEncode options



newtype InstanceFleetList = InstanceFleetList (Array InstanceFleet)
derive instance newtypeInstanceFleetList :: Newtype InstanceFleetList _
derive instance repGenericInstanceFleetList :: Generic InstanceFleetList _
instance showInstanceFleetList :: Show InstanceFleetList where show = genericShow
instance decodeInstanceFleetList :: Decode InstanceFleetList where decode = genericDecode options
instance encodeInstanceFleetList :: Encode InstanceFleetList where encode = genericEncode options



-- | <p>Configuration parameters for an instance fleet modification request.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetModifyConfig = InstanceFleetModifyConfig 
  { "InstanceFleetId" :: (InstanceFleetId)
  , "TargetOnDemandCapacity" :: Maybe (WholeNumber)
  , "TargetSpotCapacity" :: Maybe (WholeNumber)
  }
derive instance newtypeInstanceFleetModifyConfig :: Newtype InstanceFleetModifyConfig _
derive instance repGenericInstanceFleetModifyConfig :: Generic InstanceFleetModifyConfig _
instance showInstanceFleetModifyConfig :: Show InstanceFleetModifyConfig where show = genericShow
instance decodeInstanceFleetModifyConfig :: Decode InstanceFleetModifyConfig where decode = genericDecode options
instance encodeInstanceFleetModifyConfig :: Encode InstanceFleetModifyConfig where encode = genericEncode options

-- | Constructs InstanceFleetModifyConfig from required parameters
newInstanceFleetModifyConfig :: InstanceFleetId -> InstanceFleetModifyConfig
newInstanceFleetModifyConfig _InstanceFleetId = InstanceFleetModifyConfig { "InstanceFleetId": _InstanceFleetId, "TargetOnDemandCapacity": Nothing, "TargetSpotCapacity": Nothing }

-- | Constructs InstanceFleetModifyConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetModifyConfig' :: InstanceFleetId -> ( { "InstanceFleetId" :: (InstanceFleetId) , "TargetOnDemandCapacity" :: Maybe (WholeNumber) , "TargetSpotCapacity" :: Maybe (WholeNumber) } -> {"InstanceFleetId" :: (InstanceFleetId) , "TargetOnDemandCapacity" :: Maybe (WholeNumber) , "TargetSpotCapacity" :: Maybe (WholeNumber) } ) -> InstanceFleetModifyConfig
newInstanceFleetModifyConfig' _InstanceFleetId customize = (InstanceFleetModifyConfig <<< customize) { "InstanceFleetId": _InstanceFleetId, "TargetOnDemandCapacity": Nothing, "TargetSpotCapacity": Nothing }



-- | <p>The launch specification for Spot instances in the fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetProvisioningSpecifications = InstanceFleetProvisioningSpecifications 
  { "SpotSpecification" :: (SpotProvisioningSpecification)
  }
derive instance newtypeInstanceFleetProvisioningSpecifications :: Newtype InstanceFleetProvisioningSpecifications _
derive instance repGenericInstanceFleetProvisioningSpecifications :: Generic InstanceFleetProvisioningSpecifications _
instance showInstanceFleetProvisioningSpecifications :: Show InstanceFleetProvisioningSpecifications where show = genericShow
instance decodeInstanceFleetProvisioningSpecifications :: Decode InstanceFleetProvisioningSpecifications where decode = genericDecode options
instance encodeInstanceFleetProvisioningSpecifications :: Encode InstanceFleetProvisioningSpecifications where encode = genericEncode options

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
instance showInstanceFleetState :: Show InstanceFleetState where show = genericShow
instance decodeInstanceFleetState :: Decode InstanceFleetState where decode = genericDecode options
instance encodeInstanceFleetState :: Encode InstanceFleetState where encode = genericEncode options



-- | <p>Provides status change reason details for the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetStateChangeReason = InstanceFleetStateChangeReason 
  { "Code" :: Maybe (InstanceFleetStateChangeReasonCode)
  , "Message" :: Maybe (String)
  }
derive instance newtypeInstanceFleetStateChangeReason :: Newtype InstanceFleetStateChangeReason _
derive instance repGenericInstanceFleetStateChangeReason :: Generic InstanceFleetStateChangeReason _
instance showInstanceFleetStateChangeReason :: Show InstanceFleetStateChangeReason where show = genericShow
instance decodeInstanceFleetStateChangeReason :: Decode InstanceFleetStateChangeReason where decode = genericDecode options
instance encodeInstanceFleetStateChangeReason :: Encode InstanceFleetStateChangeReason where encode = genericEncode options

-- | Constructs InstanceFleetStateChangeReason from required parameters
newInstanceFleetStateChangeReason :: InstanceFleetStateChangeReason
newInstanceFleetStateChangeReason  = InstanceFleetStateChangeReason { "Code": Nothing, "Message": Nothing }

-- | Constructs InstanceFleetStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetStateChangeReason' :: ( { "Code" :: Maybe (InstanceFleetStateChangeReasonCode) , "Message" :: Maybe (String) } -> {"Code" :: Maybe (InstanceFleetStateChangeReasonCode) , "Message" :: Maybe (String) } ) -> InstanceFleetStateChangeReason
newInstanceFleetStateChangeReason'  customize = (InstanceFleetStateChangeReason <<< customize) { "Code": Nothing, "Message": Nothing }



newtype InstanceFleetStateChangeReasonCode = InstanceFleetStateChangeReasonCode String
derive instance newtypeInstanceFleetStateChangeReasonCode :: Newtype InstanceFleetStateChangeReasonCode _
derive instance repGenericInstanceFleetStateChangeReasonCode :: Generic InstanceFleetStateChangeReasonCode _
instance showInstanceFleetStateChangeReasonCode :: Show InstanceFleetStateChangeReasonCode where show = genericShow
instance decodeInstanceFleetStateChangeReasonCode :: Decode InstanceFleetStateChangeReasonCode where decode = genericDecode options
instance encodeInstanceFleetStateChangeReasonCode :: Encode InstanceFleetStateChangeReasonCode where encode = genericEncode options



-- | <p>The status of the instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetStatus = InstanceFleetStatus 
  { "State" :: Maybe (InstanceFleetState)
  , "StateChangeReason" :: Maybe (InstanceFleetStateChangeReason)
  , "Timeline" :: Maybe (InstanceFleetTimeline)
  }
derive instance newtypeInstanceFleetStatus :: Newtype InstanceFleetStatus _
derive instance repGenericInstanceFleetStatus :: Generic InstanceFleetStatus _
instance showInstanceFleetStatus :: Show InstanceFleetStatus where show = genericShow
instance decodeInstanceFleetStatus :: Decode InstanceFleetStatus where decode = genericDecode options
instance encodeInstanceFleetStatus :: Encode InstanceFleetStatus where encode = genericEncode options

-- | Constructs InstanceFleetStatus from required parameters
newInstanceFleetStatus :: InstanceFleetStatus
newInstanceFleetStatus  = InstanceFleetStatus { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }

-- | Constructs InstanceFleetStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetStatus' :: ( { "State" :: Maybe (InstanceFleetState) , "StateChangeReason" :: Maybe (InstanceFleetStateChangeReason) , "Timeline" :: Maybe (InstanceFleetTimeline) } -> {"State" :: Maybe (InstanceFleetState) , "StateChangeReason" :: Maybe (InstanceFleetStateChangeReason) , "Timeline" :: Maybe (InstanceFleetTimeline) } ) -> InstanceFleetStatus
newInstanceFleetStatus'  customize = (InstanceFleetStatus <<< customize) { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }



-- | <p>Provides historical timestamps for the instance fleet, including the time of creation, the time it became ready to run jobs, and the time of termination.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceFleetTimeline = InstanceFleetTimeline 
  { "CreationDateTime" :: Maybe (Date)
  , "ReadyDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  }
derive instance newtypeInstanceFleetTimeline :: Newtype InstanceFleetTimeline _
derive instance repGenericInstanceFleetTimeline :: Generic InstanceFleetTimeline _
instance showInstanceFleetTimeline :: Show InstanceFleetTimeline where show = genericShow
instance decodeInstanceFleetTimeline :: Decode InstanceFleetTimeline where decode = genericDecode options
instance encodeInstanceFleetTimeline :: Encode InstanceFleetTimeline where encode = genericEncode options

-- | Constructs InstanceFleetTimeline from required parameters
newInstanceFleetTimeline :: InstanceFleetTimeline
newInstanceFleetTimeline  = InstanceFleetTimeline { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }

-- | Constructs InstanceFleetTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceFleetTimeline' :: ( { "CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } -> {"CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } ) -> InstanceFleetTimeline
newInstanceFleetTimeline'  customize = (InstanceFleetTimeline <<< customize) { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }



newtype InstanceFleetType = InstanceFleetType String
derive instance newtypeInstanceFleetType :: Newtype InstanceFleetType _
derive instance repGenericInstanceFleetType :: Generic InstanceFleetType _
instance showInstanceFleetType :: Show InstanceFleetType where show = genericShow
instance decodeInstanceFleetType :: Decode InstanceFleetType where decode = genericDecode options
instance encodeInstanceFleetType :: Encode InstanceFleetType where encode = genericEncode options



-- | <p>This entity represents an instance group, which is a group of instances that have common purpose. For example, CORE instance group is used for HDFS.</p>
newtype InstanceGroup = InstanceGroup 
  { "Id" :: Maybe (InstanceGroupId)
  , "Name" :: Maybe (String)
  , "Market" :: Maybe (MarketType)
  , "InstanceGroupType" :: Maybe (InstanceGroupType)
  , "BidPrice" :: Maybe (String)
  , "InstanceType" :: Maybe (InstanceType)
  , "RequestedInstanceCount" :: Maybe (Int)
  , "RunningInstanceCount" :: Maybe (Int)
  , "Status" :: Maybe (InstanceGroupStatus)
  , "Configurations" :: Maybe (ConfigurationList)
  , "EbsBlockDevices" :: Maybe (EbsBlockDeviceList)
  , "EbsOptimized" :: Maybe (BooleanObject)
  , "ShrinkPolicy" :: Maybe (ShrinkPolicy)
  , "AutoScalingPolicy" :: Maybe (AutoScalingPolicyDescription)
  }
derive instance newtypeInstanceGroup :: Newtype InstanceGroup _
derive instance repGenericInstanceGroup :: Generic InstanceGroup _
instance showInstanceGroup :: Show InstanceGroup where show = genericShow
instance decodeInstanceGroup :: Decode InstanceGroup where decode = genericDecode options
instance encodeInstanceGroup :: Encode InstanceGroup where encode = genericEncode options

-- | Constructs InstanceGroup from required parameters
newInstanceGroup :: InstanceGroup
newInstanceGroup  = InstanceGroup { "AutoScalingPolicy": Nothing, "BidPrice": Nothing, "Configurations": Nothing, "EbsBlockDevices": Nothing, "EbsOptimized": Nothing, "Id": Nothing, "InstanceGroupType": Nothing, "InstanceType": Nothing, "Market": Nothing, "Name": Nothing, "RequestedInstanceCount": Nothing, "RunningInstanceCount": Nothing, "ShrinkPolicy": Nothing, "Status": Nothing }

-- | Constructs InstanceGroup's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroup' :: ( { "Id" :: Maybe (InstanceGroupId) , "Name" :: Maybe (String) , "Market" :: Maybe (MarketType) , "InstanceGroupType" :: Maybe (InstanceGroupType) , "BidPrice" :: Maybe (String) , "InstanceType" :: Maybe (InstanceType) , "RequestedInstanceCount" :: Maybe (Int) , "RunningInstanceCount" :: Maybe (Int) , "Status" :: Maybe (InstanceGroupStatus) , "Configurations" :: Maybe (ConfigurationList) , "EbsBlockDevices" :: Maybe (EbsBlockDeviceList) , "EbsOptimized" :: Maybe (BooleanObject) , "ShrinkPolicy" :: Maybe (ShrinkPolicy) , "AutoScalingPolicy" :: Maybe (AutoScalingPolicyDescription) } -> {"Id" :: Maybe (InstanceGroupId) , "Name" :: Maybe (String) , "Market" :: Maybe (MarketType) , "InstanceGroupType" :: Maybe (InstanceGroupType) , "BidPrice" :: Maybe (String) , "InstanceType" :: Maybe (InstanceType) , "RequestedInstanceCount" :: Maybe (Int) , "RunningInstanceCount" :: Maybe (Int) , "Status" :: Maybe (InstanceGroupStatus) , "Configurations" :: Maybe (ConfigurationList) , "EbsBlockDevices" :: Maybe (EbsBlockDeviceList) , "EbsOptimized" :: Maybe (BooleanObject) , "ShrinkPolicy" :: Maybe (ShrinkPolicy) , "AutoScalingPolicy" :: Maybe (AutoScalingPolicyDescription) } ) -> InstanceGroup
newInstanceGroup'  customize = (InstanceGroup <<< customize) { "AutoScalingPolicy": Nothing, "BidPrice": Nothing, "Configurations": Nothing, "EbsBlockDevices": Nothing, "EbsOptimized": Nothing, "Id": Nothing, "InstanceGroupType": Nothing, "InstanceType": Nothing, "Market": Nothing, "Name": Nothing, "RequestedInstanceCount": Nothing, "RunningInstanceCount": Nothing, "ShrinkPolicy": Nothing, "Status": Nothing }



-- | <p>Configuration defining a new instance group.</p>
newtype InstanceGroupConfig = InstanceGroupConfig 
  { "Name" :: Maybe (XmlStringMaxLen256)
  , "Market" :: Maybe (MarketType)
  , "InstanceRole" :: (InstanceRoleType)
  , "BidPrice" :: Maybe (XmlStringMaxLen256)
  , "InstanceType" :: (InstanceType)
  , "InstanceCount" :: (Int)
  , "Configurations" :: Maybe (ConfigurationList)
  , "EbsConfiguration" :: Maybe (EbsConfiguration)
  , "AutoScalingPolicy" :: Maybe (AutoScalingPolicy)
  }
derive instance newtypeInstanceGroupConfig :: Newtype InstanceGroupConfig _
derive instance repGenericInstanceGroupConfig :: Generic InstanceGroupConfig _
instance showInstanceGroupConfig :: Show InstanceGroupConfig where show = genericShow
instance decodeInstanceGroupConfig :: Decode InstanceGroupConfig where decode = genericDecode options
instance encodeInstanceGroupConfig :: Encode InstanceGroupConfig where encode = genericEncode options

-- | Constructs InstanceGroupConfig from required parameters
newInstanceGroupConfig :: Int -> InstanceRoleType -> InstanceType -> InstanceGroupConfig
newInstanceGroupConfig _InstanceCount _InstanceRole _InstanceType = InstanceGroupConfig { "InstanceCount": _InstanceCount, "InstanceRole": _InstanceRole, "InstanceType": _InstanceType, "AutoScalingPolicy": Nothing, "BidPrice": Nothing, "Configurations": Nothing, "EbsConfiguration": Nothing, "Market": Nothing, "Name": Nothing }

-- | Constructs InstanceGroupConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupConfig' :: Int -> InstanceRoleType -> InstanceType -> ( { "Name" :: Maybe (XmlStringMaxLen256) , "Market" :: Maybe (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "Configurations" :: Maybe (ConfigurationList) , "EbsConfiguration" :: Maybe (EbsConfiguration) , "AutoScalingPolicy" :: Maybe (AutoScalingPolicy) } -> {"Name" :: Maybe (XmlStringMaxLen256) , "Market" :: Maybe (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "Configurations" :: Maybe (ConfigurationList) , "EbsConfiguration" :: Maybe (EbsConfiguration) , "AutoScalingPolicy" :: Maybe (AutoScalingPolicy) } ) -> InstanceGroupConfig
newInstanceGroupConfig' _InstanceCount _InstanceRole _InstanceType customize = (InstanceGroupConfig <<< customize) { "InstanceCount": _InstanceCount, "InstanceRole": _InstanceRole, "InstanceType": _InstanceType, "AutoScalingPolicy": Nothing, "BidPrice": Nothing, "Configurations": Nothing, "EbsConfiguration": Nothing, "Market": Nothing, "Name": Nothing }



newtype InstanceGroupConfigList = InstanceGroupConfigList (Array InstanceGroupConfig)
derive instance newtypeInstanceGroupConfigList :: Newtype InstanceGroupConfigList _
derive instance repGenericInstanceGroupConfigList :: Generic InstanceGroupConfigList _
instance showInstanceGroupConfigList :: Show InstanceGroupConfigList where show = genericShow
instance decodeInstanceGroupConfigList :: Decode InstanceGroupConfigList where decode = genericDecode options
instance encodeInstanceGroupConfigList :: Encode InstanceGroupConfigList where encode = genericEncode options



-- | <p>Detailed information about an instance group.</p>
newtype InstanceGroupDetail = InstanceGroupDetail 
  { "InstanceGroupId" :: Maybe (XmlStringMaxLen256)
  , "Name" :: Maybe (XmlStringMaxLen256)
  , "Market" :: (MarketType)
  , "InstanceRole" :: (InstanceRoleType)
  , "BidPrice" :: Maybe (XmlStringMaxLen256)
  , "InstanceType" :: (InstanceType)
  , "InstanceRequestCount" :: (Int)
  , "InstanceRunningCount" :: (Int)
  , "State" :: (InstanceGroupState)
  , "LastStateChangeReason" :: Maybe (XmlString)
  , "CreationDateTime" :: (Date)
  , "StartDateTime" :: Maybe (Date)
  , "ReadyDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  }
derive instance newtypeInstanceGroupDetail :: Newtype InstanceGroupDetail _
derive instance repGenericInstanceGroupDetail :: Generic InstanceGroupDetail _
instance showInstanceGroupDetail :: Show InstanceGroupDetail where show = genericShow
instance decodeInstanceGroupDetail :: Decode InstanceGroupDetail where decode = genericDecode options
instance encodeInstanceGroupDetail :: Encode InstanceGroupDetail where encode = genericEncode options

-- | Constructs InstanceGroupDetail from required parameters
newInstanceGroupDetail :: Date -> Int -> InstanceRoleType -> Int -> InstanceType -> MarketType -> InstanceGroupState -> InstanceGroupDetail
newInstanceGroupDetail _CreationDateTime _InstanceRequestCount _InstanceRole _InstanceRunningCount _InstanceType _Market _State = InstanceGroupDetail { "CreationDateTime": _CreationDateTime, "InstanceRequestCount": _InstanceRequestCount, "InstanceRole": _InstanceRole, "InstanceRunningCount": _InstanceRunningCount, "InstanceType": _InstanceType, "Market": _Market, "State": _State, "BidPrice": Nothing, "EndDateTime": Nothing, "InstanceGroupId": Nothing, "LastStateChangeReason": Nothing, "Name": Nothing, "ReadyDateTime": Nothing, "StartDateTime": Nothing }

-- | Constructs InstanceGroupDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupDetail' :: Date -> Int -> InstanceRoleType -> Int -> InstanceType -> MarketType -> InstanceGroupState -> ( { "InstanceGroupId" :: Maybe (XmlStringMaxLen256) , "Name" :: Maybe (XmlStringMaxLen256) , "Market" :: (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceRequestCount" :: (Int) , "InstanceRunningCount" :: (Int) , "State" :: (InstanceGroupState) , "LastStateChangeReason" :: Maybe (XmlString) , "CreationDateTime" :: (Date) , "StartDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } -> {"InstanceGroupId" :: Maybe (XmlStringMaxLen256) , "Name" :: Maybe (XmlStringMaxLen256) , "Market" :: (MarketType) , "InstanceRole" :: (InstanceRoleType) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "InstanceType" :: (InstanceType) , "InstanceRequestCount" :: (Int) , "InstanceRunningCount" :: (Int) , "State" :: (InstanceGroupState) , "LastStateChangeReason" :: Maybe (XmlString) , "CreationDateTime" :: (Date) , "StartDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } ) -> InstanceGroupDetail
newInstanceGroupDetail' _CreationDateTime _InstanceRequestCount _InstanceRole _InstanceRunningCount _InstanceType _Market _State customize = (InstanceGroupDetail <<< customize) { "CreationDateTime": _CreationDateTime, "InstanceRequestCount": _InstanceRequestCount, "InstanceRole": _InstanceRole, "InstanceRunningCount": _InstanceRunningCount, "InstanceType": _InstanceType, "Market": _Market, "State": _State, "BidPrice": Nothing, "EndDateTime": Nothing, "InstanceGroupId": Nothing, "LastStateChangeReason": Nothing, "Name": Nothing, "ReadyDateTime": Nothing, "StartDateTime": Nothing }



newtype InstanceGroupDetailList = InstanceGroupDetailList (Array InstanceGroupDetail)
derive instance newtypeInstanceGroupDetailList :: Newtype InstanceGroupDetailList _
derive instance repGenericInstanceGroupDetailList :: Generic InstanceGroupDetailList _
instance showInstanceGroupDetailList :: Show InstanceGroupDetailList where show = genericShow
instance decodeInstanceGroupDetailList :: Decode InstanceGroupDetailList where decode = genericDecode options
instance encodeInstanceGroupDetailList :: Encode InstanceGroupDetailList where encode = genericEncode options



newtype InstanceGroupId = InstanceGroupId String
derive instance newtypeInstanceGroupId :: Newtype InstanceGroupId _
derive instance repGenericInstanceGroupId :: Generic InstanceGroupId _
instance showInstanceGroupId :: Show InstanceGroupId where show = genericShow
instance decodeInstanceGroupId :: Decode InstanceGroupId where decode = genericDecode options
instance encodeInstanceGroupId :: Encode InstanceGroupId where encode = genericEncode options



newtype InstanceGroupIdsList = InstanceGroupIdsList (Array XmlStringMaxLen256)
derive instance newtypeInstanceGroupIdsList :: Newtype InstanceGroupIdsList _
derive instance repGenericInstanceGroupIdsList :: Generic InstanceGroupIdsList _
instance showInstanceGroupIdsList :: Show InstanceGroupIdsList where show = genericShow
instance decodeInstanceGroupIdsList :: Decode InstanceGroupIdsList where decode = genericDecode options
instance encodeInstanceGroupIdsList :: Encode InstanceGroupIdsList where encode = genericEncode options



newtype InstanceGroupList = InstanceGroupList (Array InstanceGroup)
derive instance newtypeInstanceGroupList :: Newtype InstanceGroupList _
derive instance repGenericInstanceGroupList :: Generic InstanceGroupList _
instance showInstanceGroupList :: Show InstanceGroupList where show = genericShow
instance decodeInstanceGroupList :: Decode InstanceGroupList where decode = genericDecode options
instance encodeInstanceGroupList :: Encode InstanceGroupList where encode = genericEncode options



-- | <p>Modify an instance group size.</p>
newtype InstanceGroupModifyConfig = InstanceGroupModifyConfig 
  { "InstanceGroupId" :: (XmlStringMaxLen256)
  , "InstanceCount" :: Maybe (Int)
  , "EC2InstanceIdsToTerminate" :: Maybe (EC2InstanceIdsToTerminateList)
  , "ShrinkPolicy" :: Maybe (ShrinkPolicy)
  }
derive instance newtypeInstanceGroupModifyConfig :: Newtype InstanceGroupModifyConfig _
derive instance repGenericInstanceGroupModifyConfig :: Generic InstanceGroupModifyConfig _
instance showInstanceGroupModifyConfig :: Show InstanceGroupModifyConfig where show = genericShow
instance decodeInstanceGroupModifyConfig :: Decode InstanceGroupModifyConfig where decode = genericDecode options
instance encodeInstanceGroupModifyConfig :: Encode InstanceGroupModifyConfig where encode = genericEncode options

-- | Constructs InstanceGroupModifyConfig from required parameters
newInstanceGroupModifyConfig :: XmlStringMaxLen256 -> InstanceGroupModifyConfig
newInstanceGroupModifyConfig _InstanceGroupId = InstanceGroupModifyConfig { "InstanceGroupId": _InstanceGroupId, "EC2InstanceIdsToTerminate": Nothing, "InstanceCount": Nothing, "ShrinkPolicy": Nothing }

-- | Constructs InstanceGroupModifyConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupModifyConfig' :: XmlStringMaxLen256 -> ( { "InstanceGroupId" :: (XmlStringMaxLen256) , "InstanceCount" :: Maybe (Int) , "EC2InstanceIdsToTerminate" :: Maybe (EC2InstanceIdsToTerminateList) , "ShrinkPolicy" :: Maybe (ShrinkPolicy) } -> {"InstanceGroupId" :: (XmlStringMaxLen256) , "InstanceCount" :: Maybe (Int) , "EC2InstanceIdsToTerminate" :: Maybe (EC2InstanceIdsToTerminateList) , "ShrinkPolicy" :: Maybe (ShrinkPolicy) } ) -> InstanceGroupModifyConfig
newInstanceGroupModifyConfig' _InstanceGroupId customize = (InstanceGroupModifyConfig <<< customize) { "InstanceGroupId": _InstanceGroupId, "EC2InstanceIdsToTerminate": Nothing, "InstanceCount": Nothing, "ShrinkPolicy": Nothing }



newtype InstanceGroupModifyConfigList = InstanceGroupModifyConfigList (Array InstanceGroupModifyConfig)
derive instance newtypeInstanceGroupModifyConfigList :: Newtype InstanceGroupModifyConfigList _
derive instance repGenericInstanceGroupModifyConfigList :: Generic InstanceGroupModifyConfigList _
instance showInstanceGroupModifyConfigList :: Show InstanceGroupModifyConfigList where show = genericShow
instance decodeInstanceGroupModifyConfigList :: Decode InstanceGroupModifyConfigList where decode = genericDecode options
instance encodeInstanceGroupModifyConfigList :: Encode InstanceGroupModifyConfigList where encode = genericEncode options



newtype InstanceGroupState = InstanceGroupState String
derive instance newtypeInstanceGroupState :: Newtype InstanceGroupState _
derive instance repGenericInstanceGroupState :: Generic InstanceGroupState _
instance showInstanceGroupState :: Show InstanceGroupState where show = genericShow
instance decodeInstanceGroupState :: Decode InstanceGroupState where decode = genericDecode options
instance encodeInstanceGroupState :: Encode InstanceGroupState where encode = genericEncode options



-- | <p>The status change reason details for the instance group.</p>
newtype InstanceGroupStateChangeReason = InstanceGroupStateChangeReason 
  { "Code" :: Maybe (InstanceGroupStateChangeReasonCode)
  , "Message" :: Maybe (String)
  }
derive instance newtypeInstanceGroupStateChangeReason :: Newtype InstanceGroupStateChangeReason _
derive instance repGenericInstanceGroupStateChangeReason :: Generic InstanceGroupStateChangeReason _
instance showInstanceGroupStateChangeReason :: Show InstanceGroupStateChangeReason where show = genericShow
instance decodeInstanceGroupStateChangeReason :: Decode InstanceGroupStateChangeReason where decode = genericDecode options
instance encodeInstanceGroupStateChangeReason :: Encode InstanceGroupStateChangeReason where encode = genericEncode options

-- | Constructs InstanceGroupStateChangeReason from required parameters
newInstanceGroupStateChangeReason :: InstanceGroupStateChangeReason
newInstanceGroupStateChangeReason  = InstanceGroupStateChangeReason { "Code": Nothing, "Message": Nothing }

-- | Constructs InstanceGroupStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupStateChangeReason' :: ( { "Code" :: Maybe (InstanceGroupStateChangeReasonCode) , "Message" :: Maybe (String) } -> {"Code" :: Maybe (InstanceGroupStateChangeReasonCode) , "Message" :: Maybe (String) } ) -> InstanceGroupStateChangeReason
newInstanceGroupStateChangeReason'  customize = (InstanceGroupStateChangeReason <<< customize) { "Code": Nothing, "Message": Nothing }



newtype InstanceGroupStateChangeReasonCode = InstanceGroupStateChangeReasonCode String
derive instance newtypeInstanceGroupStateChangeReasonCode :: Newtype InstanceGroupStateChangeReasonCode _
derive instance repGenericInstanceGroupStateChangeReasonCode :: Generic InstanceGroupStateChangeReasonCode _
instance showInstanceGroupStateChangeReasonCode :: Show InstanceGroupStateChangeReasonCode where show = genericShow
instance decodeInstanceGroupStateChangeReasonCode :: Decode InstanceGroupStateChangeReasonCode where decode = genericDecode options
instance encodeInstanceGroupStateChangeReasonCode :: Encode InstanceGroupStateChangeReasonCode where encode = genericEncode options



-- | <p>The details of the instance group status.</p>
newtype InstanceGroupStatus = InstanceGroupStatus 
  { "State" :: Maybe (InstanceGroupState)
  , "StateChangeReason" :: Maybe (InstanceGroupStateChangeReason)
  , "Timeline" :: Maybe (InstanceGroupTimeline)
  }
derive instance newtypeInstanceGroupStatus :: Newtype InstanceGroupStatus _
derive instance repGenericInstanceGroupStatus :: Generic InstanceGroupStatus _
instance showInstanceGroupStatus :: Show InstanceGroupStatus where show = genericShow
instance decodeInstanceGroupStatus :: Decode InstanceGroupStatus where decode = genericDecode options
instance encodeInstanceGroupStatus :: Encode InstanceGroupStatus where encode = genericEncode options

-- | Constructs InstanceGroupStatus from required parameters
newInstanceGroupStatus :: InstanceGroupStatus
newInstanceGroupStatus  = InstanceGroupStatus { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }

-- | Constructs InstanceGroupStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupStatus' :: ( { "State" :: Maybe (InstanceGroupState) , "StateChangeReason" :: Maybe (InstanceGroupStateChangeReason) , "Timeline" :: Maybe (InstanceGroupTimeline) } -> {"State" :: Maybe (InstanceGroupState) , "StateChangeReason" :: Maybe (InstanceGroupStateChangeReason) , "Timeline" :: Maybe (InstanceGroupTimeline) } ) -> InstanceGroupStatus
newInstanceGroupStatus'  customize = (InstanceGroupStatus <<< customize) { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }



-- | <p>The timeline of the instance group lifecycle.</p>
newtype InstanceGroupTimeline = InstanceGroupTimeline 
  { "CreationDateTime" :: Maybe (Date)
  , "ReadyDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  }
derive instance newtypeInstanceGroupTimeline :: Newtype InstanceGroupTimeline _
derive instance repGenericInstanceGroupTimeline :: Generic InstanceGroupTimeline _
instance showInstanceGroupTimeline :: Show InstanceGroupTimeline where show = genericShow
instance decodeInstanceGroupTimeline :: Decode InstanceGroupTimeline where decode = genericDecode options
instance encodeInstanceGroupTimeline :: Encode InstanceGroupTimeline where encode = genericEncode options

-- | Constructs InstanceGroupTimeline from required parameters
newInstanceGroupTimeline :: InstanceGroupTimeline
newInstanceGroupTimeline  = InstanceGroupTimeline { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }

-- | Constructs InstanceGroupTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceGroupTimeline' :: ( { "CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } -> {"CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } ) -> InstanceGroupTimeline
newInstanceGroupTimeline'  customize = (InstanceGroupTimeline <<< customize) { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }



newtype InstanceGroupType = InstanceGroupType String
derive instance newtypeInstanceGroupType :: Newtype InstanceGroupType _
derive instance repGenericInstanceGroupType :: Generic InstanceGroupType _
instance showInstanceGroupType :: Show InstanceGroupType where show = genericShow
instance decodeInstanceGroupType :: Decode InstanceGroupType where decode = genericDecode options
instance encodeInstanceGroupType :: Encode InstanceGroupType where encode = genericEncode options



newtype InstanceGroupTypeList = InstanceGroupTypeList (Array InstanceGroupType)
derive instance newtypeInstanceGroupTypeList :: Newtype InstanceGroupTypeList _
derive instance repGenericInstanceGroupTypeList :: Generic InstanceGroupTypeList _
instance showInstanceGroupTypeList :: Show InstanceGroupTypeList where show = genericShow
instance decodeInstanceGroupTypeList :: Decode InstanceGroupTypeList where decode = genericDecode options
instance encodeInstanceGroupTypeList :: Encode InstanceGroupTypeList where encode = genericEncode options



newtype InstanceId = InstanceId String
derive instance newtypeInstanceId :: Newtype InstanceId _
derive instance repGenericInstanceId :: Generic InstanceId _
instance showInstanceId :: Show InstanceId where show = genericShow
instance decodeInstanceId :: Decode InstanceId where decode = genericDecode options
instance encodeInstanceId :: Encode InstanceId where encode = genericEncode options



newtype InstanceList = InstanceList (Array Instance)
derive instance newtypeInstanceList :: Newtype InstanceList _
derive instance repGenericInstanceList :: Generic InstanceList _
instance showInstanceList :: Show InstanceList where show = genericShow
instance decodeInstanceList :: Decode InstanceList where decode = genericDecode options
instance encodeInstanceList :: Encode InstanceList where encode = genericEncode options



-- | <p>Custom policy for requesting termination protection or termination of specific instances when shrinking an instance group.</p>
newtype InstanceResizePolicy = InstanceResizePolicy 
  { "InstancesToTerminate" :: Maybe (EC2InstanceIdsList)
  , "InstancesToProtect" :: Maybe (EC2InstanceIdsList)
  , "InstanceTerminationTimeout" :: Maybe (Int)
  }
derive instance newtypeInstanceResizePolicy :: Newtype InstanceResizePolicy _
derive instance repGenericInstanceResizePolicy :: Generic InstanceResizePolicy _
instance showInstanceResizePolicy :: Show InstanceResizePolicy where show = genericShow
instance decodeInstanceResizePolicy :: Decode InstanceResizePolicy where decode = genericDecode options
instance encodeInstanceResizePolicy :: Encode InstanceResizePolicy where encode = genericEncode options

-- | Constructs InstanceResizePolicy from required parameters
newInstanceResizePolicy :: InstanceResizePolicy
newInstanceResizePolicy  = InstanceResizePolicy { "InstanceTerminationTimeout": Nothing, "InstancesToProtect": Nothing, "InstancesToTerminate": Nothing }

-- | Constructs InstanceResizePolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceResizePolicy' :: ( { "InstancesToTerminate" :: Maybe (EC2InstanceIdsList) , "InstancesToProtect" :: Maybe (EC2InstanceIdsList) , "InstanceTerminationTimeout" :: Maybe (Int) } -> {"InstancesToTerminate" :: Maybe (EC2InstanceIdsList) , "InstancesToProtect" :: Maybe (EC2InstanceIdsList) , "InstanceTerminationTimeout" :: Maybe (Int) } ) -> InstanceResizePolicy
newInstanceResizePolicy'  customize = (InstanceResizePolicy <<< customize) { "InstanceTerminationTimeout": Nothing, "InstancesToProtect": Nothing, "InstancesToTerminate": Nothing }



newtype InstanceRoleType = InstanceRoleType String
derive instance newtypeInstanceRoleType :: Newtype InstanceRoleType _
derive instance repGenericInstanceRoleType :: Generic InstanceRoleType _
instance showInstanceRoleType :: Show InstanceRoleType where show = genericShow
instance decodeInstanceRoleType :: Decode InstanceRoleType where decode = genericDecode options
instance encodeInstanceRoleType :: Encode InstanceRoleType where encode = genericEncode options



newtype InstanceState = InstanceState String
derive instance newtypeInstanceState :: Newtype InstanceState _
derive instance repGenericInstanceState :: Generic InstanceState _
instance showInstanceState :: Show InstanceState where show = genericShow
instance decodeInstanceState :: Decode InstanceState where decode = genericDecode options
instance encodeInstanceState :: Encode InstanceState where encode = genericEncode options



-- | <p>The details of the status change reason for the instance.</p>
newtype InstanceStateChangeReason = InstanceStateChangeReason 
  { "Code" :: Maybe (InstanceStateChangeReasonCode)
  , "Message" :: Maybe (String)
  }
derive instance newtypeInstanceStateChangeReason :: Newtype InstanceStateChangeReason _
derive instance repGenericInstanceStateChangeReason :: Generic InstanceStateChangeReason _
instance showInstanceStateChangeReason :: Show InstanceStateChangeReason where show = genericShow
instance decodeInstanceStateChangeReason :: Decode InstanceStateChangeReason where decode = genericDecode options
instance encodeInstanceStateChangeReason :: Encode InstanceStateChangeReason where encode = genericEncode options

-- | Constructs InstanceStateChangeReason from required parameters
newInstanceStateChangeReason :: InstanceStateChangeReason
newInstanceStateChangeReason  = InstanceStateChangeReason { "Code": Nothing, "Message": Nothing }

-- | Constructs InstanceStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceStateChangeReason' :: ( { "Code" :: Maybe (InstanceStateChangeReasonCode) , "Message" :: Maybe (String) } -> {"Code" :: Maybe (InstanceStateChangeReasonCode) , "Message" :: Maybe (String) } ) -> InstanceStateChangeReason
newInstanceStateChangeReason'  customize = (InstanceStateChangeReason <<< customize) { "Code": Nothing, "Message": Nothing }



newtype InstanceStateChangeReasonCode = InstanceStateChangeReasonCode String
derive instance newtypeInstanceStateChangeReasonCode :: Newtype InstanceStateChangeReasonCode _
derive instance repGenericInstanceStateChangeReasonCode :: Generic InstanceStateChangeReasonCode _
instance showInstanceStateChangeReasonCode :: Show InstanceStateChangeReasonCode where show = genericShow
instance decodeInstanceStateChangeReasonCode :: Decode InstanceStateChangeReasonCode where decode = genericDecode options
instance encodeInstanceStateChangeReasonCode :: Encode InstanceStateChangeReasonCode where encode = genericEncode options



newtype InstanceStateList = InstanceStateList (Array InstanceState)
derive instance newtypeInstanceStateList :: Newtype InstanceStateList _
derive instance repGenericInstanceStateList :: Generic InstanceStateList _
instance showInstanceStateList :: Show InstanceStateList where show = genericShow
instance decodeInstanceStateList :: Decode InstanceStateList where decode = genericDecode options
instance encodeInstanceStateList :: Encode InstanceStateList where encode = genericEncode options



-- | <p>The instance status details.</p>
newtype InstanceStatus = InstanceStatus 
  { "State" :: Maybe (InstanceState)
  , "StateChangeReason" :: Maybe (InstanceStateChangeReason)
  , "Timeline" :: Maybe (InstanceTimeline)
  }
derive instance newtypeInstanceStatus :: Newtype InstanceStatus _
derive instance repGenericInstanceStatus :: Generic InstanceStatus _
instance showInstanceStatus :: Show InstanceStatus where show = genericShow
instance decodeInstanceStatus :: Decode InstanceStatus where decode = genericDecode options
instance encodeInstanceStatus :: Encode InstanceStatus where encode = genericEncode options

-- | Constructs InstanceStatus from required parameters
newInstanceStatus :: InstanceStatus
newInstanceStatus  = InstanceStatus { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }

-- | Constructs InstanceStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceStatus' :: ( { "State" :: Maybe (InstanceState) , "StateChangeReason" :: Maybe (InstanceStateChangeReason) , "Timeline" :: Maybe (InstanceTimeline) } -> {"State" :: Maybe (InstanceState) , "StateChangeReason" :: Maybe (InstanceStateChangeReason) , "Timeline" :: Maybe (InstanceTimeline) } ) -> InstanceStatus
newInstanceStatus'  customize = (InstanceStatus <<< customize) { "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }



-- | <p>The timeline of the instance lifecycle.</p>
newtype InstanceTimeline = InstanceTimeline 
  { "CreationDateTime" :: Maybe (Date)
  , "ReadyDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  }
derive instance newtypeInstanceTimeline :: Newtype InstanceTimeline _
derive instance repGenericInstanceTimeline :: Generic InstanceTimeline _
instance showInstanceTimeline :: Show InstanceTimeline where show = genericShow
instance decodeInstanceTimeline :: Decode InstanceTimeline where decode = genericDecode options
instance encodeInstanceTimeline :: Encode InstanceTimeline where encode = genericEncode options

-- | Constructs InstanceTimeline from required parameters
newInstanceTimeline :: InstanceTimeline
newInstanceTimeline  = InstanceTimeline { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }

-- | Constructs InstanceTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceTimeline' :: ( { "CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } -> {"CreationDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } ) -> InstanceTimeline
newInstanceTimeline'  customize = (InstanceTimeline <<< customize) { "CreationDateTime": Nothing, "EndDateTime": Nothing, "ReadyDateTime": Nothing }



newtype InstanceType = InstanceType String
derive instance newtypeInstanceType :: Newtype InstanceType _
derive instance repGenericInstanceType :: Generic InstanceType _
instance showInstanceType :: Show InstanceType where show = genericShow
instance decodeInstanceType :: Decode InstanceType where decode = genericDecode options
instance encodeInstanceType :: Encode InstanceType where encode = genericEncode options



-- | <p>An instance type configuration for each instance type in an instance fleet, which determines the EC2 instances Amazon EMR attempts to provision to fulfill On-Demand and Spot target capacities. There can be a maximum of 5 instance type configurations in a fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceTypeConfig = InstanceTypeConfig 
  { "InstanceType" :: (InstanceType)
  , "WeightedCapacity" :: Maybe (WholeNumber)
  , "BidPrice" :: Maybe (XmlStringMaxLen256)
  , "BidPriceAsPercentageOfOnDemandPrice" :: Maybe (NonNegativeDouble)
  , "EbsConfiguration" :: Maybe (EbsConfiguration)
  , "Configurations" :: Maybe (ConfigurationList)
  }
derive instance newtypeInstanceTypeConfig :: Newtype InstanceTypeConfig _
derive instance repGenericInstanceTypeConfig :: Generic InstanceTypeConfig _
instance showInstanceTypeConfig :: Show InstanceTypeConfig where show = genericShow
instance decodeInstanceTypeConfig :: Decode InstanceTypeConfig where decode = genericDecode options
instance encodeInstanceTypeConfig :: Encode InstanceTypeConfig where encode = genericEncode options

-- | Constructs InstanceTypeConfig from required parameters
newInstanceTypeConfig :: InstanceType -> InstanceTypeConfig
newInstanceTypeConfig _InstanceType = InstanceTypeConfig { "InstanceType": _InstanceType, "BidPrice": Nothing, "BidPriceAsPercentageOfOnDemandPrice": Nothing, "Configurations": Nothing, "EbsConfiguration": Nothing, "WeightedCapacity": Nothing }

-- | Constructs InstanceTypeConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceTypeConfig' :: InstanceType -> ( { "InstanceType" :: (InstanceType) , "WeightedCapacity" :: Maybe (WholeNumber) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: Maybe (NonNegativeDouble) , "EbsConfiguration" :: Maybe (EbsConfiguration) , "Configurations" :: Maybe (ConfigurationList) } -> {"InstanceType" :: (InstanceType) , "WeightedCapacity" :: Maybe (WholeNumber) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: Maybe (NonNegativeDouble) , "EbsConfiguration" :: Maybe (EbsConfiguration) , "Configurations" :: Maybe (ConfigurationList) } ) -> InstanceTypeConfig
newInstanceTypeConfig' _InstanceType customize = (InstanceTypeConfig <<< customize) { "InstanceType": _InstanceType, "BidPrice": Nothing, "BidPriceAsPercentageOfOnDemandPrice": Nothing, "Configurations": Nothing, "EbsConfiguration": Nothing, "WeightedCapacity": Nothing }



newtype InstanceTypeConfigList = InstanceTypeConfigList (Array InstanceTypeConfig)
derive instance newtypeInstanceTypeConfigList :: Newtype InstanceTypeConfigList _
derive instance repGenericInstanceTypeConfigList :: Generic InstanceTypeConfigList _
instance showInstanceTypeConfigList :: Show InstanceTypeConfigList where show = genericShow
instance decodeInstanceTypeConfigList :: Decode InstanceTypeConfigList where decode = genericDecode options
instance encodeInstanceTypeConfigList :: Encode InstanceTypeConfigList where encode = genericEncode options



-- | <p>The configuration specification for each instance type in an instance fleet.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype InstanceTypeSpecification = InstanceTypeSpecification 
  { "InstanceType" :: Maybe (InstanceType)
  , "WeightedCapacity" :: Maybe (WholeNumber)
  , "BidPrice" :: Maybe (XmlStringMaxLen256)
  , "BidPriceAsPercentageOfOnDemandPrice" :: Maybe (NonNegativeDouble)
  , "Configurations" :: Maybe (ConfigurationList)
  , "EbsBlockDevices" :: Maybe (EbsBlockDeviceList)
  , "EbsOptimized" :: Maybe (BooleanObject)
  }
derive instance newtypeInstanceTypeSpecification :: Newtype InstanceTypeSpecification _
derive instance repGenericInstanceTypeSpecification :: Generic InstanceTypeSpecification _
instance showInstanceTypeSpecification :: Show InstanceTypeSpecification where show = genericShow
instance decodeInstanceTypeSpecification :: Decode InstanceTypeSpecification where decode = genericDecode options
instance encodeInstanceTypeSpecification :: Encode InstanceTypeSpecification where encode = genericEncode options

-- | Constructs InstanceTypeSpecification from required parameters
newInstanceTypeSpecification :: InstanceTypeSpecification
newInstanceTypeSpecification  = InstanceTypeSpecification { "BidPrice": Nothing, "BidPriceAsPercentageOfOnDemandPrice": Nothing, "Configurations": Nothing, "EbsBlockDevices": Nothing, "EbsOptimized": Nothing, "InstanceType": Nothing, "WeightedCapacity": Nothing }

-- | Constructs InstanceTypeSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInstanceTypeSpecification' :: ( { "InstanceType" :: Maybe (InstanceType) , "WeightedCapacity" :: Maybe (WholeNumber) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: Maybe (NonNegativeDouble) , "Configurations" :: Maybe (ConfigurationList) , "EbsBlockDevices" :: Maybe (EbsBlockDeviceList) , "EbsOptimized" :: Maybe (BooleanObject) } -> {"InstanceType" :: Maybe (InstanceType) , "WeightedCapacity" :: Maybe (WholeNumber) , "BidPrice" :: Maybe (XmlStringMaxLen256) , "BidPriceAsPercentageOfOnDemandPrice" :: Maybe (NonNegativeDouble) , "Configurations" :: Maybe (ConfigurationList) , "EbsBlockDevices" :: Maybe (EbsBlockDeviceList) , "EbsOptimized" :: Maybe (BooleanObject) } ) -> InstanceTypeSpecification
newInstanceTypeSpecification'  customize = (InstanceTypeSpecification <<< customize) { "BidPrice": Nothing, "BidPriceAsPercentageOfOnDemandPrice": Nothing, "Configurations": Nothing, "EbsBlockDevices": Nothing, "EbsOptimized": Nothing, "InstanceType": Nothing, "WeightedCapacity": Nothing }



newtype InstanceTypeSpecificationList = InstanceTypeSpecificationList (Array InstanceTypeSpecification)
derive instance newtypeInstanceTypeSpecificationList :: Newtype InstanceTypeSpecificationList _
derive instance repGenericInstanceTypeSpecificationList :: Generic InstanceTypeSpecificationList _
instance showInstanceTypeSpecificationList :: Show InstanceTypeSpecificationList where show = genericShow
instance decodeInstanceTypeSpecificationList :: Decode InstanceTypeSpecificationList where decode = genericDecode options
instance encodeInstanceTypeSpecificationList :: Encode InstanceTypeSpecificationList where encode = genericEncode options



-- | <p>Indicates that an error occurred while processing the request and that the request was not completed.</p>
newtype InternalServerError = InternalServerError Types.NoArguments
derive instance newtypeInternalServerError :: Newtype InternalServerError _
derive instance repGenericInternalServerError :: Generic InternalServerError _
instance showInternalServerError :: Show InternalServerError where show = genericShow
instance decodeInternalServerError :: Decode InternalServerError where decode = genericDecode options
instance encodeInternalServerError :: Encode InternalServerError where encode = genericEncode options



-- | <p>This exception occurs when there is an internal failure in the EMR service.</p>
newtype InternalServerException = InternalServerException 
  { "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInternalServerException :: Newtype InternalServerException _
derive instance repGenericInternalServerException :: Generic InternalServerException _
instance showInternalServerException :: Show InternalServerException where show = genericShow
instance decodeInternalServerException :: Decode InternalServerException where decode = genericDecode options
instance encodeInternalServerException :: Encode InternalServerException where encode = genericEncode options

-- | Constructs InternalServerException from required parameters
newInternalServerException :: InternalServerException
newInternalServerException  = InternalServerException { "Message": Nothing }

-- | Constructs InternalServerException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInternalServerException' :: ( { "Message" :: Maybe (ErrorMessage) } -> {"Message" :: Maybe (ErrorMessage) } ) -> InternalServerException
newInternalServerException'  customize = (InternalServerException <<< customize) { "Message": Nothing }



-- | <p>This exception occurs when there is something wrong with user input.</p>
newtype InvalidRequestException = InvalidRequestException 
  { "ErrorCode" :: Maybe (ErrorCode)
  , "Message" :: Maybe (ErrorMessage)
  }
derive instance newtypeInvalidRequestException :: Newtype InvalidRequestException _
derive instance repGenericInvalidRequestException :: Generic InvalidRequestException _
instance showInvalidRequestException :: Show InvalidRequestException where show = genericShow
instance decodeInvalidRequestException :: Decode InvalidRequestException where decode = genericDecode options
instance encodeInvalidRequestException :: Encode InvalidRequestException where encode = genericEncode options

-- | Constructs InvalidRequestException from required parameters
newInvalidRequestException :: InvalidRequestException
newInvalidRequestException  = InvalidRequestException { "ErrorCode": Nothing, "Message": Nothing }

-- | Constructs InvalidRequestException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidRequestException' :: ( { "ErrorCode" :: Maybe (ErrorCode) , "Message" :: Maybe (ErrorMessage) } -> {"ErrorCode" :: Maybe (ErrorCode) , "Message" :: Maybe (ErrorMessage) } ) -> InvalidRequestException
newInvalidRequestException'  customize = (InvalidRequestException <<< customize) { "ErrorCode": Nothing, "Message": Nothing }



-- | <p>A description of a cluster (job flow).</p>
newtype JobFlowDetail = JobFlowDetail 
  { "JobFlowId" :: (XmlStringMaxLen256)
  , "Name" :: (XmlStringMaxLen256)
  , "LogUri" :: Maybe (XmlString)
  , "AmiVersion" :: Maybe (XmlStringMaxLen256)
  , "ExecutionStatusDetail" :: (JobFlowExecutionStatusDetail)
  , "Instances" :: (JobFlowInstancesDetail)
  , "Steps" :: Maybe (StepDetailList)
  , "BootstrapActions" :: Maybe (BootstrapActionDetailList)
  , "SupportedProducts" :: Maybe (SupportedProductsList)
  , "VisibleToAllUsers" :: Maybe (Boolean)
  , "JobFlowRole" :: Maybe (XmlString)
  , "ServiceRole" :: Maybe (XmlString)
  , "AutoScalingRole" :: Maybe (XmlString)
  , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior)
  }
derive instance newtypeJobFlowDetail :: Newtype JobFlowDetail _
derive instance repGenericJobFlowDetail :: Generic JobFlowDetail _
instance showJobFlowDetail :: Show JobFlowDetail where show = genericShow
instance decodeJobFlowDetail :: Decode JobFlowDetail where decode = genericDecode options
instance encodeJobFlowDetail :: Encode JobFlowDetail where encode = genericEncode options

-- | Constructs JobFlowDetail from required parameters
newJobFlowDetail :: JobFlowExecutionStatusDetail -> JobFlowInstancesDetail -> XmlStringMaxLen256 -> XmlStringMaxLen256 -> JobFlowDetail
newJobFlowDetail _ExecutionStatusDetail _Instances _JobFlowId _Name = JobFlowDetail { "ExecutionStatusDetail": _ExecutionStatusDetail, "Instances": _Instances, "JobFlowId": _JobFlowId, "Name": _Name, "AmiVersion": Nothing, "AutoScalingRole": Nothing, "BootstrapActions": Nothing, "JobFlowRole": Nothing, "LogUri": Nothing, "ScaleDownBehavior": Nothing, "ServiceRole": Nothing, "Steps": Nothing, "SupportedProducts": Nothing, "VisibleToAllUsers": Nothing }

-- | Constructs JobFlowDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowDetail' :: JobFlowExecutionStatusDetail -> JobFlowInstancesDetail -> XmlStringMaxLen256 -> XmlStringMaxLen256 -> ( { "JobFlowId" :: (XmlStringMaxLen256) , "Name" :: (XmlStringMaxLen256) , "LogUri" :: Maybe (XmlString) , "AmiVersion" :: Maybe (XmlStringMaxLen256) , "ExecutionStatusDetail" :: (JobFlowExecutionStatusDetail) , "Instances" :: (JobFlowInstancesDetail) , "Steps" :: Maybe (StepDetailList) , "BootstrapActions" :: Maybe (BootstrapActionDetailList) , "SupportedProducts" :: Maybe (SupportedProductsList) , "VisibleToAllUsers" :: Maybe (Boolean) , "JobFlowRole" :: Maybe (XmlString) , "ServiceRole" :: Maybe (XmlString) , "AutoScalingRole" :: Maybe (XmlString) , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior) } -> {"JobFlowId" :: (XmlStringMaxLen256) , "Name" :: (XmlStringMaxLen256) , "LogUri" :: Maybe (XmlString) , "AmiVersion" :: Maybe (XmlStringMaxLen256) , "ExecutionStatusDetail" :: (JobFlowExecutionStatusDetail) , "Instances" :: (JobFlowInstancesDetail) , "Steps" :: Maybe (StepDetailList) , "BootstrapActions" :: Maybe (BootstrapActionDetailList) , "SupportedProducts" :: Maybe (SupportedProductsList) , "VisibleToAllUsers" :: Maybe (Boolean) , "JobFlowRole" :: Maybe (XmlString) , "ServiceRole" :: Maybe (XmlString) , "AutoScalingRole" :: Maybe (XmlString) , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior) } ) -> JobFlowDetail
newJobFlowDetail' _ExecutionStatusDetail _Instances _JobFlowId _Name customize = (JobFlowDetail <<< customize) { "ExecutionStatusDetail": _ExecutionStatusDetail, "Instances": _Instances, "JobFlowId": _JobFlowId, "Name": _Name, "AmiVersion": Nothing, "AutoScalingRole": Nothing, "BootstrapActions": Nothing, "JobFlowRole": Nothing, "LogUri": Nothing, "ScaleDownBehavior": Nothing, "ServiceRole": Nothing, "Steps": Nothing, "SupportedProducts": Nothing, "VisibleToAllUsers": Nothing }



newtype JobFlowDetailList = JobFlowDetailList (Array JobFlowDetail)
derive instance newtypeJobFlowDetailList :: Newtype JobFlowDetailList _
derive instance repGenericJobFlowDetailList :: Generic JobFlowDetailList _
instance showJobFlowDetailList :: Show JobFlowDetailList where show = genericShow
instance decodeJobFlowDetailList :: Decode JobFlowDetailList where decode = genericDecode options
instance encodeJobFlowDetailList :: Encode JobFlowDetailList where encode = genericEncode options



-- | <p>The type of instance.</p>
newtype JobFlowExecutionState = JobFlowExecutionState String
derive instance newtypeJobFlowExecutionState :: Newtype JobFlowExecutionState _
derive instance repGenericJobFlowExecutionState :: Generic JobFlowExecutionState _
instance showJobFlowExecutionState :: Show JobFlowExecutionState where show = genericShow
instance decodeJobFlowExecutionState :: Decode JobFlowExecutionState where decode = genericDecode options
instance encodeJobFlowExecutionState :: Encode JobFlowExecutionState where encode = genericEncode options



newtype JobFlowExecutionStateList = JobFlowExecutionStateList (Array JobFlowExecutionState)
derive instance newtypeJobFlowExecutionStateList :: Newtype JobFlowExecutionStateList _
derive instance repGenericJobFlowExecutionStateList :: Generic JobFlowExecutionStateList _
instance showJobFlowExecutionStateList :: Show JobFlowExecutionStateList where show = genericShow
instance decodeJobFlowExecutionStateList :: Decode JobFlowExecutionStateList where decode = genericDecode options
instance encodeJobFlowExecutionStateList :: Encode JobFlowExecutionStateList where encode = genericEncode options



-- | <p>Describes the status of the cluster (job flow).</p>
newtype JobFlowExecutionStatusDetail = JobFlowExecutionStatusDetail 
  { "State" :: (JobFlowExecutionState)
  , "CreationDateTime" :: (Date)
  , "StartDateTime" :: Maybe (Date)
  , "ReadyDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  , "LastStateChangeReason" :: Maybe (XmlString)
  }
derive instance newtypeJobFlowExecutionStatusDetail :: Newtype JobFlowExecutionStatusDetail _
derive instance repGenericJobFlowExecutionStatusDetail :: Generic JobFlowExecutionStatusDetail _
instance showJobFlowExecutionStatusDetail :: Show JobFlowExecutionStatusDetail where show = genericShow
instance decodeJobFlowExecutionStatusDetail :: Decode JobFlowExecutionStatusDetail where decode = genericDecode options
instance encodeJobFlowExecutionStatusDetail :: Encode JobFlowExecutionStatusDetail where encode = genericEncode options

-- | Constructs JobFlowExecutionStatusDetail from required parameters
newJobFlowExecutionStatusDetail :: Date -> JobFlowExecutionState -> JobFlowExecutionStatusDetail
newJobFlowExecutionStatusDetail _CreationDateTime _State = JobFlowExecutionStatusDetail { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": Nothing, "LastStateChangeReason": Nothing, "ReadyDateTime": Nothing, "StartDateTime": Nothing }

-- | Constructs JobFlowExecutionStatusDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowExecutionStatusDetail' :: Date -> JobFlowExecutionState -> ( { "State" :: (JobFlowExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) , "LastStateChangeReason" :: Maybe (XmlString) } -> {"State" :: (JobFlowExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: Maybe (Date) , "ReadyDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) , "LastStateChangeReason" :: Maybe (XmlString) } ) -> JobFlowExecutionStatusDetail
newJobFlowExecutionStatusDetail' _CreationDateTime _State customize = (JobFlowExecutionStatusDetail <<< customize) { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": Nothing, "LastStateChangeReason": Nothing, "ReadyDateTime": Nothing, "StartDateTime": Nothing }



-- | <p>A description of the Amazon EC2 instance on which the cluster (job flow) runs. A valid JobFlowInstancesConfig must contain either InstanceGroups or InstanceFleets, which is the recommended configuration. They cannot be used together. You may also have MasterInstanceType, SlaveInstanceType, and InstanceCount (all three must be present), but we don't recommend this configuration.</p>
newtype JobFlowInstancesConfig = JobFlowInstancesConfig 
  { "MasterInstanceType" :: Maybe (InstanceType)
  , "SlaveInstanceType" :: Maybe (InstanceType)
  , "InstanceCount" :: Maybe (Int)
  , "InstanceGroups" :: Maybe (InstanceGroupConfigList)
  , "InstanceFleets" :: Maybe (InstanceFleetConfigList)
  , "Ec2KeyName" :: Maybe (XmlStringMaxLen256)
  , "Placement" :: Maybe (PlacementType)
  , "KeepJobFlowAliveWhenNoSteps" :: Maybe (Boolean)
  , "TerminationProtected" :: Maybe (Boolean)
  , "HadoopVersion" :: Maybe (XmlStringMaxLen256)
  , "Ec2SubnetId" :: Maybe (XmlStringMaxLen256)
  , "Ec2SubnetIds" :: Maybe (XmlStringMaxLen256List)
  , "EmrManagedMasterSecurityGroup" :: Maybe (XmlStringMaxLen256)
  , "EmrManagedSlaveSecurityGroup" :: Maybe (XmlStringMaxLen256)
  , "ServiceAccessSecurityGroup" :: Maybe (XmlStringMaxLen256)
  , "AdditionalMasterSecurityGroups" :: Maybe (SecurityGroupsList)
  , "AdditionalSlaveSecurityGroups" :: Maybe (SecurityGroupsList)
  }
derive instance newtypeJobFlowInstancesConfig :: Newtype JobFlowInstancesConfig _
derive instance repGenericJobFlowInstancesConfig :: Generic JobFlowInstancesConfig _
instance showJobFlowInstancesConfig :: Show JobFlowInstancesConfig where show = genericShow
instance decodeJobFlowInstancesConfig :: Decode JobFlowInstancesConfig where decode = genericDecode options
instance encodeJobFlowInstancesConfig :: Encode JobFlowInstancesConfig where encode = genericEncode options

-- | Constructs JobFlowInstancesConfig from required parameters
newJobFlowInstancesConfig :: JobFlowInstancesConfig
newJobFlowInstancesConfig  = JobFlowInstancesConfig { "AdditionalMasterSecurityGroups": Nothing, "AdditionalSlaveSecurityGroups": Nothing, "Ec2KeyName": Nothing, "Ec2SubnetId": Nothing, "Ec2SubnetIds": Nothing, "EmrManagedMasterSecurityGroup": Nothing, "EmrManagedSlaveSecurityGroup": Nothing, "HadoopVersion": Nothing, "InstanceCount": Nothing, "InstanceFleets": Nothing, "InstanceGroups": Nothing, "KeepJobFlowAliveWhenNoSteps": Nothing, "MasterInstanceType": Nothing, "Placement": Nothing, "ServiceAccessSecurityGroup": Nothing, "SlaveInstanceType": Nothing, "TerminationProtected": Nothing }

-- | Constructs JobFlowInstancesConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowInstancesConfig' :: ( { "MasterInstanceType" :: Maybe (InstanceType) , "SlaveInstanceType" :: Maybe (InstanceType) , "InstanceCount" :: Maybe (Int) , "InstanceGroups" :: Maybe (InstanceGroupConfigList) , "InstanceFleets" :: Maybe (InstanceFleetConfigList) , "Ec2KeyName" :: Maybe (XmlStringMaxLen256) , "Placement" :: Maybe (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: Maybe (Boolean) , "TerminationProtected" :: Maybe (Boolean) , "HadoopVersion" :: Maybe (XmlStringMaxLen256) , "Ec2SubnetId" :: Maybe (XmlStringMaxLen256) , "Ec2SubnetIds" :: Maybe (XmlStringMaxLen256List) , "EmrManagedMasterSecurityGroup" :: Maybe (XmlStringMaxLen256) , "EmrManagedSlaveSecurityGroup" :: Maybe (XmlStringMaxLen256) , "ServiceAccessSecurityGroup" :: Maybe (XmlStringMaxLen256) , "AdditionalMasterSecurityGroups" :: Maybe (SecurityGroupsList) , "AdditionalSlaveSecurityGroups" :: Maybe (SecurityGroupsList) } -> {"MasterInstanceType" :: Maybe (InstanceType) , "SlaveInstanceType" :: Maybe (InstanceType) , "InstanceCount" :: Maybe (Int) , "InstanceGroups" :: Maybe (InstanceGroupConfigList) , "InstanceFleets" :: Maybe (InstanceFleetConfigList) , "Ec2KeyName" :: Maybe (XmlStringMaxLen256) , "Placement" :: Maybe (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: Maybe (Boolean) , "TerminationProtected" :: Maybe (Boolean) , "HadoopVersion" :: Maybe (XmlStringMaxLen256) , "Ec2SubnetId" :: Maybe (XmlStringMaxLen256) , "Ec2SubnetIds" :: Maybe (XmlStringMaxLen256List) , "EmrManagedMasterSecurityGroup" :: Maybe (XmlStringMaxLen256) , "EmrManagedSlaveSecurityGroup" :: Maybe (XmlStringMaxLen256) , "ServiceAccessSecurityGroup" :: Maybe (XmlStringMaxLen256) , "AdditionalMasterSecurityGroups" :: Maybe (SecurityGroupsList) , "AdditionalSlaveSecurityGroups" :: Maybe (SecurityGroupsList) } ) -> JobFlowInstancesConfig
newJobFlowInstancesConfig'  customize = (JobFlowInstancesConfig <<< customize) { "AdditionalMasterSecurityGroups": Nothing, "AdditionalSlaveSecurityGroups": Nothing, "Ec2KeyName": Nothing, "Ec2SubnetId": Nothing, "Ec2SubnetIds": Nothing, "EmrManagedMasterSecurityGroup": Nothing, "EmrManagedSlaveSecurityGroup": Nothing, "HadoopVersion": Nothing, "InstanceCount": Nothing, "InstanceFleets": Nothing, "InstanceGroups": Nothing, "KeepJobFlowAliveWhenNoSteps": Nothing, "MasterInstanceType": Nothing, "Placement": Nothing, "ServiceAccessSecurityGroup": Nothing, "SlaveInstanceType": Nothing, "TerminationProtected": Nothing }



-- | <p>Specify the type of Amazon EC2 instances that the cluster (job flow) runs on.</p>
newtype JobFlowInstancesDetail = JobFlowInstancesDetail 
  { "MasterInstanceType" :: (InstanceType)
  , "MasterPublicDnsName" :: Maybe (XmlString)
  , "MasterInstanceId" :: Maybe (XmlString)
  , "SlaveInstanceType" :: (InstanceType)
  , "InstanceCount" :: (Int)
  , "InstanceGroups" :: Maybe (InstanceGroupDetailList)
  , "NormalizedInstanceHours" :: Maybe (Int)
  , "Ec2KeyName" :: Maybe (XmlStringMaxLen256)
  , "Ec2SubnetId" :: Maybe (XmlStringMaxLen256)
  , "Placement" :: Maybe (PlacementType)
  , "KeepJobFlowAliveWhenNoSteps" :: Maybe (Boolean)
  , "TerminationProtected" :: Maybe (Boolean)
  , "HadoopVersion" :: Maybe (XmlStringMaxLen256)
  }
derive instance newtypeJobFlowInstancesDetail :: Newtype JobFlowInstancesDetail _
derive instance repGenericJobFlowInstancesDetail :: Generic JobFlowInstancesDetail _
instance showJobFlowInstancesDetail :: Show JobFlowInstancesDetail where show = genericShow
instance decodeJobFlowInstancesDetail :: Decode JobFlowInstancesDetail where decode = genericDecode options
instance encodeJobFlowInstancesDetail :: Encode JobFlowInstancesDetail where encode = genericEncode options

-- | Constructs JobFlowInstancesDetail from required parameters
newJobFlowInstancesDetail :: Int -> InstanceType -> InstanceType -> JobFlowInstancesDetail
newJobFlowInstancesDetail _InstanceCount _MasterInstanceType _SlaveInstanceType = JobFlowInstancesDetail { "InstanceCount": _InstanceCount, "MasterInstanceType": _MasterInstanceType, "SlaveInstanceType": _SlaveInstanceType, "Ec2KeyName": Nothing, "Ec2SubnetId": Nothing, "HadoopVersion": Nothing, "InstanceGroups": Nothing, "KeepJobFlowAliveWhenNoSteps": Nothing, "MasterInstanceId": Nothing, "MasterPublicDnsName": Nothing, "NormalizedInstanceHours": Nothing, "Placement": Nothing, "TerminationProtected": Nothing }

-- | Constructs JobFlowInstancesDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newJobFlowInstancesDetail' :: Int -> InstanceType -> InstanceType -> ( { "MasterInstanceType" :: (InstanceType) , "MasterPublicDnsName" :: Maybe (XmlString) , "MasterInstanceId" :: Maybe (XmlString) , "SlaveInstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "InstanceGroups" :: Maybe (InstanceGroupDetailList) , "NormalizedInstanceHours" :: Maybe (Int) , "Ec2KeyName" :: Maybe (XmlStringMaxLen256) , "Ec2SubnetId" :: Maybe (XmlStringMaxLen256) , "Placement" :: Maybe (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: Maybe (Boolean) , "TerminationProtected" :: Maybe (Boolean) , "HadoopVersion" :: Maybe (XmlStringMaxLen256) } -> {"MasterInstanceType" :: (InstanceType) , "MasterPublicDnsName" :: Maybe (XmlString) , "MasterInstanceId" :: Maybe (XmlString) , "SlaveInstanceType" :: (InstanceType) , "InstanceCount" :: (Int) , "InstanceGroups" :: Maybe (InstanceGroupDetailList) , "NormalizedInstanceHours" :: Maybe (Int) , "Ec2KeyName" :: Maybe (XmlStringMaxLen256) , "Ec2SubnetId" :: Maybe (XmlStringMaxLen256) , "Placement" :: Maybe (PlacementType) , "KeepJobFlowAliveWhenNoSteps" :: Maybe (Boolean) , "TerminationProtected" :: Maybe (Boolean) , "HadoopVersion" :: Maybe (XmlStringMaxLen256) } ) -> JobFlowInstancesDetail
newJobFlowInstancesDetail' _InstanceCount _MasterInstanceType _SlaveInstanceType customize = (JobFlowInstancesDetail <<< customize) { "InstanceCount": _InstanceCount, "MasterInstanceType": _MasterInstanceType, "SlaveInstanceType": _SlaveInstanceType, "Ec2KeyName": Nothing, "Ec2SubnetId": Nothing, "HadoopVersion": Nothing, "InstanceGroups": Nothing, "KeepJobFlowAliveWhenNoSteps": Nothing, "MasterInstanceId": Nothing, "MasterPublicDnsName": Nothing, "NormalizedInstanceHours": Nothing, "Placement": Nothing, "TerminationProtected": Nothing }



-- | <p>Attributes for Kerberos configuration when Kerberos authentication is enabled using a security configuration. For more information see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-kerberos.html">Use Kerberos Authentication</a> in the <i>EMR Management Guide</i>.</p>
newtype KerberosAttributes = KerberosAttributes 
  { "Realm" :: (XmlStringMaxLen256)
  , "KdcAdminPassword" :: (XmlStringMaxLen256)
  , "CrossRealmTrustPrincipalPassword" :: Maybe (XmlStringMaxLen256)
  , "ADDomainJoinUser" :: Maybe (XmlStringMaxLen256)
  , "ADDomainJoinPassword" :: Maybe (XmlStringMaxLen256)
  }
derive instance newtypeKerberosAttributes :: Newtype KerberosAttributes _
derive instance repGenericKerberosAttributes :: Generic KerberosAttributes _
instance showKerberosAttributes :: Show KerberosAttributes where show = genericShow
instance decodeKerberosAttributes :: Decode KerberosAttributes where decode = genericDecode options
instance encodeKerberosAttributes :: Encode KerberosAttributes where encode = genericEncode options

-- | Constructs KerberosAttributes from required parameters
newKerberosAttributes :: XmlStringMaxLen256 -> XmlStringMaxLen256 -> KerberosAttributes
newKerberosAttributes _KdcAdminPassword _Realm = KerberosAttributes { "KdcAdminPassword": _KdcAdminPassword, "Realm": _Realm, "ADDomainJoinPassword": Nothing, "ADDomainJoinUser": Nothing, "CrossRealmTrustPrincipalPassword": Nothing }

-- | Constructs KerberosAttributes's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKerberosAttributes' :: XmlStringMaxLen256 -> XmlStringMaxLen256 -> ( { "Realm" :: (XmlStringMaxLen256) , "KdcAdminPassword" :: (XmlStringMaxLen256) , "CrossRealmTrustPrincipalPassword" :: Maybe (XmlStringMaxLen256) , "ADDomainJoinUser" :: Maybe (XmlStringMaxLen256) , "ADDomainJoinPassword" :: Maybe (XmlStringMaxLen256) } -> {"Realm" :: (XmlStringMaxLen256) , "KdcAdminPassword" :: (XmlStringMaxLen256) , "CrossRealmTrustPrincipalPassword" :: Maybe (XmlStringMaxLen256) , "ADDomainJoinUser" :: Maybe (XmlStringMaxLen256) , "ADDomainJoinPassword" :: Maybe (XmlStringMaxLen256) } ) -> KerberosAttributes
newKerberosAttributes' _KdcAdminPassword _Realm customize = (KerberosAttributes <<< customize) { "KdcAdminPassword": _KdcAdminPassword, "Realm": _Realm, "ADDomainJoinPassword": Nothing, "ADDomainJoinUser": Nothing, "CrossRealmTrustPrincipalPassword": Nothing }



-- | <p>A key value pair.</p>
newtype KeyValue = KeyValue 
  { "Key" :: Maybe (XmlString)
  , "Value" :: Maybe (XmlString)
  }
derive instance newtypeKeyValue :: Newtype KeyValue _
derive instance repGenericKeyValue :: Generic KeyValue _
instance showKeyValue :: Show KeyValue where show = genericShow
instance decodeKeyValue :: Decode KeyValue where decode = genericDecode options
instance encodeKeyValue :: Encode KeyValue where encode = genericEncode options

-- | Constructs KeyValue from required parameters
newKeyValue :: KeyValue
newKeyValue  = KeyValue { "Key": Nothing, "Value": Nothing }

-- | Constructs KeyValue's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newKeyValue' :: ( { "Key" :: Maybe (XmlString) , "Value" :: Maybe (XmlString) } -> {"Key" :: Maybe (XmlString) , "Value" :: Maybe (XmlString) } ) -> KeyValue
newKeyValue'  customize = (KeyValue <<< customize) { "Key": Nothing, "Value": Nothing }



newtype KeyValueList = KeyValueList (Array KeyValue)
derive instance newtypeKeyValueList :: Newtype KeyValueList _
derive instance repGenericKeyValueList :: Generic KeyValueList _
instance showKeyValueList :: Show KeyValueList where show = genericShow
instance decodeKeyValueList :: Decode KeyValueList where decode = genericDecode options
instance encodeKeyValueList :: Encode KeyValueList where encode = genericEncode options



-- | <p>This input determines which bootstrap actions to retrieve.</p>
newtype ListBootstrapActionsInput = ListBootstrapActionsInput 
  { "ClusterId" :: (ClusterId)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListBootstrapActionsInput :: Newtype ListBootstrapActionsInput _
derive instance repGenericListBootstrapActionsInput :: Generic ListBootstrapActionsInput _
instance showListBootstrapActionsInput :: Show ListBootstrapActionsInput where show = genericShow
instance decodeListBootstrapActionsInput :: Decode ListBootstrapActionsInput where decode = genericDecode options
instance encodeListBootstrapActionsInput :: Encode ListBootstrapActionsInput where encode = genericEncode options

-- | Constructs ListBootstrapActionsInput from required parameters
newListBootstrapActionsInput :: ClusterId -> ListBootstrapActionsInput
newListBootstrapActionsInput _ClusterId = ListBootstrapActionsInput { "ClusterId": _ClusterId, "Marker": Nothing }

-- | Constructs ListBootstrapActionsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBootstrapActionsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "Marker" :: Maybe (Marker) } -> {"ClusterId" :: (ClusterId) , "Marker" :: Maybe (Marker) } ) -> ListBootstrapActionsInput
newListBootstrapActionsInput' _ClusterId customize = (ListBootstrapActionsInput <<< customize) { "ClusterId": _ClusterId, "Marker": Nothing }



-- | <p>This output contains the bootstrap actions detail.</p>
newtype ListBootstrapActionsOutput = ListBootstrapActionsOutput 
  { "BootstrapActions" :: Maybe (CommandList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListBootstrapActionsOutput :: Newtype ListBootstrapActionsOutput _
derive instance repGenericListBootstrapActionsOutput :: Generic ListBootstrapActionsOutput _
instance showListBootstrapActionsOutput :: Show ListBootstrapActionsOutput where show = genericShow
instance decodeListBootstrapActionsOutput :: Decode ListBootstrapActionsOutput where decode = genericDecode options
instance encodeListBootstrapActionsOutput :: Encode ListBootstrapActionsOutput where encode = genericEncode options

-- | Constructs ListBootstrapActionsOutput from required parameters
newListBootstrapActionsOutput :: ListBootstrapActionsOutput
newListBootstrapActionsOutput  = ListBootstrapActionsOutput { "BootstrapActions": Nothing, "Marker": Nothing }

-- | Constructs ListBootstrapActionsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListBootstrapActionsOutput' :: ( { "BootstrapActions" :: Maybe (CommandList) , "Marker" :: Maybe (Marker) } -> {"BootstrapActions" :: Maybe (CommandList) , "Marker" :: Maybe (Marker) } ) -> ListBootstrapActionsOutput
newListBootstrapActionsOutput'  customize = (ListBootstrapActionsOutput <<< customize) { "BootstrapActions": Nothing, "Marker": Nothing }



-- | <p>This input determines how the ListClusters action filters the list of clusters that it returns.</p>
newtype ListClustersInput = ListClustersInput 
  { "CreatedAfter" :: Maybe (Date)
  , "CreatedBefore" :: Maybe (Date)
  , "ClusterStates" :: Maybe (ClusterStateList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListClustersInput :: Newtype ListClustersInput _
derive instance repGenericListClustersInput :: Generic ListClustersInput _
instance showListClustersInput :: Show ListClustersInput where show = genericShow
instance decodeListClustersInput :: Decode ListClustersInput where decode = genericDecode options
instance encodeListClustersInput :: Encode ListClustersInput where encode = genericEncode options

-- | Constructs ListClustersInput from required parameters
newListClustersInput :: ListClustersInput
newListClustersInput  = ListClustersInput { "ClusterStates": Nothing, "CreatedAfter": Nothing, "CreatedBefore": Nothing, "Marker": Nothing }

-- | Constructs ListClustersInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersInput' :: ( { "CreatedAfter" :: Maybe (Date) , "CreatedBefore" :: Maybe (Date) , "ClusterStates" :: Maybe (ClusterStateList) , "Marker" :: Maybe (Marker) } -> {"CreatedAfter" :: Maybe (Date) , "CreatedBefore" :: Maybe (Date) , "ClusterStates" :: Maybe (ClusterStateList) , "Marker" :: Maybe (Marker) } ) -> ListClustersInput
newListClustersInput'  customize = (ListClustersInput <<< customize) { "ClusterStates": Nothing, "CreatedAfter": Nothing, "CreatedBefore": Nothing, "Marker": Nothing }



-- | <p>This contains a ClusterSummaryList with the cluster details; for example, the cluster IDs, names, and status.</p>
newtype ListClustersOutput = ListClustersOutput 
  { "Clusters" :: Maybe (ClusterSummaryList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListClustersOutput :: Newtype ListClustersOutput _
derive instance repGenericListClustersOutput :: Generic ListClustersOutput _
instance showListClustersOutput :: Show ListClustersOutput where show = genericShow
instance decodeListClustersOutput :: Decode ListClustersOutput where decode = genericDecode options
instance encodeListClustersOutput :: Encode ListClustersOutput where encode = genericEncode options

-- | Constructs ListClustersOutput from required parameters
newListClustersOutput :: ListClustersOutput
newListClustersOutput  = ListClustersOutput { "Clusters": Nothing, "Marker": Nothing }

-- | Constructs ListClustersOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListClustersOutput' :: ( { "Clusters" :: Maybe (ClusterSummaryList) , "Marker" :: Maybe (Marker) } -> {"Clusters" :: Maybe (ClusterSummaryList) , "Marker" :: Maybe (Marker) } ) -> ListClustersOutput
newListClustersOutput'  customize = (ListClustersOutput <<< customize) { "Clusters": Nothing, "Marker": Nothing }



newtype ListInstanceFleetsInput = ListInstanceFleetsInput 
  { "ClusterId" :: (ClusterId)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListInstanceFleetsInput :: Newtype ListInstanceFleetsInput _
derive instance repGenericListInstanceFleetsInput :: Generic ListInstanceFleetsInput _
instance showListInstanceFleetsInput :: Show ListInstanceFleetsInput where show = genericShow
instance decodeListInstanceFleetsInput :: Decode ListInstanceFleetsInput where decode = genericDecode options
instance encodeListInstanceFleetsInput :: Encode ListInstanceFleetsInput where encode = genericEncode options

-- | Constructs ListInstanceFleetsInput from required parameters
newListInstanceFleetsInput :: ClusterId -> ListInstanceFleetsInput
newListInstanceFleetsInput _ClusterId = ListInstanceFleetsInput { "ClusterId": _ClusterId, "Marker": Nothing }

-- | Constructs ListInstanceFleetsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceFleetsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "Marker" :: Maybe (Marker) } -> {"ClusterId" :: (ClusterId) , "Marker" :: Maybe (Marker) } ) -> ListInstanceFleetsInput
newListInstanceFleetsInput' _ClusterId customize = (ListInstanceFleetsInput <<< customize) { "ClusterId": _ClusterId, "Marker": Nothing }



newtype ListInstanceFleetsOutput = ListInstanceFleetsOutput 
  { "InstanceFleets" :: Maybe (InstanceFleetList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListInstanceFleetsOutput :: Newtype ListInstanceFleetsOutput _
derive instance repGenericListInstanceFleetsOutput :: Generic ListInstanceFleetsOutput _
instance showListInstanceFleetsOutput :: Show ListInstanceFleetsOutput where show = genericShow
instance decodeListInstanceFleetsOutput :: Decode ListInstanceFleetsOutput where decode = genericDecode options
instance encodeListInstanceFleetsOutput :: Encode ListInstanceFleetsOutput where encode = genericEncode options

-- | Constructs ListInstanceFleetsOutput from required parameters
newListInstanceFleetsOutput :: ListInstanceFleetsOutput
newListInstanceFleetsOutput  = ListInstanceFleetsOutput { "InstanceFleets": Nothing, "Marker": Nothing }

-- | Constructs ListInstanceFleetsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceFleetsOutput' :: ( { "InstanceFleets" :: Maybe (InstanceFleetList) , "Marker" :: Maybe (Marker) } -> {"InstanceFleets" :: Maybe (InstanceFleetList) , "Marker" :: Maybe (Marker) } ) -> ListInstanceFleetsOutput
newListInstanceFleetsOutput'  customize = (ListInstanceFleetsOutput <<< customize) { "InstanceFleets": Nothing, "Marker": Nothing }



-- | <p>This input determines which instance groups to retrieve.</p>
newtype ListInstanceGroupsInput = ListInstanceGroupsInput 
  { "ClusterId" :: (ClusterId)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListInstanceGroupsInput :: Newtype ListInstanceGroupsInput _
derive instance repGenericListInstanceGroupsInput :: Generic ListInstanceGroupsInput _
instance showListInstanceGroupsInput :: Show ListInstanceGroupsInput where show = genericShow
instance decodeListInstanceGroupsInput :: Decode ListInstanceGroupsInput where decode = genericDecode options
instance encodeListInstanceGroupsInput :: Encode ListInstanceGroupsInput where encode = genericEncode options

-- | Constructs ListInstanceGroupsInput from required parameters
newListInstanceGroupsInput :: ClusterId -> ListInstanceGroupsInput
newListInstanceGroupsInput _ClusterId = ListInstanceGroupsInput { "ClusterId": _ClusterId, "Marker": Nothing }

-- | Constructs ListInstanceGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceGroupsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "Marker" :: Maybe (Marker) } -> {"ClusterId" :: (ClusterId) , "Marker" :: Maybe (Marker) } ) -> ListInstanceGroupsInput
newListInstanceGroupsInput' _ClusterId customize = (ListInstanceGroupsInput <<< customize) { "ClusterId": _ClusterId, "Marker": Nothing }



-- | <p>This input determines which instance groups to retrieve.</p>
newtype ListInstanceGroupsOutput = ListInstanceGroupsOutput 
  { "InstanceGroups" :: Maybe (InstanceGroupList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListInstanceGroupsOutput :: Newtype ListInstanceGroupsOutput _
derive instance repGenericListInstanceGroupsOutput :: Generic ListInstanceGroupsOutput _
instance showListInstanceGroupsOutput :: Show ListInstanceGroupsOutput where show = genericShow
instance decodeListInstanceGroupsOutput :: Decode ListInstanceGroupsOutput where decode = genericDecode options
instance encodeListInstanceGroupsOutput :: Encode ListInstanceGroupsOutput where encode = genericEncode options

-- | Constructs ListInstanceGroupsOutput from required parameters
newListInstanceGroupsOutput :: ListInstanceGroupsOutput
newListInstanceGroupsOutput  = ListInstanceGroupsOutput { "InstanceGroups": Nothing, "Marker": Nothing }

-- | Constructs ListInstanceGroupsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstanceGroupsOutput' :: ( { "InstanceGroups" :: Maybe (InstanceGroupList) , "Marker" :: Maybe (Marker) } -> {"InstanceGroups" :: Maybe (InstanceGroupList) , "Marker" :: Maybe (Marker) } ) -> ListInstanceGroupsOutput
newListInstanceGroupsOutput'  customize = (ListInstanceGroupsOutput <<< customize) { "InstanceGroups": Nothing, "Marker": Nothing }



-- | <p>This input determines which instances to list.</p>
newtype ListInstancesInput = ListInstancesInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceGroupId" :: Maybe (InstanceGroupId)
  , "InstanceGroupTypes" :: Maybe (InstanceGroupTypeList)
  , "InstanceFleetId" :: Maybe (InstanceFleetId)
  , "InstanceFleetType" :: Maybe (InstanceFleetType)
  , "InstanceStates" :: Maybe (InstanceStateList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListInstancesInput :: Newtype ListInstancesInput _
derive instance repGenericListInstancesInput :: Generic ListInstancesInput _
instance showListInstancesInput :: Show ListInstancesInput where show = genericShow
instance decodeListInstancesInput :: Decode ListInstancesInput where decode = genericDecode options
instance encodeListInstancesInput :: Encode ListInstancesInput where encode = genericEncode options

-- | Constructs ListInstancesInput from required parameters
newListInstancesInput :: ClusterId -> ListInstancesInput
newListInstancesInput _ClusterId = ListInstancesInput { "ClusterId": _ClusterId, "InstanceFleetId": Nothing, "InstanceFleetType": Nothing, "InstanceGroupId": Nothing, "InstanceGroupTypes": Nothing, "InstanceStates": Nothing, "Marker": Nothing }

-- | Constructs ListInstancesInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "InstanceGroupId" :: Maybe (InstanceGroupId) , "InstanceGroupTypes" :: Maybe (InstanceGroupTypeList) , "InstanceFleetId" :: Maybe (InstanceFleetId) , "InstanceFleetType" :: Maybe (InstanceFleetType) , "InstanceStates" :: Maybe (InstanceStateList) , "Marker" :: Maybe (Marker) } -> {"ClusterId" :: (ClusterId) , "InstanceGroupId" :: Maybe (InstanceGroupId) , "InstanceGroupTypes" :: Maybe (InstanceGroupTypeList) , "InstanceFleetId" :: Maybe (InstanceFleetId) , "InstanceFleetType" :: Maybe (InstanceFleetType) , "InstanceStates" :: Maybe (InstanceStateList) , "Marker" :: Maybe (Marker) } ) -> ListInstancesInput
newListInstancesInput' _ClusterId customize = (ListInstancesInput <<< customize) { "ClusterId": _ClusterId, "InstanceFleetId": Nothing, "InstanceFleetType": Nothing, "InstanceGroupId": Nothing, "InstanceGroupTypes": Nothing, "InstanceStates": Nothing, "Marker": Nothing }



-- | <p>This output contains the list of instances.</p>
newtype ListInstancesOutput = ListInstancesOutput 
  { "Instances" :: Maybe (InstanceList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListInstancesOutput :: Newtype ListInstancesOutput _
derive instance repGenericListInstancesOutput :: Generic ListInstancesOutput _
instance showListInstancesOutput :: Show ListInstancesOutput where show = genericShow
instance decodeListInstancesOutput :: Decode ListInstancesOutput where decode = genericDecode options
instance encodeListInstancesOutput :: Encode ListInstancesOutput where encode = genericEncode options

-- | Constructs ListInstancesOutput from required parameters
newListInstancesOutput :: ListInstancesOutput
newListInstancesOutput  = ListInstancesOutput { "Instances": Nothing, "Marker": Nothing }

-- | Constructs ListInstancesOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListInstancesOutput' :: ( { "Instances" :: Maybe (InstanceList) , "Marker" :: Maybe (Marker) } -> {"Instances" :: Maybe (InstanceList) , "Marker" :: Maybe (Marker) } ) -> ListInstancesOutput
newListInstancesOutput'  customize = (ListInstancesOutput <<< customize) { "Instances": Nothing, "Marker": Nothing }



newtype ListSecurityConfigurationsInput = ListSecurityConfigurationsInput 
  { "Marker" :: Maybe (Marker)
  }
derive instance newtypeListSecurityConfigurationsInput :: Newtype ListSecurityConfigurationsInput _
derive instance repGenericListSecurityConfigurationsInput :: Generic ListSecurityConfigurationsInput _
instance showListSecurityConfigurationsInput :: Show ListSecurityConfigurationsInput where show = genericShow
instance decodeListSecurityConfigurationsInput :: Decode ListSecurityConfigurationsInput where decode = genericDecode options
instance encodeListSecurityConfigurationsInput :: Encode ListSecurityConfigurationsInput where encode = genericEncode options

-- | Constructs ListSecurityConfigurationsInput from required parameters
newListSecurityConfigurationsInput :: ListSecurityConfigurationsInput
newListSecurityConfigurationsInput  = ListSecurityConfigurationsInput { "Marker": Nothing }

-- | Constructs ListSecurityConfigurationsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSecurityConfigurationsInput' :: ( { "Marker" :: Maybe (Marker) } -> {"Marker" :: Maybe (Marker) } ) -> ListSecurityConfigurationsInput
newListSecurityConfigurationsInput'  customize = (ListSecurityConfigurationsInput <<< customize) { "Marker": Nothing }



newtype ListSecurityConfigurationsOutput = ListSecurityConfigurationsOutput 
  { "SecurityConfigurations" :: Maybe (SecurityConfigurationList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListSecurityConfigurationsOutput :: Newtype ListSecurityConfigurationsOutput _
derive instance repGenericListSecurityConfigurationsOutput :: Generic ListSecurityConfigurationsOutput _
instance showListSecurityConfigurationsOutput :: Show ListSecurityConfigurationsOutput where show = genericShow
instance decodeListSecurityConfigurationsOutput :: Decode ListSecurityConfigurationsOutput where decode = genericDecode options
instance encodeListSecurityConfigurationsOutput :: Encode ListSecurityConfigurationsOutput where encode = genericEncode options

-- | Constructs ListSecurityConfigurationsOutput from required parameters
newListSecurityConfigurationsOutput :: ListSecurityConfigurationsOutput
newListSecurityConfigurationsOutput  = ListSecurityConfigurationsOutput { "Marker": Nothing, "SecurityConfigurations": Nothing }

-- | Constructs ListSecurityConfigurationsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListSecurityConfigurationsOutput' :: ( { "SecurityConfigurations" :: Maybe (SecurityConfigurationList) , "Marker" :: Maybe (Marker) } -> {"SecurityConfigurations" :: Maybe (SecurityConfigurationList) , "Marker" :: Maybe (Marker) } ) -> ListSecurityConfigurationsOutput
newListSecurityConfigurationsOutput'  customize = (ListSecurityConfigurationsOutput <<< customize) { "Marker": Nothing, "SecurityConfigurations": Nothing }



-- | <p>This input determines which steps to list.</p>
newtype ListStepsInput = ListStepsInput 
  { "ClusterId" :: (ClusterId)
  , "StepStates" :: Maybe (StepStateList)
  , "StepIds" :: Maybe (XmlStringList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListStepsInput :: Newtype ListStepsInput _
derive instance repGenericListStepsInput :: Generic ListStepsInput _
instance showListStepsInput :: Show ListStepsInput where show = genericShow
instance decodeListStepsInput :: Decode ListStepsInput where decode = genericDecode options
instance encodeListStepsInput :: Encode ListStepsInput where encode = genericEncode options

-- | Constructs ListStepsInput from required parameters
newListStepsInput :: ClusterId -> ListStepsInput
newListStepsInput _ClusterId = ListStepsInput { "ClusterId": _ClusterId, "Marker": Nothing, "StepIds": Nothing, "StepStates": Nothing }

-- | Constructs ListStepsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStepsInput' :: ClusterId -> ( { "ClusterId" :: (ClusterId) , "StepStates" :: Maybe (StepStateList) , "StepIds" :: Maybe (XmlStringList) , "Marker" :: Maybe (Marker) } -> {"ClusterId" :: (ClusterId) , "StepStates" :: Maybe (StepStateList) , "StepIds" :: Maybe (XmlStringList) , "Marker" :: Maybe (Marker) } ) -> ListStepsInput
newListStepsInput' _ClusterId customize = (ListStepsInput <<< customize) { "ClusterId": _ClusterId, "Marker": Nothing, "StepIds": Nothing, "StepStates": Nothing }



-- | <p>This output contains the list of steps returned in reverse order. This means that the last step is the first element in the list.</p>
newtype ListStepsOutput = ListStepsOutput 
  { "Steps" :: Maybe (StepSummaryList)
  , "Marker" :: Maybe (Marker)
  }
derive instance newtypeListStepsOutput :: Newtype ListStepsOutput _
derive instance repGenericListStepsOutput :: Generic ListStepsOutput _
instance showListStepsOutput :: Show ListStepsOutput where show = genericShow
instance decodeListStepsOutput :: Decode ListStepsOutput where decode = genericDecode options
instance encodeListStepsOutput :: Encode ListStepsOutput where encode = genericEncode options

-- | Constructs ListStepsOutput from required parameters
newListStepsOutput :: ListStepsOutput
newListStepsOutput  = ListStepsOutput { "Marker": Nothing, "Steps": Nothing }

-- | Constructs ListStepsOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListStepsOutput' :: ( { "Steps" :: Maybe (StepSummaryList) , "Marker" :: Maybe (Marker) } -> {"Steps" :: Maybe (StepSummaryList) , "Marker" :: Maybe (Marker) } ) -> ListStepsOutput
newListStepsOutput'  customize = (ListStepsOutput <<< customize) { "Marker": Nothing, "Steps": Nothing }



newtype Marker = Marker String
derive instance newtypeMarker :: Newtype Marker _
derive instance repGenericMarker :: Generic Marker _
instance showMarker :: Show Marker where show = genericShow
instance decodeMarker :: Decode Marker where decode = genericDecode options
instance encodeMarker :: Encode Marker where encode = genericEncode options



newtype MarketType = MarketType String
derive instance newtypeMarketType :: Newtype MarketType _
derive instance repGenericMarketType :: Generic MarketType _
instance showMarketType :: Show MarketType where show = genericShow
instance decodeMarketType :: Decode MarketType where decode = genericDecode options
instance encodeMarketType :: Encode MarketType where encode = genericEncode options



-- | <p>A CloudWatch dimension, which is specified using a <code>Key</code> (known as a <code>Name</code> in CloudWatch), <code>Value</code> pair. By default, Amazon EMR uses one dimension whose <code>Key</code> is <code>JobFlowID</code> and <code>Value</code> is a variable representing the cluster ID, which is <code>${emr.clusterId}</code>. This enables the rule to bootstrap when the cluster ID becomes available.</p>
newtype MetricDimension = MetricDimension 
  { "Key" :: Maybe (String)
  , "Value" :: Maybe (String)
  }
derive instance newtypeMetricDimension :: Newtype MetricDimension _
derive instance repGenericMetricDimension :: Generic MetricDimension _
instance showMetricDimension :: Show MetricDimension where show = genericShow
instance decodeMetricDimension :: Decode MetricDimension where decode = genericDecode options
instance encodeMetricDimension :: Encode MetricDimension where encode = genericEncode options

-- | Constructs MetricDimension from required parameters
newMetricDimension :: MetricDimension
newMetricDimension  = MetricDimension { "Key": Nothing, "Value": Nothing }

-- | Constructs MetricDimension's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMetricDimension' :: ( { "Key" :: Maybe (String) , "Value" :: Maybe (String) } -> {"Key" :: Maybe (String) , "Value" :: Maybe (String) } ) -> MetricDimension
newMetricDimension'  customize = (MetricDimension <<< customize) { "Key": Nothing, "Value": Nothing }



newtype MetricDimensionList = MetricDimensionList (Array MetricDimension)
derive instance newtypeMetricDimensionList :: Newtype MetricDimensionList _
derive instance repGenericMetricDimensionList :: Generic MetricDimensionList _
instance showMetricDimensionList :: Show MetricDimensionList where show = genericShow
instance decodeMetricDimensionList :: Decode MetricDimensionList where decode = genericDecode options
instance encodeMetricDimensionList :: Encode MetricDimensionList where encode = genericEncode options



newtype ModifyInstanceFleetInput = ModifyInstanceFleetInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceFleet" :: (InstanceFleetModifyConfig)
  }
derive instance newtypeModifyInstanceFleetInput :: Newtype ModifyInstanceFleetInput _
derive instance repGenericModifyInstanceFleetInput :: Generic ModifyInstanceFleetInput _
instance showModifyInstanceFleetInput :: Show ModifyInstanceFleetInput where show = genericShow
instance decodeModifyInstanceFleetInput :: Decode ModifyInstanceFleetInput where decode = genericDecode options
instance encodeModifyInstanceFleetInput :: Encode ModifyInstanceFleetInput where encode = genericEncode options

-- | Constructs ModifyInstanceFleetInput from required parameters
newModifyInstanceFleetInput :: ClusterId -> InstanceFleetModifyConfig -> ModifyInstanceFleetInput
newModifyInstanceFleetInput _ClusterId _InstanceFleet = ModifyInstanceFleetInput { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }

-- | Constructs ModifyInstanceFleetInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyInstanceFleetInput' :: ClusterId -> InstanceFleetModifyConfig -> ( { "ClusterId" :: (ClusterId) , "InstanceFleet" :: (InstanceFleetModifyConfig) } -> {"ClusterId" :: (ClusterId) , "InstanceFleet" :: (InstanceFleetModifyConfig) } ) -> ModifyInstanceFleetInput
newModifyInstanceFleetInput' _ClusterId _InstanceFleet customize = (ModifyInstanceFleetInput <<< customize) { "ClusterId": _ClusterId, "InstanceFleet": _InstanceFleet }



-- | <p>Change the size of some instance groups.</p>
newtype ModifyInstanceGroupsInput = ModifyInstanceGroupsInput 
  { "ClusterId" :: Maybe (ClusterId)
  , "InstanceGroups" :: Maybe (InstanceGroupModifyConfigList)
  }
derive instance newtypeModifyInstanceGroupsInput :: Newtype ModifyInstanceGroupsInput _
derive instance repGenericModifyInstanceGroupsInput :: Generic ModifyInstanceGroupsInput _
instance showModifyInstanceGroupsInput :: Show ModifyInstanceGroupsInput where show = genericShow
instance decodeModifyInstanceGroupsInput :: Decode ModifyInstanceGroupsInput where decode = genericDecode options
instance encodeModifyInstanceGroupsInput :: Encode ModifyInstanceGroupsInput where encode = genericEncode options

-- | Constructs ModifyInstanceGroupsInput from required parameters
newModifyInstanceGroupsInput :: ModifyInstanceGroupsInput
newModifyInstanceGroupsInput  = ModifyInstanceGroupsInput { "ClusterId": Nothing, "InstanceGroups": Nothing }

-- | Constructs ModifyInstanceGroupsInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newModifyInstanceGroupsInput' :: ( { "ClusterId" :: Maybe (ClusterId) , "InstanceGroups" :: Maybe (InstanceGroupModifyConfigList) } -> {"ClusterId" :: Maybe (ClusterId) , "InstanceGroups" :: Maybe (InstanceGroupModifyConfigList) } ) -> ModifyInstanceGroupsInput
newModifyInstanceGroupsInput'  customize = (ModifyInstanceGroupsInput <<< customize) { "ClusterId": Nothing, "InstanceGroups": Nothing }



newtype NewSupportedProductsList = NewSupportedProductsList (Array SupportedProductConfig)
derive instance newtypeNewSupportedProductsList :: Newtype NewSupportedProductsList _
derive instance repGenericNewSupportedProductsList :: Generic NewSupportedProductsList _
instance showNewSupportedProductsList :: Show NewSupportedProductsList where show = genericShow
instance decodeNewSupportedProductsList :: Decode NewSupportedProductsList where decode = genericDecode options
instance encodeNewSupportedProductsList :: Encode NewSupportedProductsList where encode = genericEncode options



newtype NonNegativeDouble = NonNegativeDouble Number
derive instance newtypeNonNegativeDouble :: Newtype NonNegativeDouble _
derive instance repGenericNonNegativeDouble :: Generic NonNegativeDouble _
instance showNonNegativeDouble :: Show NonNegativeDouble where show = genericShow
instance decodeNonNegativeDouble :: Decode NonNegativeDouble where decode = genericDecode options
instance encodeNonNegativeDouble :: Encode NonNegativeDouble where encode = genericEncode options



-- | <p>The Amazon EC2 Availability Zone configuration of the cluster (job flow).</p>
newtype PlacementType = PlacementType 
  { "AvailabilityZone" :: Maybe (XmlString)
  , "AvailabilityZones" :: Maybe (XmlStringMaxLen256List)
  }
derive instance newtypePlacementType :: Newtype PlacementType _
derive instance repGenericPlacementType :: Generic PlacementType _
instance showPlacementType :: Show PlacementType where show = genericShow
instance decodePlacementType :: Decode PlacementType where decode = genericDecode options
instance encodePlacementType :: Encode PlacementType where encode = genericEncode options

-- | Constructs PlacementType from required parameters
newPlacementType :: PlacementType
newPlacementType  = PlacementType { "AvailabilityZone": Nothing, "AvailabilityZones": Nothing }

-- | Constructs PlacementType's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPlacementType' :: ( { "AvailabilityZone" :: Maybe (XmlString) , "AvailabilityZones" :: Maybe (XmlStringMaxLen256List) } -> {"AvailabilityZone" :: Maybe (XmlString) , "AvailabilityZones" :: Maybe (XmlStringMaxLen256List) } ) -> PlacementType
newPlacementType'  customize = (PlacementType <<< customize) { "AvailabilityZone": Nothing, "AvailabilityZones": Nothing }



newtype PutAutoScalingPolicyInput = PutAutoScalingPolicyInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceGroupId" :: (InstanceGroupId)
  , "AutoScalingPolicy" :: (AutoScalingPolicy)
  }
derive instance newtypePutAutoScalingPolicyInput :: Newtype PutAutoScalingPolicyInput _
derive instance repGenericPutAutoScalingPolicyInput :: Generic PutAutoScalingPolicyInput _
instance showPutAutoScalingPolicyInput :: Show PutAutoScalingPolicyInput where show = genericShow
instance decodePutAutoScalingPolicyInput :: Decode PutAutoScalingPolicyInput where decode = genericDecode options
instance encodePutAutoScalingPolicyInput :: Encode PutAutoScalingPolicyInput where encode = genericEncode options

-- | Constructs PutAutoScalingPolicyInput from required parameters
newPutAutoScalingPolicyInput :: AutoScalingPolicy -> ClusterId -> InstanceGroupId -> PutAutoScalingPolicyInput
newPutAutoScalingPolicyInput _AutoScalingPolicy _ClusterId _InstanceGroupId = PutAutoScalingPolicyInput { "AutoScalingPolicy": _AutoScalingPolicy, "ClusterId": _ClusterId, "InstanceGroupId": _InstanceGroupId }

-- | Constructs PutAutoScalingPolicyInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAutoScalingPolicyInput' :: AutoScalingPolicy -> ClusterId -> InstanceGroupId -> ( { "ClusterId" :: (ClusterId) , "InstanceGroupId" :: (InstanceGroupId) , "AutoScalingPolicy" :: (AutoScalingPolicy) } -> {"ClusterId" :: (ClusterId) , "InstanceGroupId" :: (InstanceGroupId) , "AutoScalingPolicy" :: (AutoScalingPolicy) } ) -> PutAutoScalingPolicyInput
newPutAutoScalingPolicyInput' _AutoScalingPolicy _ClusterId _InstanceGroupId customize = (PutAutoScalingPolicyInput <<< customize) { "AutoScalingPolicy": _AutoScalingPolicy, "ClusterId": _ClusterId, "InstanceGroupId": _InstanceGroupId }



newtype PutAutoScalingPolicyOutput = PutAutoScalingPolicyOutput 
  { "ClusterId" :: Maybe (ClusterId)
  , "InstanceGroupId" :: Maybe (InstanceGroupId)
  , "AutoScalingPolicy" :: Maybe (AutoScalingPolicyDescription)
  }
derive instance newtypePutAutoScalingPolicyOutput :: Newtype PutAutoScalingPolicyOutput _
derive instance repGenericPutAutoScalingPolicyOutput :: Generic PutAutoScalingPolicyOutput _
instance showPutAutoScalingPolicyOutput :: Show PutAutoScalingPolicyOutput where show = genericShow
instance decodePutAutoScalingPolicyOutput :: Decode PutAutoScalingPolicyOutput where decode = genericDecode options
instance encodePutAutoScalingPolicyOutput :: Encode PutAutoScalingPolicyOutput where encode = genericEncode options

-- | Constructs PutAutoScalingPolicyOutput from required parameters
newPutAutoScalingPolicyOutput :: PutAutoScalingPolicyOutput
newPutAutoScalingPolicyOutput  = PutAutoScalingPolicyOutput { "AutoScalingPolicy": Nothing, "ClusterId": Nothing, "InstanceGroupId": Nothing }

-- | Constructs PutAutoScalingPolicyOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPutAutoScalingPolicyOutput' :: ( { "ClusterId" :: Maybe (ClusterId) , "InstanceGroupId" :: Maybe (InstanceGroupId) , "AutoScalingPolicy" :: Maybe (AutoScalingPolicyDescription) } -> {"ClusterId" :: Maybe (ClusterId) , "InstanceGroupId" :: Maybe (InstanceGroupId) , "AutoScalingPolicy" :: Maybe (AutoScalingPolicyDescription) } ) -> PutAutoScalingPolicyOutput
newPutAutoScalingPolicyOutput'  customize = (PutAutoScalingPolicyOutput <<< customize) { "AutoScalingPolicy": Nothing, "ClusterId": Nothing, "InstanceGroupId": Nothing }



newtype RemoveAutoScalingPolicyInput = RemoveAutoScalingPolicyInput 
  { "ClusterId" :: (ClusterId)
  , "InstanceGroupId" :: (InstanceGroupId)
  }
derive instance newtypeRemoveAutoScalingPolicyInput :: Newtype RemoveAutoScalingPolicyInput _
derive instance repGenericRemoveAutoScalingPolicyInput :: Generic RemoveAutoScalingPolicyInput _
instance showRemoveAutoScalingPolicyInput :: Show RemoveAutoScalingPolicyInput where show = genericShow
instance decodeRemoveAutoScalingPolicyInput :: Decode RemoveAutoScalingPolicyInput where decode = genericDecode options
instance encodeRemoveAutoScalingPolicyInput :: Encode RemoveAutoScalingPolicyInput where encode = genericEncode options

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
instance showRemoveAutoScalingPolicyOutput :: Show RemoveAutoScalingPolicyOutput where show = genericShow
instance decodeRemoveAutoScalingPolicyOutput :: Decode RemoveAutoScalingPolicyOutput where decode = genericDecode options
instance encodeRemoveAutoScalingPolicyOutput :: Encode RemoveAutoScalingPolicyOutput where encode = genericEncode options



-- | <p>This input identifies a cluster and a list of tags to remove.</p>
newtype RemoveTagsInput = RemoveTagsInput 
  { "ResourceId" :: (ResourceId)
  , "TagKeys" :: (StringList)
  }
derive instance newtypeRemoveTagsInput :: Newtype RemoveTagsInput _
derive instance repGenericRemoveTagsInput :: Generic RemoveTagsInput _
instance showRemoveTagsInput :: Show RemoveTagsInput where show = genericShow
instance decodeRemoveTagsInput :: Decode RemoveTagsInput where decode = genericDecode options
instance encodeRemoveTagsInput :: Encode RemoveTagsInput where encode = genericEncode options

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
instance showRemoveTagsOutput :: Show RemoveTagsOutput where show = genericShow
instance decodeRemoveTagsOutput :: Decode RemoveTagsOutput where decode = genericDecode options
instance encodeRemoveTagsOutput :: Encode RemoveTagsOutput where encode = genericEncode options



newtype RepoUpgradeOnBoot = RepoUpgradeOnBoot String
derive instance newtypeRepoUpgradeOnBoot :: Newtype RepoUpgradeOnBoot _
derive instance repGenericRepoUpgradeOnBoot :: Generic RepoUpgradeOnBoot _
instance showRepoUpgradeOnBoot :: Show RepoUpgradeOnBoot where show = genericShow
instance decodeRepoUpgradeOnBoot :: Decode RepoUpgradeOnBoot where decode = genericDecode options
instance encodeRepoUpgradeOnBoot :: Encode RepoUpgradeOnBoot where encode = genericEncode options



newtype ResourceId = ResourceId String
derive instance newtypeResourceId :: Newtype ResourceId _
derive instance repGenericResourceId :: Generic ResourceId _
instance showResourceId :: Show ResourceId where show = genericShow
instance decodeResourceId :: Decode ResourceId where decode = genericDecode options
instance encodeResourceId :: Encode ResourceId where encode = genericEncode options



-- | <p> Input to the <a>RunJobFlow</a> operation. </p>
newtype RunJobFlowInput = RunJobFlowInput 
  { "Name" :: (XmlStringMaxLen256)
  , "LogUri" :: Maybe (XmlString)
  , "AdditionalInfo" :: Maybe (XmlString)
  , "AmiVersion" :: Maybe (XmlStringMaxLen256)
  , "ReleaseLabel" :: Maybe (XmlStringMaxLen256)
  , "Instances" :: (JobFlowInstancesConfig)
  , "Steps" :: Maybe (StepConfigList)
  , "BootstrapActions" :: Maybe (BootstrapActionConfigList)
  , "SupportedProducts" :: Maybe (SupportedProductsList)
  , "NewSupportedProducts" :: Maybe (NewSupportedProductsList)
  , "Applications" :: Maybe (ApplicationList)
  , "Configurations" :: Maybe (ConfigurationList)
  , "VisibleToAllUsers" :: Maybe (Boolean)
  , "JobFlowRole" :: Maybe (XmlString)
  , "ServiceRole" :: Maybe (XmlString)
  , "Tags" :: Maybe (TagList)
  , "SecurityConfiguration" :: Maybe (XmlString)
  , "AutoScalingRole" :: Maybe (XmlString)
  , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior)
  , "CustomAmiId" :: Maybe (XmlStringMaxLen256)
  , "EbsRootVolumeSize" :: Maybe (Int)
  , "RepoUpgradeOnBoot" :: Maybe (RepoUpgradeOnBoot)
  , "KerberosAttributes" :: Maybe (KerberosAttributes)
  }
derive instance newtypeRunJobFlowInput :: Newtype RunJobFlowInput _
derive instance repGenericRunJobFlowInput :: Generic RunJobFlowInput _
instance showRunJobFlowInput :: Show RunJobFlowInput where show = genericShow
instance decodeRunJobFlowInput :: Decode RunJobFlowInput where decode = genericDecode options
instance encodeRunJobFlowInput :: Encode RunJobFlowInput where encode = genericEncode options

-- | Constructs RunJobFlowInput from required parameters
newRunJobFlowInput :: JobFlowInstancesConfig -> XmlStringMaxLen256 -> RunJobFlowInput
newRunJobFlowInput _Instances _Name = RunJobFlowInput { "Instances": _Instances, "Name": _Name, "AdditionalInfo": Nothing, "AmiVersion": Nothing, "Applications": Nothing, "AutoScalingRole": Nothing, "BootstrapActions": Nothing, "Configurations": Nothing, "CustomAmiId": Nothing, "EbsRootVolumeSize": Nothing, "JobFlowRole": Nothing, "KerberosAttributes": Nothing, "LogUri": Nothing, "NewSupportedProducts": Nothing, "ReleaseLabel": Nothing, "RepoUpgradeOnBoot": Nothing, "ScaleDownBehavior": Nothing, "SecurityConfiguration": Nothing, "ServiceRole": Nothing, "Steps": Nothing, "SupportedProducts": Nothing, "Tags": Nothing, "VisibleToAllUsers": Nothing }

-- | Constructs RunJobFlowInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunJobFlowInput' :: JobFlowInstancesConfig -> XmlStringMaxLen256 -> ( { "Name" :: (XmlStringMaxLen256) , "LogUri" :: Maybe (XmlString) , "AdditionalInfo" :: Maybe (XmlString) , "AmiVersion" :: Maybe (XmlStringMaxLen256) , "ReleaseLabel" :: Maybe (XmlStringMaxLen256) , "Instances" :: (JobFlowInstancesConfig) , "Steps" :: Maybe (StepConfigList) , "BootstrapActions" :: Maybe (BootstrapActionConfigList) , "SupportedProducts" :: Maybe (SupportedProductsList) , "NewSupportedProducts" :: Maybe (NewSupportedProductsList) , "Applications" :: Maybe (ApplicationList) , "Configurations" :: Maybe (ConfigurationList) , "VisibleToAllUsers" :: Maybe (Boolean) , "JobFlowRole" :: Maybe (XmlString) , "ServiceRole" :: Maybe (XmlString) , "Tags" :: Maybe (TagList) , "SecurityConfiguration" :: Maybe (XmlString) , "AutoScalingRole" :: Maybe (XmlString) , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior) , "CustomAmiId" :: Maybe (XmlStringMaxLen256) , "EbsRootVolumeSize" :: Maybe (Int) , "RepoUpgradeOnBoot" :: Maybe (RepoUpgradeOnBoot) , "KerberosAttributes" :: Maybe (KerberosAttributes) } -> {"Name" :: (XmlStringMaxLen256) , "LogUri" :: Maybe (XmlString) , "AdditionalInfo" :: Maybe (XmlString) , "AmiVersion" :: Maybe (XmlStringMaxLen256) , "ReleaseLabel" :: Maybe (XmlStringMaxLen256) , "Instances" :: (JobFlowInstancesConfig) , "Steps" :: Maybe (StepConfigList) , "BootstrapActions" :: Maybe (BootstrapActionConfigList) , "SupportedProducts" :: Maybe (SupportedProductsList) , "NewSupportedProducts" :: Maybe (NewSupportedProductsList) , "Applications" :: Maybe (ApplicationList) , "Configurations" :: Maybe (ConfigurationList) , "VisibleToAllUsers" :: Maybe (Boolean) , "JobFlowRole" :: Maybe (XmlString) , "ServiceRole" :: Maybe (XmlString) , "Tags" :: Maybe (TagList) , "SecurityConfiguration" :: Maybe (XmlString) , "AutoScalingRole" :: Maybe (XmlString) , "ScaleDownBehavior" :: Maybe (ScaleDownBehavior) , "CustomAmiId" :: Maybe (XmlStringMaxLen256) , "EbsRootVolumeSize" :: Maybe (Int) , "RepoUpgradeOnBoot" :: Maybe (RepoUpgradeOnBoot) , "KerberosAttributes" :: Maybe (KerberosAttributes) } ) -> RunJobFlowInput
newRunJobFlowInput' _Instances _Name customize = (RunJobFlowInput <<< customize) { "Instances": _Instances, "Name": _Name, "AdditionalInfo": Nothing, "AmiVersion": Nothing, "Applications": Nothing, "AutoScalingRole": Nothing, "BootstrapActions": Nothing, "Configurations": Nothing, "CustomAmiId": Nothing, "EbsRootVolumeSize": Nothing, "JobFlowRole": Nothing, "KerberosAttributes": Nothing, "LogUri": Nothing, "NewSupportedProducts": Nothing, "ReleaseLabel": Nothing, "RepoUpgradeOnBoot": Nothing, "ScaleDownBehavior": Nothing, "SecurityConfiguration": Nothing, "ServiceRole": Nothing, "Steps": Nothing, "SupportedProducts": Nothing, "Tags": Nothing, "VisibleToAllUsers": Nothing }



-- | <p> The result of the <a>RunJobFlow</a> operation. </p>
newtype RunJobFlowOutput = RunJobFlowOutput 
  { "JobFlowId" :: Maybe (XmlStringMaxLen256)
  }
derive instance newtypeRunJobFlowOutput :: Newtype RunJobFlowOutput _
derive instance repGenericRunJobFlowOutput :: Generic RunJobFlowOutput _
instance showRunJobFlowOutput :: Show RunJobFlowOutput where show = genericShow
instance decodeRunJobFlowOutput :: Decode RunJobFlowOutput where decode = genericDecode options
instance encodeRunJobFlowOutput :: Encode RunJobFlowOutput where encode = genericEncode options

-- | Constructs RunJobFlowOutput from required parameters
newRunJobFlowOutput :: RunJobFlowOutput
newRunJobFlowOutput  = RunJobFlowOutput { "JobFlowId": Nothing }

-- | Constructs RunJobFlowOutput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRunJobFlowOutput' :: ( { "JobFlowId" :: Maybe (XmlStringMaxLen256) } -> {"JobFlowId" :: Maybe (XmlStringMaxLen256) } ) -> RunJobFlowOutput
newRunJobFlowOutput'  customize = (RunJobFlowOutput <<< customize) { "JobFlowId": Nothing }



newtype ScaleDownBehavior = ScaleDownBehavior String
derive instance newtypeScaleDownBehavior :: Newtype ScaleDownBehavior _
derive instance repGenericScaleDownBehavior :: Generic ScaleDownBehavior _
instance showScaleDownBehavior :: Show ScaleDownBehavior where show = genericShow
instance decodeScaleDownBehavior :: Decode ScaleDownBehavior where decode = genericDecode options
instance encodeScaleDownBehavior :: Encode ScaleDownBehavior where encode = genericEncode options



-- | <p>The type of adjustment the automatic scaling activity makes when triggered, and the periodicity of the adjustment.</p>
newtype ScalingAction = ScalingAction 
  { "Market" :: Maybe (MarketType)
  , "SimpleScalingPolicyConfiguration" :: (SimpleScalingPolicyConfiguration)
  }
derive instance newtypeScalingAction :: Newtype ScalingAction _
derive instance repGenericScalingAction :: Generic ScalingAction _
instance showScalingAction :: Show ScalingAction where show = genericShow
instance decodeScalingAction :: Decode ScalingAction where decode = genericDecode options
instance encodeScalingAction :: Encode ScalingAction where encode = genericEncode options

-- | Constructs ScalingAction from required parameters
newScalingAction :: SimpleScalingPolicyConfiguration -> ScalingAction
newScalingAction _SimpleScalingPolicyConfiguration = ScalingAction { "SimpleScalingPolicyConfiguration": _SimpleScalingPolicyConfiguration, "Market": Nothing }

-- | Constructs ScalingAction's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingAction' :: SimpleScalingPolicyConfiguration -> ( { "Market" :: Maybe (MarketType) , "SimpleScalingPolicyConfiguration" :: (SimpleScalingPolicyConfiguration) } -> {"Market" :: Maybe (MarketType) , "SimpleScalingPolicyConfiguration" :: (SimpleScalingPolicyConfiguration) } ) -> ScalingAction
newScalingAction' _SimpleScalingPolicyConfiguration customize = (ScalingAction <<< customize) { "SimpleScalingPolicyConfiguration": _SimpleScalingPolicyConfiguration, "Market": Nothing }



-- | <p>The upper and lower EC2 instance limits for an automatic scaling policy. Automatic scaling activities triggered by automatic scaling rules will not cause an instance group to grow above or below these limits.</p>
newtype ScalingConstraints = ScalingConstraints 
  { "MinCapacity" :: (Int)
  , "MaxCapacity" :: (Int)
  }
derive instance newtypeScalingConstraints :: Newtype ScalingConstraints _
derive instance repGenericScalingConstraints :: Generic ScalingConstraints _
instance showScalingConstraints :: Show ScalingConstraints where show = genericShow
instance decodeScalingConstraints :: Decode ScalingConstraints where decode = genericDecode options
instance encodeScalingConstraints :: Encode ScalingConstraints where encode = genericEncode options

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
  , "Description" :: Maybe (String)
  , "Action" :: (ScalingAction)
  , "Trigger" :: (ScalingTrigger)
  }
derive instance newtypeScalingRule :: Newtype ScalingRule _
derive instance repGenericScalingRule :: Generic ScalingRule _
instance showScalingRule :: Show ScalingRule where show = genericShow
instance decodeScalingRule :: Decode ScalingRule where decode = genericDecode options
instance encodeScalingRule :: Encode ScalingRule where encode = genericEncode options

-- | Constructs ScalingRule from required parameters
newScalingRule :: ScalingAction -> String -> ScalingTrigger -> ScalingRule
newScalingRule _Action _Name _Trigger = ScalingRule { "Action": _Action, "Name": _Name, "Trigger": _Trigger, "Description": Nothing }

-- | Constructs ScalingRule's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScalingRule' :: ScalingAction -> String -> ScalingTrigger -> ( { "Name" :: (String) , "Description" :: Maybe (String) , "Action" :: (ScalingAction) , "Trigger" :: (ScalingTrigger) } -> {"Name" :: (String) , "Description" :: Maybe (String) , "Action" :: (ScalingAction) , "Trigger" :: (ScalingTrigger) } ) -> ScalingRule
newScalingRule' _Action _Name _Trigger customize = (ScalingRule <<< customize) { "Action": _Action, "Name": _Name, "Trigger": _Trigger, "Description": Nothing }



newtype ScalingRuleList = ScalingRuleList (Array ScalingRule)
derive instance newtypeScalingRuleList :: Newtype ScalingRuleList _
derive instance repGenericScalingRuleList :: Generic ScalingRuleList _
instance showScalingRuleList :: Show ScalingRuleList where show = genericShow
instance decodeScalingRuleList :: Decode ScalingRuleList where decode = genericDecode options
instance encodeScalingRuleList :: Encode ScalingRuleList where encode = genericEncode options



-- | <p>The conditions that trigger an automatic scaling activity.</p>
newtype ScalingTrigger = ScalingTrigger 
  { "CloudWatchAlarmDefinition" :: (CloudWatchAlarmDefinition)
  }
derive instance newtypeScalingTrigger :: Newtype ScalingTrigger _
derive instance repGenericScalingTrigger :: Generic ScalingTrigger _
instance showScalingTrigger :: Show ScalingTrigger where show = genericShow
instance decodeScalingTrigger :: Decode ScalingTrigger where decode = genericDecode options
instance encodeScalingTrigger :: Encode ScalingTrigger where encode = genericEncode options

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
  , "Args" :: Maybe (XmlStringList)
  }
derive instance newtypeScriptBootstrapActionConfig :: Newtype ScriptBootstrapActionConfig _
derive instance repGenericScriptBootstrapActionConfig :: Generic ScriptBootstrapActionConfig _
instance showScriptBootstrapActionConfig :: Show ScriptBootstrapActionConfig where show = genericShow
instance decodeScriptBootstrapActionConfig :: Decode ScriptBootstrapActionConfig where decode = genericDecode options
instance encodeScriptBootstrapActionConfig :: Encode ScriptBootstrapActionConfig where encode = genericEncode options

-- | Constructs ScriptBootstrapActionConfig from required parameters
newScriptBootstrapActionConfig :: XmlString -> ScriptBootstrapActionConfig
newScriptBootstrapActionConfig _Path = ScriptBootstrapActionConfig { "Path": _Path, "Args": Nothing }

-- | Constructs ScriptBootstrapActionConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newScriptBootstrapActionConfig' :: XmlString -> ( { "Path" :: (XmlString) , "Args" :: Maybe (XmlStringList) } -> {"Path" :: (XmlString) , "Args" :: Maybe (XmlStringList) } ) -> ScriptBootstrapActionConfig
newScriptBootstrapActionConfig' _Path customize = (ScriptBootstrapActionConfig <<< customize) { "Path": _Path, "Args": Nothing }



newtype SecurityConfigurationList = SecurityConfigurationList (Array SecurityConfigurationSummary)
derive instance newtypeSecurityConfigurationList :: Newtype SecurityConfigurationList _
derive instance repGenericSecurityConfigurationList :: Generic SecurityConfigurationList _
instance showSecurityConfigurationList :: Show SecurityConfigurationList where show = genericShow
instance decodeSecurityConfigurationList :: Decode SecurityConfigurationList where decode = genericDecode options
instance encodeSecurityConfigurationList :: Encode SecurityConfigurationList where encode = genericEncode options



-- | <p>The creation date and time, and name, of a security configuration.</p>
newtype SecurityConfigurationSummary = SecurityConfigurationSummary 
  { "Name" :: Maybe (XmlString)
  , "CreationDateTime" :: Maybe (Date)
  }
derive instance newtypeSecurityConfigurationSummary :: Newtype SecurityConfigurationSummary _
derive instance repGenericSecurityConfigurationSummary :: Generic SecurityConfigurationSummary _
instance showSecurityConfigurationSummary :: Show SecurityConfigurationSummary where show = genericShow
instance decodeSecurityConfigurationSummary :: Decode SecurityConfigurationSummary where decode = genericDecode options
instance encodeSecurityConfigurationSummary :: Encode SecurityConfigurationSummary where encode = genericEncode options

-- | Constructs SecurityConfigurationSummary from required parameters
newSecurityConfigurationSummary :: SecurityConfigurationSummary
newSecurityConfigurationSummary  = SecurityConfigurationSummary { "CreationDateTime": Nothing, "Name": Nothing }

-- | Constructs SecurityConfigurationSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSecurityConfigurationSummary' :: ( { "Name" :: Maybe (XmlString) , "CreationDateTime" :: Maybe (Date) } -> {"Name" :: Maybe (XmlString) , "CreationDateTime" :: Maybe (Date) } ) -> SecurityConfigurationSummary
newSecurityConfigurationSummary'  customize = (SecurityConfigurationSummary <<< customize) { "CreationDateTime": Nothing, "Name": Nothing }



newtype SecurityGroupsList = SecurityGroupsList (Array XmlStringMaxLen256)
derive instance newtypeSecurityGroupsList :: Newtype SecurityGroupsList _
derive instance repGenericSecurityGroupsList :: Generic SecurityGroupsList _
instance showSecurityGroupsList :: Show SecurityGroupsList where show = genericShow
instance decodeSecurityGroupsList :: Decode SecurityGroupsList where decode = genericDecode options
instance encodeSecurityGroupsList :: Encode SecurityGroupsList where encode = genericEncode options



-- | <p> The input argument to the <a>TerminationProtection</a> operation. </p>
newtype SetTerminationProtectionInput = SetTerminationProtectionInput 
  { "JobFlowIds" :: (XmlStringList)
  , "TerminationProtected" :: (Boolean)
  }
derive instance newtypeSetTerminationProtectionInput :: Newtype SetTerminationProtectionInput _
derive instance repGenericSetTerminationProtectionInput :: Generic SetTerminationProtectionInput _
instance showSetTerminationProtectionInput :: Show SetTerminationProtectionInput where show = genericShow
instance decodeSetTerminationProtectionInput :: Decode SetTerminationProtectionInput where decode = genericDecode options
instance encodeSetTerminationProtectionInput :: Encode SetTerminationProtectionInput where encode = genericEncode options

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
instance showSetVisibleToAllUsersInput :: Show SetVisibleToAllUsersInput where show = genericShow
instance decodeSetVisibleToAllUsersInput :: Decode SetVisibleToAllUsersInput where decode = genericDecode options
instance encodeSetVisibleToAllUsersInput :: Encode SetVisibleToAllUsersInput where encode = genericEncode options

-- | Constructs SetVisibleToAllUsersInput from required parameters
newSetVisibleToAllUsersInput :: XmlStringList -> Boolean -> SetVisibleToAllUsersInput
newSetVisibleToAllUsersInput _JobFlowIds _VisibleToAllUsers = SetVisibleToAllUsersInput { "JobFlowIds": _JobFlowIds, "VisibleToAllUsers": _VisibleToAllUsers }

-- | Constructs SetVisibleToAllUsersInput's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSetVisibleToAllUsersInput' :: XmlStringList -> Boolean -> ( { "JobFlowIds" :: (XmlStringList) , "VisibleToAllUsers" :: (Boolean) } -> {"JobFlowIds" :: (XmlStringList) , "VisibleToAllUsers" :: (Boolean) } ) -> SetVisibleToAllUsersInput
newSetVisibleToAllUsersInput' _JobFlowIds _VisibleToAllUsers customize = (SetVisibleToAllUsersInput <<< customize) { "JobFlowIds": _JobFlowIds, "VisibleToAllUsers": _VisibleToAllUsers }



-- | <p>Policy for customizing shrink operations. Allows configuration of decommissioning timeout and targeted instance shrinking.</p>
newtype ShrinkPolicy = ShrinkPolicy 
  { "DecommissionTimeout" :: Maybe (Int)
  , "InstanceResizePolicy" :: Maybe (InstanceResizePolicy)
  }
derive instance newtypeShrinkPolicy :: Newtype ShrinkPolicy _
derive instance repGenericShrinkPolicy :: Generic ShrinkPolicy _
instance showShrinkPolicy :: Show ShrinkPolicy where show = genericShow
instance decodeShrinkPolicy :: Decode ShrinkPolicy where decode = genericDecode options
instance encodeShrinkPolicy :: Encode ShrinkPolicy where encode = genericEncode options

-- | Constructs ShrinkPolicy from required parameters
newShrinkPolicy :: ShrinkPolicy
newShrinkPolicy  = ShrinkPolicy { "DecommissionTimeout": Nothing, "InstanceResizePolicy": Nothing }

-- | Constructs ShrinkPolicy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newShrinkPolicy' :: ( { "DecommissionTimeout" :: Maybe (Int) , "InstanceResizePolicy" :: Maybe (InstanceResizePolicy) } -> {"DecommissionTimeout" :: Maybe (Int) , "InstanceResizePolicy" :: Maybe (InstanceResizePolicy) } ) -> ShrinkPolicy
newShrinkPolicy'  customize = (ShrinkPolicy <<< customize) { "DecommissionTimeout": Nothing, "InstanceResizePolicy": Nothing }



-- | <p>An automatic scaling configuration, which describes how the policy adds or removes instances, the cooldown period, and the number of EC2 instances that will be added each time the CloudWatch metric alarm condition is satisfied.</p>
newtype SimpleScalingPolicyConfiguration = SimpleScalingPolicyConfiguration 
  { "AdjustmentType" :: Maybe (AdjustmentType)
  , "ScalingAdjustment" :: (Int)
  , "CoolDown" :: Maybe (Int)
  }
derive instance newtypeSimpleScalingPolicyConfiguration :: Newtype SimpleScalingPolicyConfiguration _
derive instance repGenericSimpleScalingPolicyConfiguration :: Generic SimpleScalingPolicyConfiguration _
instance showSimpleScalingPolicyConfiguration :: Show SimpleScalingPolicyConfiguration where show = genericShow
instance decodeSimpleScalingPolicyConfiguration :: Decode SimpleScalingPolicyConfiguration where decode = genericDecode options
instance encodeSimpleScalingPolicyConfiguration :: Encode SimpleScalingPolicyConfiguration where encode = genericEncode options

-- | Constructs SimpleScalingPolicyConfiguration from required parameters
newSimpleScalingPolicyConfiguration :: Int -> SimpleScalingPolicyConfiguration
newSimpleScalingPolicyConfiguration _ScalingAdjustment = SimpleScalingPolicyConfiguration { "ScalingAdjustment": _ScalingAdjustment, "AdjustmentType": Nothing, "CoolDown": Nothing }

-- | Constructs SimpleScalingPolicyConfiguration's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSimpleScalingPolicyConfiguration' :: Int -> ( { "AdjustmentType" :: Maybe (AdjustmentType) , "ScalingAdjustment" :: (Int) , "CoolDown" :: Maybe (Int) } -> {"AdjustmentType" :: Maybe (AdjustmentType) , "ScalingAdjustment" :: (Int) , "CoolDown" :: Maybe (Int) } ) -> SimpleScalingPolicyConfiguration
newSimpleScalingPolicyConfiguration' _ScalingAdjustment customize = (SimpleScalingPolicyConfiguration <<< customize) { "ScalingAdjustment": _ScalingAdjustment, "AdjustmentType": Nothing, "CoolDown": Nothing }



-- | <p>The launch specification for Spot instances in the instance fleet, which determines the defined duration and provisioning timeout behavior.</p> <note> <p>The instance fleet configuration is available only in Amazon EMR versions 4.8.0 and later, excluding 5.0.x versions.</p> </note>
newtype SpotProvisioningSpecification = SpotProvisioningSpecification 
  { "TimeoutDurationMinutes" :: (WholeNumber)
  , "TimeoutAction" :: (SpotProvisioningTimeoutAction)
  , "BlockDurationMinutes" :: Maybe (WholeNumber)
  }
derive instance newtypeSpotProvisioningSpecification :: Newtype SpotProvisioningSpecification _
derive instance repGenericSpotProvisioningSpecification :: Generic SpotProvisioningSpecification _
instance showSpotProvisioningSpecification :: Show SpotProvisioningSpecification where show = genericShow
instance decodeSpotProvisioningSpecification :: Decode SpotProvisioningSpecification where decode = genericDecode options
instance encodeSpotProvisioningSpecification :: Encode SpotProvisioningSpecification where encode = genericEncode options

-- | Constructs SpotProvisioningSpecification from required parameters
newSpotProvisioningSpecification :: SpotProvisioningTimeoutAction -> WholeNumber -> SpotProvisioningSpecification
newSpotProvisioningSpecification _TimeoutAction _TimeoutDurationMinutes = SpotProvisioningSpecification { "TimeoutAction": _TimeoutAction, "TimeoutDurationMinutes": _TimeoutDurationMinutes, "BlockDurationMinutes": Nothing }

-- | Constructs SpotProvisioningSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSpotProvisioningSpecification' :: SpotProvisioningTimeoutAction -> WholeNumber -> ( { "TimeoutDurationMinutes" :: (WholeNumber) , "TimeoutAction" :: (SpotProvisioningTimeoutAction) , "BlockDurationMinutes" :: Maybe (WholeNumber) } -> {"TimeoutDurationMinutes" :: (WholeNumber) , "TimeoutAction" :: (SpotProvisioningTimeoutAction) , "BlockDurationMinutes" :: Maybe (WholeNumber) } ) -> SpotProvisioningSpecification
newSpotProvisioningSpecification' _TimeoutAction _TimeoutDurationMinutes customize = (SpotProvisioningSpecification <<< customize) { "TimeoutAction": _TimeoutAction, "TimeoutDurationMinutes": _TimeoutDurationMinutes, "BlockDurationMinutes": Nothing }



newtype SpotProvisioningTimeoutAction = SpotProvisioningTimeoutAction String
derive instance newtypeSpotProvisioningTimeoutAction :: Newtype SpotProvisioningTimeoutAction _
derive instance repGenericSpotProvisioningTimeoutAction :: Generic SpotProvisioningTimeoutAction _
instance showSpotProvisioningTimeoutAction :: Show SpotProvisioningTimeoutAction where show = genericShow
instance decodeSpotProvisioningTimeoutAction :: Decode SpotProvisioningTimeoutAction where decode = genericDecode options
instance encodeSpotProvisioningTimeoutAction :: Encode SpotProvisioningTimeoutAction where encode = genericEncode options



newtype Statistic = Statistic String
derive instance newtypeStatistic :: Newtype Statistic _
derive instance repGenericStatistic :: Generic Statistic _
instance showStatistic :: Show Statistic where show = genericShow
instance decodeStatistic :: Decode Statistic where decode = genericDecode options
instance encodeStatistic :: Encode Statistic where encode = genericEncode options



-- | <p>This represents a step in a cluster.</p>
newtype Step = Step 
  { "Id" :: Maybe (StepId)
  , "Name" :: Maybe (String)
  , "Config" :: Maybe (HadoopStepConfig)
  , "ActionOnFailure" :: Maybe (ActionOnFailure)
  , "Status" :: Maybe (StepStatus)
  }
derive instance newtypeStep :: Newtype Step _
derive instance repGenericStep :: Generic Step _
instance showStep :: Show Step where show = genericShow
instance decodeStep :: Decode Step where decode = genericDecode options
instance encodeStep :: Encode Step where encode = genericEncode options

-- | Constructs Step from required parameters
newStep :: Step
newStep  = Step { "ActionOnFailure": Nothing, "Config": Nothing, "Id": Nothing, "Name": Nothing, "Status": Nothing }

-- | Constructs Step's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStep' :: ( { "Id" :: Maybe (StepId) , "Name" :: Maybe (String) , "Config" :: Maybe (HadoopStepConfig) , "ActionOnFailure" :: Maybe (ActionOnFailure) , "Status" :: Maybe (StepStatus) } -> {"Id" :: Maybe (StepId) , "Name" :: Maybe (String) , "Config" :: Maybe (HadoopStepConfig) , "ActionOnFailure" :: Maybe (ActionOnFailure) , "Status" :: Maybe (StepStatus) } ) -> Step
newStep'  customize = (Step <<< customize) { "ActionOnFailure": Nothing, "Config": Nothing, "Id": Nothing, "Name": Nothing, "Status": Nothing }



-- | <p>Specification of a cluster (job flow) step.</p>
newtype StepConfig = StepConfig 
  { "Name" :: (XmlStringMaxLen256)
  , "ActionOnFailure" :: Maybe (ActionOnFailure)
  , "HadoopJarStep" :: (HadoopJarStepConfig)
  }
derive instance newtypeStepConfig :: Newtype StepConfig _
derive instance repGenericStepConfig :: Generic StepConfig _
instance showStepConfig :: Show StepConfig where show = genericShow
instance decodeStepConfig :: Decode StepConfig where decode = genericDecode options
instance encodeStepConfig :: Encode StepConfig where encode = genericEncode options

-- | Constructs StepConfig from required parameters
newStepConfig :: HadoopJarStepConfig -> XmlStringMaxLen256 -> StepConfig
newStepConfig _HadoopJarStep _Name = StepConfig { "HadoopJarStep": _HadoopJarStep, "Name": _Name, "ActionOnFailure": Nothing }

-- | Constructs StepConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepConfig' :: HadoopJarStepConfig -> XmlStringMaxLen256 -> ( { "Name" :: (XmlStringMaxLen256) , "ActionOnFailure" :: Maybe (ActionOnFailure) , "HadoopJarStep" :: (HadoopJarStepConfig) } -> {"Name" :: (XmlStringMaxLen256) , "ActionOnFailure" :: Maybe (ActionOnFailure) , "HadoopJarStep" :: (HadoopJarStepConfig) } ) -> StepConfig
newStepConfig' _HadoopJarStep _Name customize = (StepConfig <<< customize) { "HadoopJarStep": _HadoopJarStep, "Name": _Name, "ActionOnFailure": Nothing }



newtype StepConfigList = StepConfigList (Array StepConfig)
derive instance newtypeStepConfigList :: Newtype StepConfigList _
derive instance repGenericStepConfigList :: Generic StepConfigList _
instance showStepConfigList :: Show StepConfigList where show = genericShow
instance decodeStepConfigList :: Decode StepConfigList where decode = genericDecode options
instance encodeStepConfigList :: Encode StepConfigList where encode = genericEncode options



-- | <p>Combines the execution state and configuration of a step.</p>
newtype StepDetail = StepDetail 
  { "StepConfig" :: (StepConfig)
  , "ExecutionStatusDetail" :: (StepExecutionStatusDetail)
  }
derive instance newtypeStepDetail :: Newtype StepDetail _
derive instance repGenericStepDetail :: Generic StepDetail _
instance showStepDetail :: Show StepDetail where show = genericShow
instance decodeStepDetail :: Decode StepDetail where decode = genericDecode options
instance encodeStepDetail :: Encode StepDetail where encode = genericEncode options

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
instance showStepDetailList :: Show StepDetailList where show = genericShow
instance decodeStepDetailList :: Decode StepDetailList where decode = genericDecode options
instance encodeStepDetailList :: Encode StepDetailList where encode = genericEncode options



newtype StepExecutionState = StepExecutionState String
derive instance newtypeStepExecutionState :: Newtype StepExecutionState _
derive instance repGenericStepExecutionState :: Generic StepExecutionState _
instance showStepExecutionState :: Show StepExecutionState where show = genericShow
instance decodeStepExecutionState :: Decode StepExecutionState where decode = genericDecode options
instance encodeStepExecutionState :: Encode StepExecutionState where encode = genericEncode options



-- | <p>The execution state of a step.</p>
newtype StepExecutionStatusDetail = StepExecutionStatusDetail 
  { "State" :: (StepExecutionState)
  , "CreationDateTime" :: (Date)
  , "StartDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  , "LastStateChangeReason" :: Maybe (XmlString)
  }
derive instance newtypeStepExecutionStatusDetail :: Newtype StepExecutionStatusDetail _
derive instance repGenericStepExecutionStatusDetail :: Generic StepExecutionStatusDetail _
instance showStepExecutionStatusDetail :: Show StepExecutionStatusDetail where show = genericShow
instance decodeStepExecutionStatusDetail :: Decode StepExecutionStatusDetail where decode = genericDecode options
instance encodeStepExecutionStatusDetail :: Encode StepExecutionStatusDetail where encode = genericEncode options

-- | Constructs StepExecutionStatusDetail from required parameters
newStepExecutionStatusDetail :: Date -> StepExecutionState -> StepExecutionStatusDetail
newStepExecutionStatusDetail _CreationDateTime _State = StepExecutionStatusDetail { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": Nothing, "LastStateChangeReason": Nothing, "StartDateTime": Nothing }

-- | Constructs StepExecutionStatusDetail's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepExecutionStatusDetail' :: Date -> StepExecutionState -> ( { "State" :: (StepExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) , "LastStateChangeReason" :: Maybe (XmlString) } -> {"State" :: (StepExecutionState) , "CreationDateTime" :: (Date) , "StartDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) , "LastStateChangeReason" :: Maybe (XmlString) } ) -> StepExecutionStatusDetail
newStepExecutionStatusDetail' _CreationDateTime _State customize = (StepExecutionStatusDetail <<< customize) { "CreationDateTime": _CreationDateTime, "State": _State, "EndDateTime": Nothing, "LastStateChangeReason": Nothing, "StartDateTime": Nothing }



newtype StepId = StepId String
derive instance newtypeStepId :: Newtype StepId _
derive instance repGenericStepId :: Generic StepId _
instance showStepId :: Show StepId where show = genericShow
instance decodeStepId :: Decode StepId where decode = genericDecode options
instance encodeStepId :: Encode StepId where encode = genericEncode options



newtype StepIdsList = StepIdsList (Array XmlStringMaxLen256)
derive instance newtypeStepIdsList :: Newtype StepIdsList _
derive instance repGenericStepIdsList :: Generic StepIdsList _
instance showStepIdsList :: Show StepIdsList where show = genericShow
instance decodeStepIdsList :: Decode StepIdsList where decode = genericDecode options
instance encodeStepIdsList :: Encode StepIdsList where encode = genericEncode options



newtype StepState = StepState String
derive instance newtypeStepState :: Newtype StepState _
derive instance repGenericStepState :: Generic StepState _
instance showStepState :: Show StepState where show = genericShow
instance decodeStepState :: Decode StepState where decode = genericDecode options
instance encodeStepState :: Encode StepState where encode = genericEncode options



-- | <p>The details of the step state change reason.</p>
newtype StepStateChangeReason = StepStateChangeReason 
  { "Code" :: Maybe (StepStateChangeReasonCode)
  , "Message" :: Maybe (String)
  }
derive instance newtypeStepStateChangeReason :: Newtype StepStateChangeReason _
derive instance repGenericStepStateChangeReason :: Generic StepStateChangeReason _
instance showStepStateChangeReason :: Show StepStateChangeReason where show = genericShow
instance decodeStepStateChangeReason :: Decode StepStateChangeReason where decode = genericDecode options
instance encodeStepStateChangeReason :: Encode StepStateChangeReason where encode = genericEncode options

-- | Constructs StepStateChangeReason from required parameters
newStepStateChangeReason :: StepStateChangeReason
newStepStateChangeReason  = StepStateChangeReason { "Code": Nothing, "Message": Nothing }

-- | Constructs StepStateChangeReason's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepStateChangeReason' :: ( { "Code" :: Maybe (StepStateChangeReasonCode) , "Message" :: Maybe (String) } -> {"Code" :: Maybe (StepStateChangeReasonCode) , "Message" :: Maybe (String) } ) -> StepStateChangeReason
newStepStateChangeReason'  customize = (StepStateChangeReason <<< customize) { "Code": Nothing, "Message": Nothing }



newtype StepStateChangeReasonCode = StepStateChangeReasonCode String
derive instance newtypeStepStateChangeReasonCode :: Newtype StepStateChangeReasonCode _
derive instance repGenericStepStateChangeReasonCode :: Generic StepStateChangeReasonCode _
instance showStepStateChangeReasonCode :: Show StepStateChangeReasonCode where show = genericShow
instance decodeStepStateChangeReasonCode :: Decode StepStateChangeReasonCode where decode = genericDecode options
instance encodeStepStateChangeReasonCode :: Encode StepStateChangeReasonCode where encode = genericEncode options



newtype StepStateList = StepStateList (Array StepState)
derive instance newtypeStepStateList :: Newtype StepStateList _
derive instance repGenericStepStateList :: Generic StepStateList _
instance showStepStateList :: Show StepStateList where show = genericShow
instance decodeStepStateList :: Decode StepStateList where decode = genericDecode options
instance encodeStepStateList :: Encode StepStateList where encode = genericEncode options



-- | <p>The execution status details of the cluster step.</p>
newtype StepStatus = StepStatus 
  { "State" :: Maybe (StepState)
  , "StateChangeReason" :: Maybe (StepStateChangeReason)
  , "FailureDetails" :: Maybe (FailureDetails)
  , "Timeline" :: Maybe (StepTimeline)
  }
derive instance newtypeStepStatus :: Newtype StepStatus _
derive instance repGenericStepStatus :: Generic StepStatus _
instance showStepStatus :: Show StepStatus where show = genericShow
instance decodeStepStatus :: Decode StepStatus where decode = genericDecode options
instance encodeStepStatus :: Encode StepStatus where encode = genericEncode options

-- | Constructs StepStatus from required parameters
newStepStatus :: StepStatus
newStepStatus  = StepStatus { "FailureDetails": Nothing, "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }

-- | Constructs StepStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepStatus' :: ( { "State" :: Maybe (StepState) , "StateChangeReason" :: Maybe (StepStateChangeReason) , "FailureDetails" :: Maybe (FailureDetails) , "Timeline" :: Maybe (StepTimeline) } -> {"State" :: Maybe (StepState) , "StateChangeReason" :: Maybe (StepStateChangeReason) , "FailureDetails" :: Maybe (FailureDetails) , "Timeline" :: Maybe (StepTimeline) } ) -> StepStatus
newStepStatus'  customize = (StepStatus <<< customize) { "FailureDetails": Nothing, "State": Nothing, "StateChangeReason": Nothing, "Timeline": Nothing }



-- | <p>The summary of the cluster step.</p>
newtype StepSummary = StepSummary 
  { "Id" :: Maybe (StepId)
  , "Name" :: Maybe (String)
  , "Config" :: Maybe (HadoopStepConfig)
  , "ActionOnFailure" :: Maybe (ActionOnFailure)
  , "Status" :: Maybe (StepStatus)
  }
derive instance newtypeStepSummary :: Newtype StepSummary _
derive instance repGenericStepSummary :: Generic StepSummary _
instance showStepSummary :: Show StepSummary where show = genericShow
instance decodeStepSummary :: Decode StepSummary where decode = genericDecode options
instance encodeStepSummary :: Encode StepSummary where encode = genericEncode options

-- | Constructs StepSummary from required parameters
newStepSummary :: StepSummary
newStepSummary  = StepSummary { "ActionOnFailure": Nothing, "Config": Nothing, "Id": Nothing, "Name": Nothing, "Status": Nothing }

-- | Constructs StepSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepSummary' :: ( { "Id" :: Maybe (StepId) , "Name" :: Maybe (String) , "Config" :: Maybe (HadoopStepConfig) , "ActionOnFailure" :: Maybe (ActionOnFailure) , "Status" :: Maybe (StepStatus) } -> {"Id" :: Maybe (StepId) , "Name" :: Maybe (String) , "Config" :: Maybe (HadoopStepConfig) , "ActionOnFailure" :: Maybe (ActionOnFailure) , "Status" :: Maybe (StepStatus) } ) -> StepSummary
newStepSummary'  customize = (StepSummary <<< customize) { "ActionOnFailure": Nothing, "Config": Nothing, "Id": Nothing, "Name": Nothing, "Status": Nothing }



newtype StepSummaryList = StepSummaryList (Array StepSummary)
derive instance newtypeStepSummaryList :: Newtype StepSummaryList _
derive instance repGenericStepSummaryList :: Generic StepSummaryList _
instance showStepSummaryList :: Show StepSummaryList where show = genericShow
instance decodeStepSummaryList :: Decode StepSummaryList where decode = genericDecode options
instance encodeStepSummaryList :: Encode StepSummaryList where encode = genericEncode options



-- | <p>The timeline of the cluster step lifecycle.</p>
newtype StepTimeline = StepTimeline 
  { "CreationDateTime" :: Maybe (Date)
  , "StartDateTime" :: Maybe (Date)
  , "EndDateTime" :: Maybe (Date)
  }
derive instance newtypeStepTimeline :: Newtype StepTimeline _
derive instance repGenericStepTimeline :: Generic StepTimeline _
instance showStepTimeline :: Show StepTimeline where show = genericShow
instance decodeStepTimeline :: Decode StepTimeline where decode = genericDecode options
instance encodeStepTimeline :: Encode StepTimeline where encode = genericEncode options

-- | Constructs StepTimeline from required parameters
newStepTimeline :: StepTimeline
newStepTimeline  = StepTimeline { "CreationDateTime": Nothing, "EndDateTime": Nothing, "StartDateTime": Nothing }

-- | Constructs StepTimeline's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newStepTimeline' :: ( { "CreationDateTime" :: Maybe (Date) , "StartDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } -> {"CreationDateTime" :: Maybe (Date) , "StartDateTime" :: Maybe (Date) , "EndDateTime" :: Maybe (Date) } ) -> StepTimeline
newStepTimeline'  customize = (StepTimeline <<< customize) { "CreationDateTime": Nothing, "EndDateTime": Nothing, "StartDateTime": Nothing }



newtype StringList = StringList (Array String)
derive instance newtypeStringList :: Newtype StringList _
derive instance repGenericStringList :: Generic StringList _
instance showStringList :: Show StringList where show = genericShow
instance decodeStringList :: Decode StringList where decode = genericDecode options
instance encodeStringList :: Encode StringList where encode = genericEncode options



newtype StringMap = StringMap (StrMap.StrMap String)
derive instance newtypeStringMap :: Newtype StringMap _
derive instance repGenericStringMap :: Generic StringMap _
instance showStringMap :: Show StringMap where show = genericShow
instance decodeStringMap :: Decode StringMap where decode = genericDecode options
instance encodeStringMap :: Encode StringMap where encode = genericEncode options



-- | <p>The list of supported product configurations which allow user-supplied arguments. EMR accepts these arguments and forwards them to the corresponding installation script as bootstrap action arguments.</p>
newtype SupportedProductConfig = SupportedProductConfig 
  { "Name" :: Maybe (XmlStringMaxLen256)
  , "Args" :: Maybe (XmlStringList)
  }
derive instance newtypeSupportedProductConfig :: Newtype SupportedProductConfig _
derive instance repGenericSupportedProductConfig :: Generic SupportedProductConfig _
instance showSupportedProductConfig :: Show SupportedProductConfig where show = genericShow
instance decodeSupportedProductConfig :: Decode SupportedProductConfig where decode = genericDecode options
instance encodeSupportedProductConfig :: Encode SupportedProductConfig where encode = genericEncode options

-- | Constructs SupportedProductConfig from required parameters
newSupportedProductConfig :: SupportedProductConfig
newSupportedProductConfig  = SupportedProductConfig { "Args": Nothing, "Name": Nothing }

-- | Constructs SupportedProductConfig's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSupportedProductConfig' :: ( { "Name" :: Maybe (XmlStringMaxLen256) , "Args" :: Maybe (XmlStringList) } -> {"Name" :: Maybe (XmlStringMaxLen256) , "Args" :: Maybe (XmlStringList) } ) -> SupportedProductConfig
newSupportedProductConfig'  customize = (SupportedProductConfig <<< customize) { "Args": Nothing, "Name": Nothing }



newtype SupportedProductsList = SupportedProductsList (Array XmlStringMaxLen256)
derive instance newtypeSupportedProductsList :: Newtype SupportedProductsList _
derive instance repGenericSupportedProductsList :: Generic SupportedProductsList _
instance showSupportedProductsList :: Show SupportedProductsList where show = genericShow
instance decodeSupportedProductsList :: Decode SupportedProductsList where decode = genericDecode options
instance encodeSupportedProductsList :: Encode SupportedProductsList where encode = genericEncode options



-- | <p>A key/value pair containing user-defined metadata that you can associate with an Amazon EMR resource. Tags make it easier to associate clusters in various ways, such as grouping clusters to track your Amazon EMR resource allocation costs. For more information, see <a href="http://docs.aws.amazon.com/emr/latest/ManagementGuide/emr-plan-tags.html">Tag Clusters</a>. </p>
newtype Tag = Tag 
  { "Key" :: Maybe (String)
  , "Value" :: Maybe (String)
  }
derive instance newtypeTag :: Newtype Tag _
derive instance repGenericTag :: Generic Tag _
instance showTag :: Show Tag where show = genericShow
instance decodeTag :: Decode Tag where decode = genericDecode options
instance encodeTag :: Encode Tag where encode = genericEncode options

-- | Constructs Tag from required parameters
newTag :: Tag
newTag  = Tag { "Key": Nothing, "Value": Nothing }

-- | Constructs Tag's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTag' :: ( { "Key" :: Maybe (String) , "Value" :: Maybe (String) } -> {"Key" :: Maybe (String) , "Value" :: Maybe (String) } ) -> Tag
newTag'  customize = (Tag <<< customize) { "Key": Nothing, "Value": Nothing }



newtype TagList = TagList (Array Tag)
derive instance newtypeTagList :: Newtype TagList _
derive instance repGenericTagList :: Generic TagList _
instance showTagList :: Show TagList where show = genericShow
instance decodeTagList :: Decode TagList where decode = genericDecode options
instance encodeTagList :: Encode TagList where encode = genericEncode options



-- | <p> Input to the <a>TerminateJobFlows</a> operation. </p>
newtype TerminateJobFlowsInput = TerminateJobFlowsInput 
  { "JobFlowIds" :: (XmlStringList)
  }
derive instance newtypeTerminateJobFlowsInput :: Newtype TerminateJobFlowsInput _
derive instance repGenericTerminateJobFlowsInput :: Generic TerminateJobFlowsInput _
instance showTerminateJobFlowsInput :: Show TerminateJobFlowsInput where show = genericShow
instance decodeTerminateJobFlowsInput :: Decode TerminateJobFlowsInput where decode = genericDecode options
instance encodeTerminateJobFlowsInput :: Encode TerminateJobFlowsInput where encode = genericEncode options

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
instance showUnit'' :: Show Unit'' where show = genericShow
instance decodeUnit'' :: Decode Unit'' where decode = genericDecode options
instance encodeUnit'' :: Encode Unit'' where encode = genericEncode options



-- | <p>EBS volume specifications such as volume type, IOPS, and size (GiB) that will be requested for the EBS volume attached to an EC2 instance in the cluster.</p>
newtype VolumeSpecification = VolumeSpecification 
  { "VolumeType" :: (String)
  , "Iops" :: Maybe (Int)
  , "SizeInGB" :: (Int)
  }
derive instance newtypeVolumeSpecification :: Newtype VolumeSpecification _
derive instance repGenericVolumeSpecification :: Generic VolumeSpecification _
instance showVolumeSpecification :: Show VolumeSpecification where show = genericShow
instance decodeVolumeSpecification :: Decode VolumeSpecification where decode = genericDecode options
instance encodeVolumeSpecification :: Encode VolumeSpecification where encode = genericEncode options

-- | Constructs VolumeSpecification from required parameters
newVolumeSpecification :: Int -> String -> VolumeSpecification
newVolumeSpecification _SizeInGB _VolumeType = VolumeSpecification { "SizeInGB": _SizeInGB, "VolumeType": _VolumeType, "Iops": Nothing }

-- | Constructs VolumeSpecification's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newVolumeSpecification' :: Int -> String -> ( { "VolumeType" :: (String) , "Iops" :: Maybe (Int) , "SizeInGB" :: (Int) } -> {"VolumeType" :: (String) , "Iops" :: Maybe (Int) , "SizeInGB" :: (Int) } ) -> VolumeSpecification
newVolumeSpecification' _SizeInGB _VolumeType customize = (VolumeSpecification <<< customize) { "SizeInGB": _SizeInGB, "VolumeType": _VolumeType, "Iops": Nothing }



newtype WholeNumber = WholeNumber Int
derive instance newtypeWholeNumber :: Newtype WholeNumber _
derive instance repGenericWholeNumber :: Generic WholeNumber _
instance showWholeNumber :: Show WholeNumber where show = genericShow
instance decodeWholeNumber :: Decode WholeNumber where decode = genericDecode options
instance encodeWholeNumber :: Encode WholeNumber where encode = genericEncode options



newtype XmlString = XmlString String
derive instance newtypeXmlString :: Newtype XmlString _
derive instance repGenericXmlString :: Generic XmlString _
instance showXmlString :: Show XmlString where show = genericShow
instance decodeXmlString :: Decode XmlString where decode = genericDecode options
instance encodeXmlString :: Encode XmlString where encode = genericEncode options



newtype XmlStringList = XmlStringList (Array XmlString)
derive instance newtypeXmlStringList :: Newtype XmlStringList _
derive instance repGenericXmlStringList :: Generic XmlStringList _
instance showXmlStringList :: Show XmlStringList where show = genericShow
instance decodeXmlStringList :: Decode XmlStringList where decode = genericDecode options
instance encodeXmlStringList :: Encode XmlStringList where encode = genericEncode options



newtype XmlStringMaxLen256 = XmlStringMaxLen256 String
derive instance newtypeXmlStringMaxLen256 :: Newtype XmlStringMaxLen256 _
derive instance repGenericXmlStringMaxLen256 :: Generic XmlStringMaxLen256 _
instance showXmlStringMaxLen256 :: Show XmlStringMaxLen256 where show = genericShow
instance decodeXmlStringMaxLen256 :: Decode XmlStringMaxLen256 where decode = genericDecode options
instance encodeXmlStringMaxLen256 :: Encode XmlStringMaxLen256 where encode = genericEncode options



newtype XmlStringMaxLen256List = XmlStringMaxLen256List (Array XmlStringMaxLen256)
derive instance newtypeXmlStringMaxLen256List :: Newtype XmlStringMaxLen256List _
derive instance repGenericXmlStringMaxLen256List :: Generic XmlStringMaxLen256List _
instance showXmlStringMaxLen256List :: Show XmlStringMaxLen256List where show = genericShow
instance decodeXmlStringMaxLen256List :: Decode XmlStringMaxLen256List where decode = genericDecode options
instance encodeXmlStringMaxLen256List :: Encode XmlStringMaxLen256List where encode = genericEncode options

