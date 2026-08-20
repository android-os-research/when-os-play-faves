.class public Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.super Ljava/lang/Object;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;,
        Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_DISPLAY_ON_TIME:Ljava/lang/String; = "com.sec.android.app.server.power.DISPLAY_ON_TIME"

.field public static final ACTION_HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final ACTION_MAFPC_DEVICE_CARE:Ljava/lang/String; = "com.samsung.android.sm.ACTION_ABC_SOLUTION"

.field public static final AFPC_KEYS:[Ljava/lang/String;

.field public static final BIGDATA_DISPLAY_IMAGE_QUALITY_ENHANCEMENT:Ljava/lang/String; = "DIQE"

.field public static final BIGDATA_DISPLAY_USER_INFO:Ljava/lang/String; = "DPUI"

.field public static final TAG:Ljava/lang/String; = "AfterimageCompensationService"

.field public static final mAFPC_KEYS:[Ljava/lang/String;


# instance fields
.field public final AFC_APPLY_COUNT:Ljava/lang/String;

.field public final AFC_APPLY_COUNT_SUB:Ljava/lang/String;

.field public final AFC_APPLY_LDU:Ljava/lang/String;

.field public final AFC_COPR_ROI_MAX_INDEX:I

.field public final AFC_COPR_ROI_MAX_NUMBER:I

.field public final AFC_COPR_ROI_MAX_VALUE:I

.field public final AFC_COPR_ROI_TABLE_SIZE:I

.field public final AFC_DEFAULT_VALUE:Ljava/lang/String;

.field public final AFC_DIFF_DATA:Ljava/lang/String;

.field public final AFC_DIFF_DATA_SUB:Ljava/lang/String;

.field public final AFC_DIRECTORY:Ljava/lang/String;

.field public final AFC_DIRECTORY_SUB:Ljava/lang/String;

.field public final AFC_INIT_VALUE:Ljava/lang/String;

.field public final AFC_LOGGING_DATA:Ljava/lang/String;

.field public final AFC_LOGGING_DATA_SIZE:I

.field public final AFC_LUX_MAX_NUMBER:I

.field public final AFC_MAX_COUNT:I

.field public final AFC_MDNIE_BLOCK:Ljava/lang/String;

.field public final AFC_MDNIE_BLOCK_SUB:Ljava/lang/String;

.field public final AFC_ORIGINAL_VEC:Ljava/lang/String;

.field public final AFC_PANEL_CELL_ID:Ljava/lang/String;

.field public final AFC_PANEL_CELL_ID_SUB:Ljava/lang/String;

.field public final AFC_POC_DATA:Ljava/lang/String;

.field public final AFC_POC_DATA_SUB:Ljava/lang/String;

.field public final AFC_REG_DATA:Ljava/lang/String;

.field public final AFC_RGB_ADDRESS:I

.field public final AFC_RGB_MAX_NUMBER:I

.field public final AFC_RGB_NUMBER:I

.field public final AFC_STATE:Ljava/lang/String;

.field public final AFC_STATE_0:I

.field public final AFC_STATE_1:I

.field public final AFC_STATE_2:I

.field public final AFC_STATE_3:I

.field public final AFC_STATE_END:I

.field public final AFC_TABLE_SIZE:I

.field public final AFC_TEST_BLOCK:Ljava/lang/String;

.field public final AFC_TIME_DATA:Ljava/lang/String;

.field public final AFC_TIME_DATA_SUB:Ljava/lang/String;

.field public final AFC_TYPE_AFC:I

.field public final AFC_TYPE_AFC_V1:I

.field public final AFC_TYPE_AFPC:I

.field public final AFC_TYPE_AFPC_V2:I

.field public final AFC_TYPE_MAFPC:I

.field public final AFC_TYPE_MAFPC_V2:I

.field public final AFC_TYPE_MAFPC_V3:I

.field public final AFC_TYPE_MAFPC_V4:I

.field public final AFC_TYPE_MAFPC_V5:I

.field public final AFC_TYPE_MAFPC_V6:I

.field public final AFC_TYPE_MAFPC_V7:I

.field public final AFC_XRGB_BASE_POINT:I

.field public final AFC_XRGB_MAX_INDEX:I

.field public final AFC_XRGB_MAX_VALUE:I

.field public final AFC_XRGB_TABLE_SIZE:I

.field public final AFC_XY_COPR_ROI_SIZE:I

.field public final AFPC_PERIOD_COUNT:I

.field public final AFPC_V2_PERIOD_COUNT:I

.field public final APPLY_AVG_LUM:D

.field public final APPLY_AVG_LUM_V2:D

.field public final APPLY_AVG_LUM_V3:D

.field public final APPLY_AVG_LUM_V4:D

.field public final APPLY_AVG_LUM_V5:D

.field public final APPLY_AVG_LUM_V6:D

.field public final APPLY_AVG_LUM_V7:D

.field public final APPLY_BDI:D

.field public AfcStateCondition:Z

.field public AfcThreadAODCondition:Z

.field public AfcThreadCondition:Z

.field public AfpcPeriodCount:I

.field public AfpcPeriodCount_sub:I

.field public AfpcPeriodMax:I

.field public AodBrightness:I

.field public final BEYOND_POC_COMMAND:Ljava/lang/String;

.field public final BRIGHTNESS_MAX_NUMBER:I

.field public final BRIGHTNESS_MAX_VALUE:I

.field public final DEBUG:Z

.field public final DEV_POC:Ljava/lang/String;

.field public final EFF_NBDI_MAX_NUM:I

.field public final EFF_NBDI_V3_MAX_NUM:I

.field public final EFF_NBDI_V4_MAX_NUM:I

.field public final EFF_NBDI_V5_MAX_NUM:I

.field public final EFF_NBDI_V6_MAX_NUM:I

.field public final EFF_NBDI_V7_MAX_NUM:I

.field public final MAX_APPLY_COUNT:I

.field public final MCA_ORG_VEC:Ljava/lang/String;

.field public final MCA_REWRITED:Ljava/lang/String;

.field public final MILLIS_AFC_PERIOD:J

.field public final MILLIS_AFPC_PERIOD:J

.field public final MILLIS_AFPC_V2_PERIOD:J

.field public final MODEL_B0:I

.field public final MODEL_B2:I

.field public final MODEL_B4:I

.field public final MODEL_BEYOND0:I

.field public final MODEL_BEYOND1:I

.field public final MODEL_BEYOND2:I

.field public final MODEL_BEYONDX:I

.field public final MODEL_C1:I

.field public final MODEL_C2:I

.field public final MODEL_DAVINC1:I

.field public final MODEL_DAVINC2:I

.field public final MODEL_DM1:I

.field public final MODEL_DM2:I

.field public final MODEL_DM3:I

.field public final MODEL_G0:I

.field public final MODEL_O1:I

.field public final MODEL_P3:I

.field public final MODEL_Q2:I

.field public final MODEL_Q4_MAIN:I

.field public final MODEL_Q4_SUB:I

.field public final MODEL_R0:I

.field public final MODEL_T2:I

.field public final MODEL_TOP:I

.field public final MODEL_X1:I

.field public final MODEL_Y2:I

.field public final MODEL_Z3:I

.field public final POC_ERASE_COMMAND:Ljava/lang/String;

.field public final RECOVERY_POC:Ljava/lang/String;

.field public final SYSFS_AFC_FILE_PATH:Ljava/lang/String;

.field public final SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

.field public final SYSFS_BRIGHTNESS_FILE_PATH_SUB:Ljava/lang/String;

.field public final SYSFS_COPR_FILE_PATH:Ljava/lang/String;

.field public final SYSFS_PANEL_CELL_ID:Ljava/lang/String;

.field public final SYSFS_PANEL_CELL_ID_SUB:Ljava/lang/String;

.field public final SYSFS_PANEL_POC:Ljava/lang/String;

.field public final SYSFS_SENSOR_COPR_FILE_PATH:Ljava/lang/String;

.field public effNbdiTh:[F

.field public effNbdiTh_V3:[F

.field public effNbdiTh_V4:[F

.field public effNbdiTh_V5:[F

.field public effNbdiTh_V6:[F

.field public effNbdiTh_V7:[F

.field public interpolationCoprRoi:[I

.field public interpolationCoprRoiDouble:[D

.field public interpolationCount:I

.field public interpolationLuminance:I

.field public interpolationLuminanceDouble:D

.field public isRunningCameraApp:Z

.field public mAFPCVersion1:Z

.field public mAfcLoggingDataValid:Z

.field public mAfcState:I

.field public mAfcTable:[[[I

.field public mAfcThread:Ljava/lang/Thread;

.field public mAfcType:I

.field public mAfpcHeight:I

.field public mAfpcHeight_sub:I

.field public mAfpcJndRef:[F

.field public mAfpcJndRefV2:[F

.field public mAfpcPanelNumber_main:I

.field public mAfpcPanelNumber_sub:I

.field public mAfpcSize:I

.field public mAfpcSize_sub:I

.field public mAfpcWidth:I

.field public mAfpcWidth_sub:I

.field public mApplyCount:I

.field public mApplyCount_sub:I

.field public mApplyScaleEffect:I

.field public mApplyValue:F

.field public mApplyValue_sub:F

.field public mAvgLum:D

.field public mAvgLum_sub:D

.field public mBrightnessBorderValue:[I

.field public final mContext:Landroid/content/Context;

.field public mCoprRoi:[I

.field public mCoprRoiTable:[[I

.field public mCurrentBrightnessValue:F

.field public mEffAvgLum:D

.field public mEffAvgLum_sub:D

.field public mEffMaxBDI:D

.field public mEffMaxBDI_sub:D

.field public mEffNBDI:D

.field public mEffNBDI_sub:D

.field public mLuminance:I

.field public mLuminance_sub:I

.field public mMaxBDI:D

.field public mMaxBDI_sub:D

.field public mMcaRewrited:Z

.field public mNBDI:D

.field public mNBDI_sub:D

.field public mPocInitVector:Z

.field public mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

.field public mSemHqmManager:Landroid/os/SemHqmManager;

.field public mThreadAFPC:Z

.field public mThreadAPC:Z

.field public mThreadSleepTime:J

.field public mThreadSleepTimeAod:J

.field public mWindowManager:Landroid/view/WindowManager;

.field public mXrgbTable:[[I


# direct methods
.method public static bridge synthetic -$$Nest$fgetAfcStateCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfcThreadAODCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfcThreadCondition(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAfpcPeriodMax(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetAodBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetDEBUG(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V3(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V4(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V5(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V6(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgeteffNbdiTh_V7(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetinterpolationCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcState(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfcType(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfpcJndRefV2(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAfpcPanelNumber_main(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyScaleEffect(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadAFPC(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadSleepTime(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmThreadSleepTimeAod(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J
    .registers 3

    iget-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTimeAod:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManager(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/view/WindowManager;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputAfpcPeriodCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputAfpcPeriodCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisRunningCameraApp(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAfcThread(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/Thread;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyCount(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyCount_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyValue(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmApplyValue_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffAvgLum(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffAvgLum_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEffNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmLuminance_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNBDI(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNBDI_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)V
    .registers 3

    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSemHqmManager(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/os/SemHqmManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmWindowManager(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Landroid/view/WindowManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfileWriteString(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetBrightness(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getBrightness()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetBrightness_sub(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getBrightness_sub()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_off_intent(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_off_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreceive_screen_on_intent(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->receive_screen_on_intent()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateHWParam(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateHWParam()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteLoggingDataEfs(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->writeLoggingDataEfs()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smnativeDataEvaluate()F
    .registers 1

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v0

    return v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataRead(IIIZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataRead(IIIZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLum()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadAvgLumSub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLumSub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLum()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffAvgLumSub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLumSub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffMaxBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadEffNBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadMaxBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDI()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadNBDISub()D
    .registers 2

    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDISub()D

    move-result-wide v0

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataReadSub(IIIZ)I
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadSub(IIIZ)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSave(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataSaveSub(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSaveSub(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminate(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminate(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataTerminateSub(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataTerminateSub(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdate(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataUpdateSub(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdateSub(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smnativeDataWriteV2(I)I
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWriteV2(I)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 17

    const-string v0, "BURN_IN_INIT_POC_VECTOR"

    const-string v1, "BURN_IN_POC_APPLY_COUNT"

    const-string v2, "BURN_IN_JND"

    .line 176
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFPC_KEYS:[Ljava/lang/String;

    const-string v1, "ApplyCount"

    const-string v2, "JND"

    const-string v3, "AvgLum"

    const-string v4, "MaxBDI"

    const-string v5, "NBDI"

    const-string v6, "EffAvgLum"

    const-string v7, "EffMaxBDI"

    const-string v8, "EffNBDI"

    const-string v9, "ApplyCount_sub"

    const-string v10, "JND_sub"

    const-string v11, "AvgLum_sub"

    const-string v12, "MaxBDI_sub"

    const-string v13, "NBDI_sub"

    const-string v14, "EffAvgLum_sub"

    const-string v15, "EffMaxBDI_sub"

    const-string v16, "EffNBDI_sub"

    .line 177
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 34

    move-object/from16 v1, p0

    .line 391
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 76
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const/4 v0, 0x0

    .line 78
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFC:I

    const/4 v2, 0x1

    .line 79
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFC_V1:I

    const/4 v3, 0x2

    .line 80
    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFPC:I

    const/4 v4, 0x3

    .line 81
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC:I

    const/4 v5, 0x4

    .line 82
    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_AFPC_V2:I

    const/4 v6, 0x5

    .line 83
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V2:I

    const/4 v6, 0x6

    .line 84
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V3:I

    const/4 v6, 0x7

    .line 85
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V4:I

    const/16 v6, 0x8

    .line 86
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V5:I

    const/16 v6, 0x9

    .line 87
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V6:I

    const/16 v6, 0xa

    .line 88
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TYPE_MAFPC_V7:I

    const v6, 0x2e694

    .line 90
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYOND0:I

    const v6, 0x2e695

    .line 91
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYOND1:I

    const v6, 0x2e696

    .line 92
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYOND2:I

    const v6, 0x2e697

    .line 93
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_BEYONDX:I

    const v6, 0x2e6f9

    .line 94
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_DAVINC1:I

    const v7, 0x2e6fa

    .line 95
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_DAVINC2:I

    const v8, 0x30da5

    .line 96
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_X1:I

    const v8, 0x30da6

    .line 97
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_Y2:I

    const v8, 0x30da7

    .line 98
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_Z3:I

    const v8, 0x30e09

    .line 99
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_C1:I

    const v8, 0x30e0a

    .line 100
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_C2:I

    const v8, 0x30e0b

    .line 101
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_TOP:I

    const v8, 0x334b5

    .line 103
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_O1:I

    const v8, 0x334b6

    .line 104
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_T2:I

    const v8, 0x334b7

    .line 105
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_P3:I

    const v8, 0x33519

    .line 106
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_B2:I

    const v8, 0x3351a

    .line 107
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_Q2:I

    const v8, 0x35bc5

    .line 108
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_R0:I

    const v8, 0x35bc6

    .line 109
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_G0:I

    const v8, 0x35bc7

    .line 110
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_B0:I

    const v8, 0x35c29

    .line 111
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_B4:I

    const v8, 0x35c2a

    .line 112
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_Q4_MAIN:I

    const v8, 0x35c2b

    .line 113
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_Q4_SUB:I

    const v8, 0x382d5

    .line 114
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_DM1:I

    const v8, 0x382d6

    .line 115
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_DM2:I

    const v8, 0x382d7

    .line 116
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MODEL_DM3:I

    const-wide/16 v8, 0x2710

    .line 118
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFC_PERIOD:J

    const-wide/32 v8, 0xea60

    .line 119
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFPC_PERIOD:J

    const-wide/16 v8, 0x7530

    .line 120
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MILLIS_AFPC_V2_PERIOD:J

    const/16 v8, 0xa

    .line 122
    iput v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MAX_APPLY_COUNT:I

    const-wide v8, 0x4072c00000000000L    # 300.0

    .line 123
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_BDI:D

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    .line 124
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM:D

    const-wide v8, 0x4052c00000000000L    # 75.0

    .line 125
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V2:D

    const-wide v8, 0x4051800000000000L    # 70.0

    .line 126
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V3:D

    .line 127
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V4:D

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    .line 128
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V5:D

    .line 129
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V6:D

    .line 130
    iput-wide v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->APPLY_AVG_LUM_V7:D

    const-string v8, "/sys/class/lcd/panel/copr_roi"

    .line 132
    iput-object v8, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_COPR_FILE_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/sensors/light_sensor/copr_roix"

    .line 133
    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_SENSOR_COPR_FILE_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/lcd/panel/brt_avg"

    .line 134
    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_BRIGHTNESS_FILE_PATH:Ljava/lang/String;

    const-string v9, "/sys/class/lcd/panel1/brt_avg"

    .line 135
    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_BRIGHTNESS_FILE_PATH_SUB:Ljava/lang/String;

    const-string v9, "/sys/class/mdnie/mdnie/afc"

    .line 136
    iput-object v9, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_AFC_FILE_PATH:Ljava/lang/String;

    const-string v10, "/sys/class/lcd/panel/cell_id"

    .line 137
    iput-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_PANEL_CELL_ID:Ljava/lang/String;

    const-string v10, "/sys/class/lcd/panel1/cell_id"

    .line 138
    iput-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_PANEL_CELL_ID_SUB:Ljava/lang/String;

    const-string v10, "/sys/class/lcd/panel/poc"

    .line 139
    iput-object v10, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->SYSFS_PANEL_POC:Ljava/lang/String;

    const-string v11, "/efs/afc"

    .line 140
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIRECTORY:Ljava/lang/String;

    const-string v11, "/efs/afc1"

    .line 141
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIRECTORY_SUB:Ljava/lang/String;

    const-string v11, "/efs/afc/cell_id"

    .line 142
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_PANEL_CELL_ID:Ljava/lang/String;

    const-string v11, "/efs/afc1/cell_id"

    .line 143
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_PANEL_CELL_ID_SUB:Ljava/lang/String;

    const-string v11, "/efs/afc/logging_data"

    .line 144
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA:Ljava/lang/String;

    const-string v11, "/efs/afc/afc_data"

    .line 145
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_REG_DATA:Ljava/lang/String;

    const-string v11, "/efs/afc/org.vec"

    .line 146
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_ORIGINAL_VEC:Ljava/lang/String;

    const-string v11, "/efs/afc/time_data"

    .line 147
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TIME_DATA:Ljava/lang/String;

    const-string v11, "/efs/afc1/time_data"

    .line 148
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TIME_DATA_SUB:Ljava/lang/String;

    const-string v11, "/efs/afc/poc_data"

    .line 149
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_POC_DATA:Ljava/lang/String;

    const-string v11, "/efs/afc1/poc_data"

    .line 150
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_POC_DATA_SUB:Ljava/lang/String;

    const-string v11, "/efs/afc/apply_count"

    .line 151
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_APPLY_COUNT:Ljava/lang/String;

    const-string v11, "/efs/afc1/apply_count"

    .line 152
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_APPLY_COUNT_SUB:Ljava/lang/String;

    const-string v11, "/efs/afc/apply_ldu"

    .line 153
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_APPLY_LDU:Ljava/lang/String;

    const-string v11, "/efs/afc/diff_data"

    .line 154
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIFF_DATA:Ljava/lang/String;

    const-string v11, "/efs/afc1/diff_data"

    .line 155
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DIFF_DATA_SUB:Ljava/lang/String;

    const-string v11, "/efs/afc/afc_state"

    .line 156
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE:Ljava/lang/String;

    const-string v11, "/efs/afc/mdnie_block"

    .line 157
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_MDNIE_BLOCK:Ljava/lang/String;

    const-string v11, "/efs/afc1/mdnie_block"

    .line 158
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_MDNIE_BLOCK_SUB:Ljava/lang/String;

    const-string v11, "/efs/afc/test_block"

    .line 159
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TEST_BLOCK:Ljava/lang/String;

    const-string v11, "/efs/afc/rewrited"

    .line 160
    iput-object v11, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MCA_REWRITED:Ljava/lang/String;

    const-string v12, "/efs/afc/original.vec"

    .line 161
    iput-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->MCA_ORG_VEC:Ljava/lang/String;

    const-string v12, "/dev/poc"

    .line 162
    iput-object v12, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEV_POC:Ljava/lang/String;

    const-string v13, "/cache/recovery/poc.vec"

    .line 163
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->RECOVERY_POC:Ljava/lang/String;

    const-string v14, "7 0 551186"

    .line 164
    iput-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BEYOND_POC_COMMAND:Ljava/lang/String;

    const-string v14, "7 0 "

    .line 165
    iput-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->POC_ERASE_COMMAND:Ljava/lang/String;

    const-string v14, "0"

    .line 167
    iput-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_DEFAULT_VALUE:Ljava/lang/String;

    const-string v14, "1 255 255 255 255 255 255 255 255 255 255 255 255"

    .line 168
    iput-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_INIT_VALUE:Ljava/lang/String;

    const/16 v14, 0xf

    .line 180
    iput v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LOGGING_DATA_SIZE:I

    const v14, 0x10c8e0

    .line 181
    iput v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_MAX_COUNT:I

    .line 182
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_NUMBER:I

    const/16 v14, 0xb

    .line 184
    iput v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_NUMBER:I

    const/16 v15, 0xc

    .line 185
    iput v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_NUMBER:I

    const/16 v7, 0x5a0

    .line 187
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFPC_PERIOD_COUNT:I

    const/16 v7, 0xb40

    .line 188
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFPC_V2_PERIOD_COUNT:I

    const/16 v7, 0x100

    .line 190
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_VALUE:I

    const/16 v7, 0x101

    .line 191
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_MAX_INDEX:I

    const/16 v7, 0xff

    .line 193
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_VALUE:I

    const/16 v7, 0x100

    .line 194
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_MAX_INDEX:I

    .line 196
    iput v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_LUX_MAX_NUMBER:I

    const/16 v7, 0x168

    .line 197
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_MAX_NUMBER:I

    const/16 v7, 0x78

    .line 199
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_RGB_ADDRESS:I

    const/16 v7, 0x88

    .line 200
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_BASE_POINT:I

    const/16 v7, 0x10

    .line 202
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XY_COPR_ROI_SIZE:I

    const/16 v7, 0x303

    .line 203
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_COPR_ROI_TABLE_SIZE:I

    const/16 v7, 0x300

    .line 204
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_XRGB_TABLE_SIZE:I

    const/16 v7, 0x3de0

    .line 205
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_TABLE_SIZE:I

    .line 207
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_0:I

    .line 208
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_1:I

    .line 209
    iput v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_2:I

    .line 210
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_3:I

    .line 211
    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AFC_STATE_END:I

    const/16 v7, 0x14

    .line 213
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_MAX_NUM:I

    const/16 v7, 0x1e

    .line 214
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_V3_MAX_NUM:I

    .line 215
    iput v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_V4_MAX_NUM:I

    const/16 v6, 0x32

    .line 216
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_V5_MAX_NUM:I

    const/16 v6, 0x64

    .line 217
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_V6_MAX_NUM:I

    .line 218
    iput v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->EFF_NBDI_V7_MAX_NUM:I

    const/16 v4, 0x5dc

    .line 220
    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->BRIGHTNESS_MAX_VALUE:I

    const/4 v4, 0x0

    .line 237
    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    .line 238
    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    .line 240
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    new-array v5, v14, [I

    .line 242
    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    .line 244
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    .line 245
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    .line 246
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    .line 247
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 249
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    .line 250
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    .line 251
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    .line 252
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    .line 254
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z

    .line 256
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 258
    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPocInitVector:Z

    .line 259
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v5, 0x0

    .line 260
    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 261
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 262
    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    .line 263
    iput v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCurrentBrightnessValue:F

    new-array v5, v15, [I

    .line 265
    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    .line 266
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I

    .line 267
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I

    .line 269
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I

    .line 270
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount_sub:I

    const-wide/16 v4, 0x0

    .line 272
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    const-wide/16 v4, 0x3e8

    .line 273
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTimeAod:J

    .line 275
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    .line 277
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    new-array v4, v15, [I

    .line 278
    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    .line 279
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    new-array v4, v15, [D

    .line 281
    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    const-wide/16 v4, 0x0

    .line 282
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    .line 284
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 285
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    .line 286
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    .line 287
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 288
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    .line 289
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    .line 290
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize_sub:I

    .line 291
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight_sub:I

    .line 292
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth_sub:I

    const/16 v15, 0xb4

    .line 294
    iput v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    new-array v15, v3, [F

    .line 300
    fill-array-data v15, :array_7ca

    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    const/4 v15, 0x5

    new-array v15, v15, [F

    .line 301
    fill-array-data v15, :array_7d2

    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    const/16 v15, 0x14

    new-array v15, v15, [F

    .line 302
    fill-array-data v15, :array_7e0

    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F

    new-array v15, v7, [F

    .line 305
    fill-array-data v15, :array_80c

    iput-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F

    new-array v7, v7, [F

    .line 309
    fill-array-data v7, :array_84c

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V4:[F

    const/16 v7, 0x32

    new-array v7, v7, [F

    .line 313
    fill-array-data v7, :array_88c

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V5:[F

    new-array v7, v6, [F

    .line 319
    fill-array-data v7, :array_8f4

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V6:[F

    new-array v7, v6, [F

    .line 330
    fill-array-data v7, :array_9c0

    iput-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V7:[F

    .line 344
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    .line 345
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    .line 346
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    .line 347
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    .line 348
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    .line 349
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    .line 351
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    .line 352
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    .line 353
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    .line 354
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    .line 355
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    .line 356
    iput-wide v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    const/4 v4, 0x0

    .line 358
    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 359
    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v4, p1

    .line 393
    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    .line 395
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    .line 396
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_ON"

    .line 397
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    .line 398
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    .line 399
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.sec.android.app.server.power.DISPLAY_ON_TIME"

    .line 400
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 401
    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;

    const/4 v15, 0x0

    invoke-direct {v7, v1, v15}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$ScreenWatchingReceiver-IA;)V

    invoke-virtual {v5, v7, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/afc"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2e8

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 407
    :cond_2e8
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/afc1"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2f8

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 409
    :cond_2f8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 410
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 411
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 413
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    .line 414
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    .line 415
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    .line 416
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    .line 417
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    .line 418
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    .line 419
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize_sub:I

    .line 420
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight_sub:I

    .line 421
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth_sub:I

    .line 422
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070041

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    .line 423
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1070039

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    .line 424
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x1070040

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 425
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v15, 0x107006a

    invoke-virtual {v7, v15}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 426
    iget-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v6, 0x107003a

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    .line 428
    iget v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    if-lt v15, v3, :cond_3fc

    .line 429
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    const/4 v0, 0x4

    if-lt v15, v0, :cond_3f0

    move-object/from16 p1, v4

    const-wide/16 v3, 0x7530

    .line 431
    iput-wide v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    const/16 v0, 0xb40

    .line 432
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_406

    :cond_3f0
    move-object/from16 p1, v4

    const-wide/32 v3, 0xea60

    .line 435
    iput-wide v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    const/16 v0, 0x5a0

    .line 436
    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    goto :goto_406

    :cond_3fc
    move-object/from16 p1, v4

    if-ne v15, v2, :cond_406

    .line 440
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    const-wide/16 v3, 0x2710

    .line 441
    iput-wide v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    :cond_406
    :goto_406
    if-ne v15, v2, :cond_40a

    .line 444
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    .line 445
    :cond_40a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAfcType : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mThreadAFPC : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mThreadSleepTime : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", AfpcPeriodMax : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AfterimageCompensationService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAfpcPanelNumber_main : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAfpcSize : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAfpcHeight : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAfpcWidth : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAfpcPanelNumber_sub : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAfpcSize_sub : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize_sub:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAfpcHeight_sub : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight_sub:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAfpcWidth_sub : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth_sub:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z

    if-eqz v0, :cond_5b0

    move-object/from16 v0, p1

    array-length v4, v0

    const/16 v15, 0x10

    if-ne v4, v15, :cond_5b0

    array-length v4, v5

    const/16 v15, 0x303

    if-ne v4, v15, :cond_5b0

    iget-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    array-length v4, v4

    if-ne v4, v14, :cond_5b0

    array-length v4, v7

    const/16 v15, 0x300

    if-ne v4, v15, :cond_5b0

    array-length v4, v6

    const/16 v15, 0x3de0

    if-ne v4, v15, :cond_5b0

    const/4 v4, 0x2

    new-array v15, v4, [I

    .line 455
    fill-array-data v15, :array_a8c

    const-class v4, I

    invoke-static {v4, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iput-object v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    const/4 v2, 0x3

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_4da
    if-ge v4, v2, :cond_4f6

    const/4 v2, 0x0

    :goto_4dd
    const/16 v14, 0x101

    if-ge v2, v14, :cond_4f0

    .line 458
    iget-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I

    aget-object v14, v14, v4

    add-int/lit8 v17, v15, 0x1

    aget v15, v5, v15

    aput v15, v14, v2

    add-int/lit8 v2, v2, 0x1

    move/from16 v15, v17

    goto :goto_4dd

    :cond_4f0
    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x3

    const/16 v14, 0xb

    goto :goto_4da

    :cond_4f6
    const/4 v2, 0x2

    new-array v4, v2, [I

    .line 465
    fill-array-data v4, :array_a94

    const-class v2, I

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_508
    const/4 v5, 0x3

    if-ge v2, v5, :cond_521

    const/4 v5, 0x0

    :goto_50c
    const/16 v14, 0x100

    if-ge v5, v14, :cond_51e

    .line 468
    iget-object v14, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v14, v14, v2

    add-int/lit8 v15, v4, 0x1

    aget v4, v7, v4

    aput v4, v14, v5

    add-int/lit8 v5, v5, 0x1

    move v4, v15

    goto :goto_50c

    :cond_51e
    add-int/lit8 v2, v2, 0x1

    goto :goto_508

    :cond_521
    move v2, v5

    new-array v4, v2, [I

    .line 476
    fill-array-data v4, :array_a9c

    const-class v2, I

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[I

    iput-object v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_533
    const/4 v5, 0x4

    if-ge v2, v5, :cond_557

    const/4 v5, 0x0

    const/16 v7, 0xb

    :goto_539
    if-ge v5, v7, :cond_554

    const/4 v14, 0x0

    :goto_53c
    const/16 v15, 0x168

    if-ge v14, v15, :cond_551

    .line 480
    iget-object v15, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    aget-object v15, v15, v2

    aget-object v15, v15, v5

    add-int/lit8 v16, v4, 0x1

    aget v4, v6, v4

    aput v4, v15, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v16

    goto :goto_53c

    :cond_551
    add-int/lit8 v5, v5, 0x1

    goto :goto_539

    :cond_554
    add-int/lit8 v2, v2, 0x1

    goto :goto_533

    .line 486
    :cond_557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    .line 487
    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    .line 488
    :goto_563
    array-length v5, v0

    if-ge v4, v5, :cond_573

    const-string v5, " "

    .line 489
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    aget v5, v0, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_563

    .line 492
    :cond_573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "COPR ROI XY - "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v8, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    .line 498
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_59f

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    .line 500
    :cond_59f
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    if-nez v0, :cond_5b0

    const-string v0, "1 255 255 255 255 255 255 255 255 255 255 255 255"

    .line 501
    invoke-virtual {v1, v9, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "AFC Data Write 1 255 255 255 255 255 255 255 255 255 255 255 255"

    .line 502
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->initLoggingData()V

    .line 507
    :cond_5b0
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v0, :cond_7c4

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->update_check_panel_id()V

    .line 520
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5c5

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMcaRewrited:Z

    .line 521
    :cond_5c5
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/poc_data"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v21

    .line 522
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/time_data"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v22

    .line 523
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/diff_data"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v23

    .line 524
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc1/poc_data"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v29

    .line 525
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc1/time_data"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v30

    .line 526
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc1/diff_data"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v31

    .line 528
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight:I

    iget v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth:I

    move/from16 v16, v0

    move/from16 v17, v2

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    invoke-static/range {v16 .. v23}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInit(IIIIIIII)I

    move-result v0

    if-nez v0, :cond_626

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->processApplyData_main()V

    const/4 v0, 0x1

    goto :goto_627

    :cond_626
    const/4 v0, 0x0

    .line 532
    :goto_627
    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    iget v4, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_sub:I

    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize_sub:I

    iget v6, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcHeight_sub:I

    iget v7, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcWidth_sub:I

    move/from16 v24, v2

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    invoke-static/range {v24 .. v31}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataInitSub(IIIIIIII)I

    move-result v2

    if-nez v2, :cond_646

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->processApplyData_sub()V

    const/4 v2, 0x1

    goto :goto_647

    :cond_646
    const/4 v2, 0x0

    :goto_647
    if-nez v0, :cond_653

    if-eqz v2, :cond_64c

    goto :goto_653

    :cond_64c
    const-string v0, "mAFPC init Failed"

    .line 588
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7c4

    .line 538
    :cond_653
    :goto_653
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_677

    .line 539
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    const v2, 0x30da5

    if-lt v0, v2, :cond_677

    const v2, 0x30da7

    if-gt v0, v2, :cond_677

    .line 541
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/mdnie_block"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_677

    .line 542
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    .line 546
    :cond_677
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    const v2, 0x2e6f9

    if-eq v0, v2, :cond_683

    const v2, 0x2e6fa

    if-ne v0, v2, :cond_687

    :cond_683
    const/16 v0, 0x64

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    .line 548
    :cond_687
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_73d

    .line 549
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_73d

    const-string v0, "AFPC_V2 Update"

    .line 550
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7 0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    invoke-virtual {v1, v10, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 553
    invoke-static {v13, v12}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_6db

    const-string v0, "AFPC_V2 Update RECOVERY_POC  delete"

    .line 555
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_6db
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 559
    :try_start_6e1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget v5, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v2, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/efs/afc/apply_count"

    .line 560
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 561
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afpcDataWrite - str : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_724
    .catch Ljava/lang/NumberFormatException; {:try_start_6e1 .. :try_end_724} :catch_725

    goto :goto_73d

    :catch_725
    move-exception v0

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NumberFormatException : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 564
    iput v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 569
    :cond_73d
    :goto_73d
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7a7

    .line 570
    iget v0, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcPanelNumber_main:I

    const v2, 0x2e695

    if-lt v0, v2, :cond_74e

    const v2, 0x2e697

    if-le v0, v2, :cond_758

    :cond_74e
    const v2, 0x2e6f9

    if-lt v0, v2, :cond_7a7

    const v2, 0x2e6fa

    if-gt v0, v2, :cond_7a7

    .line 572
    :cond_758
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7a7

    const-string v0, "FOTA AFPC"

    .line 573
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "7 0 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {v1, v10, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 576
    invoke-static {v13, v12}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_7a7

    const-string v0, "FOTA AFPC RECOVERY_POC  delete"

    .line 578
    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_7a7
    new-instance v0, Ljava/io/File;

    const-string v2, "/efs/afc/org.vec"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7b7

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mPocInitVector:Z

    .line 585
    :cond_7b7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7c4

    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :cond_7c4
    :goto_7c4
    const-string v0, "AfterimageCompensationService Init Success"

    .line 591
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_7ca
    .array-data 4
        0x40e00000    # 7.0f
        0x41300000    # 11.0f
    .end array-data

    :array_7d2
    .array-data 4
        0x40400000    # 3.0f
        0x40a00000    # 5.0f
        0x40e00000    # 7.0f
        0x41100000    # 9.0f
        0x41300000    # 11.0f
    .end array-data

    :array_7e0
    .array-data 4
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_80c
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_84c
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_88c
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43160000    # 150.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x437a0000    # 250.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
        0x43960000    # 300.0f
    .end array-data

    :array_8f4
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_9c0
    .array-data 4
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
        0x41f00000    # 30.0f
    .end array-data

    :array_a8c
    .array-data 4
        0x3
        0x101
    .end array-data

    :array_a94
    .array-data 4
        0x3
        0x100
    .end array-data

    :array_a9c
    .array-data 4
        0x4
        0xb
        0x168
    .end array-data
.end method

.method public static fileCopy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    .line 1581
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_42
    .catchall {:try_start_1 .. :try_end_6} :catchall_3d

    .line 1582
    :try_start_6
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_39
    .catchall {:try_start_6 .. :try_end_b} :catchall_35

    .line 1583
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_32
    .catchall {:try_start_b .. :try_end_f} :catchall_2f

    .line 1584
    :try_start_f
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const-wide/16 v3, 0x0

    .line 1585
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1e} :catch_2d
    .catchall {:try_start_f .. :try_end_1e} :catchall_65

    if-eqz v0, :cond_23

    .line 1591
    :try_start_20
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 1593
    :cond_23
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    .line 1595
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1597
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_2c} :catch_4f

    goto :goto_64

    :catch_2d
    move-exception v2

    goto :goto_46

    :catchall_2f
    move-exception v2

    move-object p1, v0

    goto :goto_66

    :catch_32
    move-exception v2

    move-object p1, v0

    goto :goto_46

    :catchall_35
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_66

    :catch_39
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    goto :goto_46

    :catchall_3d
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    move-object v1, p1

    goto :goto_66

    :catch_42
    move-exception v2

    move-object p0, v0

    move-object p1, p0

    move-object v1, p1

    .line 1587
    :goto_46
    :try_start_46
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_65

    if-eqz v0, :cond_51

    .line 1591
    :try_start_4b
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_51

    :catch_4f
    move-exception p0

    goto :goto_61

    :cond_51
    :goto_51
    if-eqz p1, :cond_56

    .line 1593
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_56
    if-eqz v1, :cond_5b

    .line 1595
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_5b
    if-eqz p0, :cond_64

    .line 1597
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_60} :catch_4f

    goto :goto_64

    .line 1599
    :goto_61
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_64
    :goto_64
    return-void

    :catchall_65
    move-exception v2

    :goto_66
    if-eqz v0, :cond_6e

    .line 1591
    :try_start_68
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_6e

    :catch_6c
    move-exception p0

    goto :goto_7e

    :cond_6e
    :goto_6e
    if-eqz p1, :cond_73

    .line 1593
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_73
    if-eqz v1, :cond_78

    .line 1595
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    :cond_78
    if-eqz p0, :cond_81

    .line 1597
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_7d} :catch_6c

    goto :goto_81

    .line 1599
    :goto_7e
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 1601
    :cond_81
    :goto_81
    throw v2
.end method

.method public static isLDUModel()Z
    .registers 3

    .line 1703
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readOMCSalesCode()Ljava/lang/String;

    move-result-object v0

    .line 1704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncNeed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AfterimageCompensationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "PAP"

    .line 1705
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "FOP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    const-string v1, "LDU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 v0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 v0, 0x1

    :goto_36
    return v0
.end method

.method public static isShopDemo(Landroid/content/Context;)Z
    .registers 3

    .line 1709
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "shopdemo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_10

    move v1, v0

    :cond_10
    return v1
.end method

.method private static native nativeDataApply(I)I
.end method

.method private static native nativeDataEvaluate()F
.end method

.method private static native nativeDataInit(IIIIIIII)I
.end method

.method private static native nativeDataInitSub(IIIIIIII)I
.end method

.method private static native nativeDataOff()I
.end method

.method private static native nativeDataRead(IIIZ)I
.end method

.method private static native nativeDataReadAvgLum()D
.end method

.method private static native nativeDataReadAvgLumSub()D
.end method

.method private static native nativeDataReadEffAvgLum()D
.end method

.method private static native nativeDataReadEffAvgLumSub()D
.end method

.method private static native nativeDataReadEffMaxBDI()D
.end method

.method private static native nativeDataReadEffMaxBDISub()D
.end method

.method private static native nativeDataReadEffNBDI()D
.end method

.method private static native nativeDataReadEffNBDISub()D
.end method

.method private static native nativeDataReadMaxBDI()D
.end method

.method private static native nativeDataReadMaxBDISub()D
.end method

.method private static native nativeDataReadNBDI()D
.end method

.method private static native nativeDataReadNBDISub()D
.end method

.method private static native nativeDataReadSub(IIIZ)I
.end method

.method private static native nativeDataSave(I)I
.end method

.method private static native nativeDataSaveSub(I)I
.end method

.method private static native nativeDataStart(I)I
.end method

.method private static native nativeDataTerminate(I)I
.end method

.method private static native nativeDataTerminateSub(I)I
.end method

.method private static native nativeDataUpdate(I)I
.end method

.method private static native nativeDataUpdateSub(I)I
.end method

.method private static native nativeDataVerify()I
.end method

.method private static native nativeDataWrite(I)I
.end method

.method private static native nativeDataWriteV2(I)I
.end method

.method public static readOMCSalesCode()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    const-string/jumbo v1, "persist.omc.sales_code"

    .line 1715
    invoke-static {v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_28

    .line 1716
    :try_start_9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v1, :cond_31

    :cond_11
    const-string/jumbo v2, "ro.csc.sales_code"

    .line 1717
    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1718
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    if-nez v1, :cond_31

    :cond_20
    const-string/jumbo v2, "ril.sales_code"

    .line 1719
    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_27} :catch_29

    goto :goto_31

    :catch_28
    move-object v1, v0

    :catch_29
    const-string v2, "AfterimageCompensationService"

    const-string/jumbo v3, "readOMCSalesCode failed"

    .line 1723
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    :goto_31
    if-nez v1, :cond_34

    return-object v0

    :cond_34
    return-object v1
.end method

.method public static readStrFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "FileReader Close IOException : "

    const-string v1, "BufferedReader Close IOException : "

    const/4 v2, 0x0

    .line 1610
    :try_start_5
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_a} :catch_9a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_66
    .catchall {:try_start_5 .. :try_end_a} :catchall_60

    .line 1611
    :try_start_a
    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_f} :catch_5d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_5a
    .catchall {:try_start_a .. :try_end_f} :catchall_54

    .line 1612
    :try_start_f
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_13} :catch_52
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_13} :catch_50
    .catchall {:try_start_f .. :try_end_13} :catchall_d0

    .line 1620
    :try_start_13
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_17

    goto :goto_30

    :catch_17
    move-exception p0

    .line 1623
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1628
    :goto_30
    :try_start_30
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_35

    goto/16 :goto_cf

    :catch_35
    move-exception p0

    .line 1631
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_cf

    :catch_50
    move-exception v4

    goto :goto_69

    :catch_52
    move-exception v4

    goto :goto_9d

    :catchall_54
    move-exception p0

    move-object v6, v2

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_d1

    :catch_5a
    move-exception v4

    move-object p0, v2

    goto :goto_69

    :catch_5d
    move-exception v4

    move-object p0, v2

    goto :goto_9d

    :catchall_60
    move-exception p0

    move-object v3, v2

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_d1

    :catch_66
    move-exception v4

    move-object p0, v2

    move-object v3, p0

    .line 1616
    :goto_69
    :try_start_69
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6c
    .catchall {:try_start_69 .. :try_end_6c} :catchall_d0

    if-eqz p0, :cond_8b

    .line 1620
    :try_start_6e
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_8b

    :catch_72
    move-exception p0

    .line 1623
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8b
    :goto_8b
    if-eqz v3, :cond_cf

    .line 1628
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_cf

    :catch_91
    move-exception p0

    .line 1631
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3d

    :catch_9a
    move-exception v4

    move-object p0, v2

    move-object v3, p0

    .line 1614
    :goto_9d
    :try_start_9d
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_d0

    if-eqz p0, :cond_bf

    .line 1620
    :try_start_a2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a6

    goto :goto_bf

    :catch_a6
    move-exception p0

    .line 1623
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_bf
    :goto_bf
    if-eqz v3, :cond_cf

    .line 1628
    :try_start_c1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_c4
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_cf

    :catch_c5
    move-exception p0

    .line 1631
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_3d

    :cond_cf
    :goto_cf
    return-object v2

    :catchall_d0
    move-exception v2

    :goto_d1
    if-eqz p0, :cond_f0

    .line 1620
    :try_start_d3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_f0

    :catch_d7
    move-exception p0

    .line 1623
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f0
    :goto_f0
    if-eqz v3, :cond_10f

    .line 1628
    :try_start_f2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_f5
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_f5} :catch_f6

    goto :goto_10f

    :catch_f6
    move-exception p0

    .line 1631
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1633
    :cond_10f
    :goto_10f
    throw v2
.end method


# virtual methods
.method public afpcDataApply()Z
    .registers 4

    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDataApply()"

    .line 1673
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_f

    const/4 v2, 0x5

    if-lt v1, v2, :cond_28

    .line 1675
    :cond_f
    new-instance v1, Ljava/io/File;

    const-string v2, "/efs/afc/mdnie_block"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1676
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataApply(I)I

    const/4 p0, 0x1

    return p0

    :cond_23
    const-string p0, "afpcDataApply - AFC_MDNIE_BLOCK not exist"

    .line 1680
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataOff()Z
    .registers 3

    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDataOff()"

    .line 1688
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x5

    if-lt p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    .line 1690
    :cond_12
    :goto_12
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataOff()I

    const/4 p0, 0x1

    return p0
.end method

.method public afpcDataVerify()Z
    .registers 3

    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "afpcDataVerify() - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AfterimageCompensationService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataVerify()I

    move-result p0

    if-nez p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    const/4 p0, 0x0

    return p0
.end method

.method public afpcDataWrite()Z
    .registers 9

    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDataWrite()"

    .line 1733
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a5

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v1, :cond_a5

    .line 1735
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v1, :cond_a5

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    array-length v3, v3

    if-ge v1, v3, :cond_a5

    .line 1736
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v1

    .line 1737
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "%.2f"

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1738
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1739
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRef:[F

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a5

    .line 1740
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWrite(I)I

    move-result v5

    if-nez v5, :cond_a5

    .line 1742
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1744
    :try_start_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/efs/afc/apply_count"

    .line 1745
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1746
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afpcDataWrite - str : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_8b} :catch_8c

    goto :goto_a4

    :catch_8c
    move-exception v1

    .line 1748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1749
    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    :goto_a4
    return v4

    :cond_a5
    return v2
.end method

.method public afpcDeviceWrite()Z
    .registers 9

    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcDeviceWrite()"

    .line 1761
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_a5

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z

    if-eqz v1, :cond_a5

    .line 1763
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v1, :cond_a5

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    array-length v3, v3

    if-ge v1, v3, :cond_a5

    .line 1764
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F

    move-result v1

    .line 1765
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v5, v2

    const-string v1, "%.2f"

    invoke-static {v3, v1, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1766
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    .line 1767
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    aget v6, v6, v7

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a5

    .line 1768
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I

    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWrite(I)I

    move-result v5

    if-nez v5, :cond_a5

    .line 1770
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    .line 1772
    :try_start_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v3, v1, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/efs/afc/apply_count"

    .line 1773
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1774
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afpcDataWrite - str : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_8b} :catch_8c

    goto :goto_a4

    :catch_8c
    move-exception v1

    .line 1776
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1777
    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    :goto_a4
    return v4

    :cond_a5
    return v2
.end method

.method public afpcWorkOff()Z
    .registers 3

    const-string v0, "AfterimageCompensationService"

    const-string v1, "afpcWorkOff()"

    .line 1697
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1698
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final display_compensation(I)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AfcThread display_compensation - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AfterimageCompensationService"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_1e5

    const/4 v2, 0x4

    if-gt v1, v2, :cond_1e5

    const/16 v4, 0xc

    new-array v5, v4, [I

    new-array v6, v4, [I

    .line 1798
    iput v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    .line 1800
    iget v7, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    iget-object v8, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mBrightnessBorderValue:[I

    const/4 v9, 0x0

    aget v10, v8, v9

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x5

    const/16 v14, 0x8

    const/4 v15, 0x7

    const/16 v16, 0x2

    const/4 v9, 0x6

    const/16 v17, 0x3

    const/16 v18, 0x1

    if-lt v7, v10, :cond_46

    aget v10, v8, v18

    if-ge v7, v10, :cond_46

    :cond_43
    const/4 v11, 0x0

    goto/16 :goto_a8

    .line 1803
    :cond_46
    aget v10, v8, v18

    if-lt v7, v10, :cond_52

    aget v10, v8, v16

    if-ge v7, v10, :cond_52

    move/from16 v11, v18

    goto/16 :goto_a8

    .line 1806
    :cond_52
    aget v10, v8, v16

    if-lt v7, v10, :cond_5d

    aget v10, v8, v17

    if-ge v7, v10, :cond_5d

    move/from16 v11, v16

    goto :goto_a8

    .line 1809
    :cond_5d
    aget v10, v8, v17

    if-lt v7, v10, :cond_68

    aget v10, v8, v2

    if-ge v7, v10, :cond_68

    move/from16 v11, v17

    goto :goto_a8

    .line 1812
    :cond_68
    aget v10, v8, v2

    if-lt v7, v10, :cond_72

    aget v10, v8, v13

    if-ge v7, v10, :cond_72

    move v11, v2

    goto :goto_a8

    .line 1815
    :cond_72
    aget v10, v8, v13

    if-lt v7, v10, :cond_7c

    aget v10, v8, v9

    if-ge v7, v10, :cond_7c

    move v11, v13

    goto :goto_a8

    .line 1818
    :cond_7c
    aget v10, v8, v9

    if-lt v7, v10, :cond_86

    aget v10, v8, v15

    if-ge v7, v10, :cond_86

    move v11, v9

    goto :goto_a8

    .line 1821
    :cond_86
    aget v10, v8, v15

    if-lt v7, v10, :cond_90

    aget v10, v8, v14

    if-ge v7, v10, :cond_90

    move v11, v15

    goto :goto_a8

    .line 1824
    :cond_90
    aget v10, v8, v14

    if-lt v7, v10, :cond_9a

    aget v10, v8, v12

    if-ge v7, v10, :cond_9a

    move v11, v14

    goto :goto_a8

    .line 1827
    :cond_9a
    aget v10, v8, v12

    if-lt v7, v10, :cond_a4

    aget v10, v8, v11

    if-ge v7, v10, :cond_a4

    move v11, v12

    goto :goto_a8

    .line 1830
    :cond_a4
    aget v8, v8, v11

    if-lt v7, v8, :cond_43

    :goto_a8
    const/4 v7, 0x0

    :goto_a9
    const/16 v8, 0xff

    if-ge v7, v4, :cond_122

    .line 1839
    iget-object v10, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v10, v10, v7

    if-ltz v10, :cond_11b

    if-gt v10, v8, :cond_11b

    .line 1840
    rem-int/lit8 v12, v7, 0x3

    .line 1841
    iget-object v13, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mXrgbTable:[[I

    aget-object v13, v13, v12

    aget v10, v13, v10

    aput v10, v5, v7

    const/16 v13, 0x88

    if-lt v10, v13, :cond_118

    if-gt v10, v8, :cond_118

    add-int/lit16 v10, v10, -0xff

    neg-int v10, v10

    mul-int/lit8 v12, v12, 0x78

    add-int/2addr v10, v12

    .line 1846
    iget-object v12, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcTable:[[[I

    add-int/lit8 v16, v1, -0x1

    aget-object v12, v12, v16

    aget-object v12, v12, v11

    aget v12, v12, v10

    aput v12, v6, v7

    .line 1847
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AFC i = "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mLuminance  = "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mXRGB -  "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v5, v7

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", index  = "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mAFC  = "

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v6, v7

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    aget v4, v6, v7

    if-lt v4, v13, :cond_115

    if-le v4, v8, :cond_11d

    .line 1849
    :cond_115
    aput v8, v6, v7

    goto :goto_11d

    .line 1853
    :cond_118
    aput v8, v6, v7

    goto :goto_11d

    .line 1857
    :cond_11b
    aput v8, v6, v7

    :cond_11d
    :goto_11d
    add-int/lit8 v7, v7, 0x1

    const/16 v4, 0xc

    goto :goto_a9

    .line 1861
    :cond_122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1863
    iget-boolean v4, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPCVersion1:Z

    const-string v5, "1 "

    const-string v7, " "

    if-eqz v4, :cond_183

    aget v4, v6, v9

    aget v9, v6, v15

    if-lt v4, v9, :cond_137

    move v10, v9

    goto :goto_138

    :cond_137
    move v10, v4

    :goto_138
    aget v6, v6, v14

    if-lt v10, v6, :cond_13d

    move v10, v6

    :cond_13d
    mul-int/2addr v10, v8

    mul-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v10

    .line 1869
    div-int/2addr v8, v4

    mul-int/lit8 v4, v9, 0x2

    add-int/2addr v4, v10

    .line 1870
    div-int/2addr v4, v9

    mul-int/lit8 v9, v6, 0x2

    add-int/2addr v10, v9

    .line 1871
    div-int/2addr v10, v6

    .line 1873
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1875
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1876
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1877
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1878
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1879
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1881
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1882
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1883
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " 255 255 255 "

    .line 1885
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1886
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1887
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1888
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1889
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1890
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1b8

    .line 1893
    :cond_183
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v17

    :goto_188
    if-ge v4, v9, :cond_195

    .line 1895
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    aget v5, v6, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_188

    :cond_195
    move/from16 v4, v17

    :goto_197
    if-ge v4, v9, :cond_1a4

    .line 1899
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1900
    aget v5, v6, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_197

    :cond_1a4
    const-string v4, " 255 255 255"

    .line 1902
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v17

    :goto_1ab
    if-ge v4, v9, :cond_1b8

    .line 1904
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1905
    aget v5, v6, v4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1ab

    .line 1909
    :cond_1b8
    :goto_1b8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AFC - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/sys/class/mdnie/mdnie/afc"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1911
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/efs/afc/afc_data"

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1919
    iget v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ne v1, v2, :cond_1e5

    const/4 v1, 0x0

    .line 1920
    iput-boolean v1, v0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    :cond_1e5
    return-void
.end method

.method public final fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 1639
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    const-string v0, "AfterimageCompensationService"

    if-eqz p0, :cond_22

    .line 1640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  value : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 1644
    :try_start_24
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2e} :catch_3f
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_2e} :catch_3d

    .line 1649
    :try_start_2e
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1650
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_38} :catch_3a

    const/4 p0, 0x1

    return p0

    :catch_3a
    move-exception p1

    move-object v1, v2

    goto :goto_54

    :catch_3d
    move-exception p1

    goto :goto_54

    .line 1646
    :catch_3f
    :try_start_3f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fileWriteString : file not found : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_53} :catch_3d

    return p0

    .line 1652
    :goto_54
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1654
    :try_start_57
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p1

    .line 1656
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    return p0
.end method

.method public final getAfcLoggingData()Z
    .registers 10

    const-string v0, "AfterimageCompensationService"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "/efs/afc/logging_data"

    .line 1190
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d5

    .line 1192
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_15} :catch_d1

    .line 1194
    :try_start_15
    array-length v3, v2

    const/16 v4, 0xf

    const/4 v5, 0x1

    if-ne v3, v4, :cond_d5

    .line 1195
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAfcState - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    .line 1198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interpolationCount - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    .line 1199
    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    .line 1200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interpolationLuminance - "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    move v6, v1

    :goto_84
    if-ge v3, v4, :cond_b9

    .line 1203
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v6

    .line 1204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "interpolationCoprRoi_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " value - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v8, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b4
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_b4} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_b4} :catch_d1

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_84

    :cond_b9
    move v1, v5

    goto :goto_d5

    :catch_bb
    move-exception p0

    .line 1211
    :try_start_bc
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_d0} :catch_d1

    goto :goto_d5

    :catch_d1
    move-exception p0

    .line 1216
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d5
    :goto_d5
    return v1
.end method

.method public final getAverage(IID)D
    .registers 9

    int-to-double v0, p1

    int-to-double v2, p2

    if-lez p1, :cond_11

    const p0, 0x10c8e0

    if-gt p1, p0, :cond_11

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    sub-double p0, v0, p0

    mul-double/2addr p0, p3

    add-double/2addr p0, v2

    div-double v2, p0, v0

    :cond_11
    return-wide v2
.end method

.method public final getBrightness()Z
    .registers 5

    .line 1225
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel/brt_avg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 1227
    :try_start_e
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_36

    if-eqz v0, :cond_3a

    .line 1230
    :try_start_14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_36

    if-ltz v0, :cond_3a

    const/4 v2, 0x1

    goto :goto_3a

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string v0, "AfterimageCompensationService"

    .line 1236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 1241
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return v2
.end method

.method public final getBrightness_sub()Z
    .registers 5

    .line 1250
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/lcd/panel1/brt_avg"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3a

    .line 1252
    :try_start_e
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_12} :catch_36

    if-eqz v0, :cond_3a

    .line 1255
    :try_start_14
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance_sub:I
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_1a} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_36

    if-ltz v0, :cond_3a

    const/4 v2, 0x1

    goto :goto_3a

    :catch_1e
    move-exception p0

    :try_start_1f
    const-string v0, "AfterimageCompensationService"

    .line 1261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p0

    .line 1266
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    return v2
.end method

.method public final getCoprRoiNBrightness()Z
    .registers 10

    const-string v0, "NumberFormatException : "

    const-string v1, "AfterimageCompensationService"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1941
    :try_start_6
    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_8} :catch_b0

    const-string v5, "CoprRoi = "

    const/16 v6, 0xc

    if-ne v4, v2, :cond_5f

    :try_start_e
    const-string v4, "/sys/class/sensors/light_sensor/copr_roix"

    .line 1942
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b4

    .line 1944
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1945
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_32} :catch_b0

    .line 1947
    :try_start_32
    array-length v4, v7

    if-ne v4, v6, :cond_b4

    move v4, v3

    :goto_36
    if-ge v4, v6, :cond_49

    .line 1949
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v4
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_46} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_46} :catch_b0

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_49
    move v4, v2

    goto :goto_b5

    :catch_4b
    move-exception v4

    .line 1955
    :try_start_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    :cond_5f
    if-nez v4, :cond_b4

    const-string v4, "/sys/class/lcd/panel/copr_roi"

    .line 1960
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b4

    .line 1962
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1963
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_85} :catch_b0

    .line 1965
    :try_start_85
    array-length v4, v7

    if-ne v4, v6, :cond_b4

    move v4, v3

    :goto_89
    if-ge v4, v6, :cond_49

    .line 1967
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v5, v4
    :try_end_99
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_99} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_99} :catch_b0

    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    :catch_9c
    move-exception v4

    .line 1973
    :try_start_9d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_af} :catch_b0

    goto :goto_b4

    :catch_b0
    move-exception v4

    .line 1979
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b4
    :goto_b4
    move v4, v3

    :goto_b5
    :try_start_b5
    const-string v5, "/sys/class/lcd/panel/brt_avg"

    .line 1983
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f3

    .line 1985
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BRIGHTNESS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_d1} :catch_ef

    .line 1987
    :try_start_d1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    :try_end_d7
    .catch Ljava/lang/NumberFormatException; {:try_start_d1 .. :try_end_d7} :catch_db
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_d7} :catch_ef

    if-ltz v5, :cond_f3

    move p0, v2

    goto :goto_f4

    :catch_db
    move-exception p0

    .line 1993
    :try_start_dc
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_ee} :catch_ef

    goto :goto_f3

    :catch_ef
    move-exception p0

    .line 1998
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f3
    :goto_f3
    move p0, v3

    :goto_f4
    if-eqz v4, :cond_f9

    if-eqz p0, :cond_f9

    goto :goto_fa

    :cond_f9
    move v2, v3

    :goto_fa
    return v2
.end method

.method public final getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p0, "File Close error"

    const-string v0, "AfterimageCompensationService"

    const/16 v1, 0x80

    new-array v2, v1, [B

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    if-ge v4, v1, :cond_11

    .line 1546
    aput-byte v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    const/4 v1, 0x0

    .line 1549
    :try_start_12
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_1c} :catch_63
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_44
    .catchall {:try_start_12 .. :try_end_1c} :catchall_42

    .line 1551
    :try_start_1c
    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-eqz p1, :cond_2c

    .line 1553
    new-instance v5, Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v2, v3, p1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v5

    .line 1555
    :cond_2c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_2f} :catch_3e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2f} :catch_3a
    .catchall {:try_start_1c .. :try_end_2f} :catchall_37

    .line 1566
    :try_start_2f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_83

    .line 1568
    :catch_33
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :catchall_37
    move-exception p1

    move-object v1, v4

    goto :goto_84

    :catch_3a
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_46

    :catch_3e
    move-exception p1

    move-object v2, v1

    move-object v1, v4

    goto :goto_65

    :catchall_42
    move-exception p1

    goto :goto_84

    :catch_44
    move-exception p1

    move-object v2, v1

    .line 1561
    :goto_46
    :try_start_46
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 1562
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IOException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_46 .. :try_end_5d} :catchall_42

    if-eqz v1, :cond_82

    .line 1566
    :try_start_5f
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_7f

    goto :goto_82

    :catch_63
    move-exception p1

    move-object v2, v1

    .line 1559
    :goto_65
    :try_start_65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FileNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catchall {:try_start_65 .. :try_end_79} :catchall_42

    if-eqz v1, :cond_82

    .line 1566
    :try_start_7b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7e} :catch_7f

    goto :goto_82

    .line 1568
    :catch_7f
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    :goto_82
    move-object v1, v2

    :goto_83
    return-object v1

    :goto_84
    if-eqz v1, :cond_8d

    .line 1566
    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8d

    .line 1568
    :catch_8a
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    :cond_8d
    :goto_8d
    throw p1
.end method

.method public final handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 1506
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string v1, "AfterimageCompensationService"

    if-eqz v0, :cond_23

    const-string/jumbo v0, "sendBroadcastToHWParam() mSemHqmManager.sendHWParamToHQM"

    .line 1507
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mSemHqmManager:Landroid/os/SemHqmManager;

    const/4 v3, 0x0

    const-string v4, "Display"

    const-string/jumbo v6, "sm"

    const-string v7, "0.0"

    const-string/jumbo v8, "sec"

    const-string v9, ""

    const-string v11, ""

    move-object v5, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v11}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_29

    :cond_23
    const-string/jumbo p0, "sendBroadcastToHWParam() mSemHqmManager is null"

    .line 1511
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    return-void
.end method

.method public final initLoggingData()V
    .registers 10

    .line 1122
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc/logging_data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3d

    .line 1125
    invoke-virtual {p0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAfcLoggingData()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1126
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ltz v5, :cond_3d

    if-gt v5, v2, :cond_3d

    .line 1127
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    if-ltz v5, :cond_3d

    const v6, 0x10c8e0

    if-gt v5, v6, :cond_3d

    .line 1128
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    .line 1129
    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    int-to-double v5, v5

    iput-wide v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D

    move v5, v4

    :goto_2f
    if-ge v5, v1, :cond_3d

    .line 1131
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v7, v7, v5

    int-to-double v7, v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2f

    .line 1137
    :cond_3d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLogginFileExist =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAfcState - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", interpolationCount - "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mAfcLoggingDataValid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AfterimageCompensationService"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-nez v5, :cond_85

    .line 1140
    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    .line 1141
    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    .line 1142
    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    move v5, v4

    :goto_7c
    if-ge v5, v1, :cond_85

    .line 1144
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aput v4, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 1147
    :cond_85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAfcState - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-ge v0, v2, :cond_aa

    .line 1150
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    goto :goto_c0

    .line 1153
    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAfcState is already done - mAfcState - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    :goto_c0
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcLoggingDataValid:Z

    if-eqz v0, :cond_f9

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    if-lez v0, :cond_f9

    if-gt v0, v2, :cond_f9

    .line 1157
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc/afc_data"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 1159
    :try_start_d7
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AFC registe data is - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "/sys/class/mdnie/mdnie/afc"

    .line 1161
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_f4} :catch_f5

    goto :goto_f9

    :catch_f5
    move-exception p0

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f9
    :goto_f9
    return-void
.end method

.method public final parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x0

    .line 1520
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6} :catch_16

    const/4 v0, 0x0

    :goto_7
    if-ge v0, p3, :cond_1b

    .line 1522
    :try_start_9
    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :catch_13
    move-exception p1

    move-object v0, v1

    goto :goto_17

    :catch_16
    move-exception p1

    .line 1526
    :goto_17
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v1, v0

    .line 1529
    :cond_1b
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\{"

    const-string p3, ""

    .line 1530
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\}"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1531
    iget-boolean p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z

    if-eqz p0, :cond_47

    .line 1532
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "customDataSet : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "AfterimageCompensationService"

    invoke-static {p2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    return-object p1
.end method

.method public final processApplyData_main()V
    .registers 6

    .line 1435
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc/apply_count"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "AfterimageCompensationService"

    if-eqz v0, :cond_5e

    .line 1438
    :try_start_f
    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1440
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1f} :catch_5a

    .line 1442
    :try_start_1f
    array-length v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3e

    .line 1443
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v1, 0x1

    .line 1444
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    goto :goto_5e

    .line 1447
    :cond_3e
    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    const/4 v0, 0x0

    .line 1448
    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_5a

    goto :goto_5e

    :catch_44
    move-exception v0

    .line 1451
    :try_start_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 1455
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1458
    :cond_5e
    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processApplyData_main() mApplyCount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mApplyValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final processApplyData_sub()V
    .registers 6

    .line 1462
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/afc1/apply_count"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v2, "AfterimageCompensationService"

    if-eqz v0, :cond_5e

    .line 1465
    :try_start_f
    invoke-virtual {p0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 1467
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1f} :catch_5a

    .line 1469
    :try_start_1f
    array-length v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v3, :cond_3e

    .line 1470
    aget-object v1, v0, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    const/4 v1, 0x1

    .line 1471
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    goto :goto_5e

    .line 1474
    :cond_3e
    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    const/4 v0, 0x0

    .line 1475
    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_43} :catch_44
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_43} :catch_5a

    goto :goto_5e

    :catch_44
    move-exception v0

    .line 1478
    :try_start_45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NumberFormatException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_59} :catch_5a

    goto :goto_5e

    :catch_5a
    move-exception v0

    .line 1482
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1485
    :cond_5e
    :goto_5e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processApplyData_sub() mApplyCount_sub : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mApplyValue_sub : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final receive_screen_off_intent()V
    .registers 2

    const/4 v0, 0x0

    .line 670
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    return-void
.end method

.method public final receive_screen_on_intent()V
    .registers 2

    .line 658
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    .line 659
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z

    const/4 v0, 0x0

    .line 660
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 661
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    if-eqz v0, :cond_19

    .line 662
    monitor-enter v0

    .line 663
    :try_start_f
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 664
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw p0

    :cond_19
    :goto_19
    return-void
.end method

.method public updateAlwaysOnDisplayForBurnInService(ZI)V
    .registers 5

    .line 674
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z

    if-eqz v0, :cond_1f

    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1f

    if-eqz p1, :cond_1f

    .line 676
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadAODCondition:Z

    .line 677
    iput p2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AodBrightness:I

    .line 678
    iget-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    if-eqz p1, :cond_1f

    .line 679
    monitor-enter p1

    .line 680
    :try_start_15
    iget-object p0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 681
    monitor-exit p1

    goto :goto_1f

    :catchall_1c
    move-exception p0

    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_1c

    throw p0

    :cond_1f
    :goto_1f
    return-void
.end method

.method public final updateHWParam()V
    .registers 4

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    .line 1489
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount_sub:I

    .line 1490
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue_sub:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum_sub:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI_sub:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI_sub:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum_sub:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI_sub:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI_sub:D

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 1491
    sget-object v1, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAFPC_KEYS:[Ljava/lang/String;

    array-length v2, v1

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->parseBigData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DIQE"

    .line 1492
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final update_check_panel_id()V
    .registers 10

    const-string v0, "/sys/class/lcd/panel1/cell_id"

    const-string v1, "/sys/class/lcd/panel/cell_id"

    const-string v2, "AfterimageCompensationService"

    const-string/jumbo v3, "update_cell_id() function start"

    .line 1277
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1280
    :try_start_d
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_30

    goto :goto_1e

    :cond_1d
    move-object v1, v3

    .line 1281
    :goto_1e
    :try_start_1e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2d} :catch_2e

    goto :goto_36

    :catch_2e
    move-exception v0

    goto :goto_32

    :catch_30
    move-exception v0

    move-object v1, v3

    .line 1284
    :goto_32
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    move-object v0, v3

    .line 1286
    :goto_36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "USER_PANEL_INFO_SUB : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/afc/cell_id"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v6, " , EFS_PANEL_INFO : "

    if-eqz v4, :cond_206

    .line 1291
    :try_start_6d
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_71} :catch_88

    .line 1292
    :try_start_71
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EFS_PANEL_INFO : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_85} :catch_86

    goto :goto_8d

    :catch_86
    move-exception v7

    goto :goto_8a

    :catch_88
    move-exception v7

    move-object v4, v3

    .line 1295
    :goto_8a
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8d
    if-eqz v4, :cond_1df

    .line 1297
    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1df

    const-string v7, "EFS_PANEL_INFO , USER_PANEL_INFO Diff O"

    .line 1298
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 1301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fileWriteString success_1 USER_PANEL_INFO : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :cond_ba
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/afc_data"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d7

    .line 1305
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_d7

    const-string v1, "AFC_REG_DATA.delete() success"

    .line 1306
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_d7
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/logging_data"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_f4

    .line 1311
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_f4

    const-string v1, "AFC_LOGGING_DATA.delete() success"

    .line 1312
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_f4
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/rewrited"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1316
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_111

    const-string v1, "MCA_REWRITED.delete() success"

    .line 1317
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_111
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/original.vec"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_12e

    .line 1321
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_12e

    const-string v1, "MCA_ORG_VEC.delete() success"

    .line 1322
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    :cond_12e
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/org.vec"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_14b

    .line 1326
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_14b

    const-string v1, "AFC_ORIGINAL_VEC.delete() success"

    .line 1327
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_14b
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/time_data"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_168

    .line 1331
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_168

    const-string v1, "AFC_TIME_DATA.delete() success"

    .line 1332
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_168
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/diff_data"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_185

    .line 1336
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_185

    const-string v1, "AFC_DIFF_DATA.delete() success"

    .line 1337
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_185
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/poc_data"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a2

    .line 1341
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1a2

    const-string v1, "AFC_POC_DATA.delete() success"

    .line 1342
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    :cond_1a2
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/apply_count"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1bf

    .line 1346
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_1bf

    const-string v1, "AFC_APPLY_COUNT.delete() success"

    .line 1347
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_1bf
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/mdnie_block"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_233

    .line 1351
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc/mdnie_block"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_233

    const-string v1, "AFC_MDNIE_BLOCK.delete() success"

    .line 1352
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_233

    :cond_1df
    if-nez v4, :cond_200

    if-eqz v1, :cond_200

    const-string v6, "EFS_PANEL_INFO value is NULL"

    .line 1358
    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE EFS_PANEL_INFO : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_233

    :cond_200
    const-string v1, "EFS_PANEL_INFO , USER_PANEL_INFO Diff X"

    .line 1363
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_233

    .line 1367
    :cond_206
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_233

    if-eqz v1, :cond_233

    .line 1368
    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_233

    .line 1369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fileWriteString success_2 USER_PANEL_INFO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    :cond_233
    :goto_233
    new-instance v1, Ljava/io/File;

    const-string v4, "/efs/afc1/cell_id"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v5, " , EFS_PANEL_INFO_SUB : "

    if-eqz v1, :cond_345

    .line 1375
    :try_start_242
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->readStrFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EFS_PANEL_INFO_SUB : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25a
    .catch Ljava/lang/Exception; {:try_start_242 .. :try_end_25a} :catch_25b

    goto :goto_25f

    :catch_25b
    move-exception v1

    .line 1379
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25f
    if-eqz v3, :cond_31e

    .line 1381
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31e

    const-string v1, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff O"

    .line 1383
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_28c

    .line 1386
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString success_1 USER_PANEL_INFO_SUB : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_28c
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/afc1/time_data"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2a9

    .line 1390
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2a9

    const-string p0, "AFC_TIME_DATA_SUB.delete() success"

    .line 1391
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    :cond_2a9
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/afc1/diff_data"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2c6

    .line 1395
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2c6

    const-string p0, "AFC_DIFF_DATA_SUB.delete() success"

    .line 1396
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_2c6
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/afc1/poc_data"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_2e3

    .line 1400
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2e3

    const-string p0, "AFC_POC_DATA_SUB.delete() success"

    .line 1401
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_2e3
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/afc1/apply_count"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_300

    .line 1405
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_300

    const-string p0, "AFC_APPLY_COUNT_SUB.delete() success"

    .line 1406
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    :cond_300
    new-instance p0, Ljava/io/File;

    const-string v0, "/efs/afc1/mdnie_block"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_372

    .line 1410
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_372

    const-string p0, "AFC_MDNIE_BLOCK_SUB.delete() success"

    .line 1411
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_372

    :cond_31e
    if-nez v3, :cond_33f

    if-eqz v0, :cond_33f

    const-string v1, "EFS_PANEL_INFO_SUB value is NULL"

    .line 1417
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1419
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDATE EFS_PANEL_INFO_SUB : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_372

    :cond_33f
    const-string p0, "EFS_PANEL_INFO_SUB , USER_PANEL_INFO_SUB Diff X"

    .line 1422
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_372

    .line 1426
    :cond_345
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_372

    if-eqz v0, :cond_372

    .line 1427
    invoke-virtual {p0, v4, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_372

    .line 1428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fileWriteString success_3 USER_PANEL_INFO_SUB : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_372
    :goto_372
    const-string/jumbo p0, "update_cell_id() function end"

    .line 1431
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final writeLoggingDataEfs()V
    .registers 5

    .line 1171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    .line 1173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    iget v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_1d
    const/16 v3, 0xc

    if-ge v2, v3, :cond_2e

    .line 1178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1179
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 1181
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AFC Loggin Data - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AfterimageCompensationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/efs/afc/logging_data"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
