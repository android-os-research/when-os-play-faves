.class public Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;
.super Ljava/lang/Object;
.source "SemBioAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/SemBioAnalyticsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DQAManager"
.end annotation


# static fields
.field public static final ACTION_DQA_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field public static final FACE_FILE_DQA_NAME:Ljava/lang/String; = "settings_face_ext_bigdata.xml"

.field public static final FP_FILE_DQA_NAME:Ljava/lang/String; = "settings_fingerprint_ext_bigdata.xml"


# instance fields
.field public final FACE_FEATURE_HAL:Z

.field public final mContext:Landroid/content/Context;

.field public final mFaceBigDataNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFingerprintDaemonVersion:Ljava/lang/String;

.field public final mFpBigDataNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mPreviousSavedTime:J

.field public mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method public static synthetic $r8$lambda$19gi2xlK9QPuMAKjfey6LrFogyw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->lambda$writeDqaDataToFile$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetFACE_FEATURE_HAL(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->FACE_FEATURE_HAL:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mfaceGetDqaDataFormatToSave(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->faceGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfpGetDqaDataFormatToSave(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfpSendDaemonVersion(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpSendDaemonVersion()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msend(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->send()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mwriteDqaDataToFile(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .line 841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 833
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 834
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 836
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 842
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    const-string v0, "HqmManagerService"

    .line 843
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-wide/16 v0, 0x0

    .line 844
    iput-wide v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    .line 845
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->FACE_FEATURE_HAL:Z

    .line 846
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->resetDqaData()V

    .line 847
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    if-eqz v1, :cond_41

    const-string/jumbo v1, "settings_fingerprint_ext_bigdata.xml"

    .line 848
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->readDqaDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpParseAndUpdateMap(Ljava/lang/String;)V

    :cond_41
    if-eqz v0, :cond_4d

    const-string/jumbo v0, "settings_face_ext_bigdata.xml"

    .line 852
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->readDqaDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->faceParseAndUpdateMap(Ljava/lang/String;)V

    .line 856
    :cond_4d
    :try_start_4d
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 857
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 858
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    new-instance v2, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;-><init>(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    .line 880
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    .line 881
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v6

    move-object v1, p1

    .line 880
    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_70} :catch_71

    goto :goto_88

    :catch_71
    move-exception p0

    .line 883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DQAManager: registerBroadCastReceiver : failed, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService.AM"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_88
    return-void
.end method

.method public static synthetic lambda$writeDqaDataToFile$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1019
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DQAManager.writeDqaData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService.AM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    :cond_1c
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-nez p0, :cond_2c

    .line 1023
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_33

    .line 1025
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/biometrics/Utils;->writeFile(Ljava/io/File;[B)Z

    :goto_33
    return-void
.end method


# virtual methods
.method public final faceGetDqaDataFormatToSave()Ljava/lang/String;
    .registers 7

    const-string v0, ":"

    const-string v1, "BiometricService.AM"

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1080
    :try_start_9
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1081
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    .line 1082
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1083
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_13

    :catch_32
    move-exception p0

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatDqaDataToSave: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1089
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatDqaDataToSave: formatData = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-object p0
.end method

.method public faceHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 4

    .line 911
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 912
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 913
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->needToSaveBigFeatures()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 915
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->faceGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "settings_face_ext_bigdata.xml"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 918
    :cond_36
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3d
    :goto_3d
    return-void
.end method

.method public final faceParseAndUpdateMap(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_67

    .line 966
    :try_start_2
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 967
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_c

    add-int/lit8 v2, v2, 0x5

    .line 969
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 970
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 971
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 972
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_c

    :catch_4c
    move-exception p0

    .line 976
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DQAManager.faceParseAndUpdateMap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService.AM"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void
.end method

.method public final fpGetDqaDataFormatToSave()Ljava/lang/String;
    .registers 7

    const-string v0, ":"

    const-string v1, "BiometricService.AM"

    .line 1057
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    :try_start_9
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1061
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    .line 1062
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_13

    :catch_32
    move-exception p0

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "formatDqaDataToSave: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1069
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatDqaDataToSave: formatData = ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6e
    return-object p0
.end method

.method public fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V
    .registers 4

    .line 896
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    const-string v1, "FPDA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 897
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    .line 899
    :cond_e
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 900
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 901
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->needToSaveBigFeatures()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 903
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpGetDqaDataFormatToSave()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "settings_fingerprint_ext_bigdata.xml"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b

    .line 906
    :cond_44
    iget-object v0, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mFeature:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;->mExtra:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFingerprintBigData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    :goto_4b
    return-void
.end method

.method public final fpParseAndUpdateMap(Ljava/lang/String;)V
    .registers 6

    if-eqz p1, :cond_67

    .line 948
    :try_start_2
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 949
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_c

    add-int/lit8 v2, v2, 0x5

    .line 951
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 952
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 953
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v2, v3

    .line 954
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4b} :catch_4c

    goto :goto_c

    :catch_4c
    move-exception p0

    .line 958
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DQAManager.fpParseAndUpdateMap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BiometricService.AM"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    return-void
.end method

.method public final fpSendDaemonVersion()V
    .registers 6

    .line 888
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 889
    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFingerprintDaemonVersion:Ljava/lang/String;

    const/4 v2, -0x1

    const/4 v3, 0x2

    const-string v4, "FPDA"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->fpHandleDqaData(Lcom/android/server/biometrics/SemBioAnalyticsManager$EventData;)V

    :cond_16
    return-void
.end method

.method public final needToSaveBigFeatures()Z
    .registers 5

    .line 1048
    iget-wide v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    return p0

    .line 1049
    :cond_19
    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mPreviousSavedTime:J

    const/4 p0, 0x1

    return p0
.end method

.method public final readDqaDataFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1032
    new-instance p0, Ljava/io/File;

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1034
    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->readFile(Ljava/io/File;)[B

    move-result-object p0

    const-string p1, "DQAManager.readDqaDataFromFile: "

    const-string v0, "BiometricService.AM"

    if-eqz p0, :cond_31

    .line 1037
    :try_start_14
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_32

    :catch_1a
    move-exception p0

    .line 1039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const/4 v1, 0x0

    .line 1042
    :goto_32
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->-$$Nest$sfgetDEBUG()Z

    move-result p0

    if-eqz p0, :cond_4a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    return-object v1
.end method

.method public final resetDqaData()V
    .registers 4

    .line 982
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    const/4 v1, 0x0

    .line 983
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v0, :cond_72

    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPIS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPIF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPGT"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQP"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 987
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 989
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPQL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPMV"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 994
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPOS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPOF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPFS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 997
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    const-string v2, "FPFF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 999
    :cond_72
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->FACE_FEATURE_HAL:Z

    if-eqz v0, :cond_d8

    .line 1000
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAIS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAIF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1002
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAFS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAFF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FATO"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQN"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQL"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQF"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1009
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQS"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FAQM"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FALI"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v2, "FALQ"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    const-string v0, "FANM"

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d8
    return-void
.end method

.method public final send()V
    .registers 5

    .line 924
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 925
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 926
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFpBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_f

    .line 928
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFingerprintBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_31
    const-string/jumbo v0, "settings_fingerprint_ext_bigdata.xml"

    .line 931
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_37
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->FACE_FEATURE_HAL:Z

    if-eqz v0, :cond_6d

    .line 934
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_45
    :goto_45
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_67

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 935
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mFaceBigDataNameMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_45

    .line 937
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :cond_67
    const-string/jumbo v0, "settings_face_ext_bigdata.xml"

    .line 940
    invoke-virtual {p0, v0, v1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    :cond_6d
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->resetDqaData()V

    return-void
.end method

.method public final sendFaceBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1128
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "BiometricService.AM"

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DQAManager.sendFaceBigData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    :cond_40
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-nez p2, :cond_50

    .line 1131
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/SemHqmManager;

    iput-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 1133
    :cond_50
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v3, :cond_68

    const/4 v4, 0x0

    const-string v5, "Camera"

    const-string/jumbo v7, "ph"

    const-string v8, "0.0"

    const-string/jumbo v9, "sec"

    const-string v10, ""

    const-string v12, ""

    move-object v6, p1

    .line 1134
    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6d

    :cond_68
    const-string p0, "DQAManager.sendFaceBigData: SemHqmManager is null!!"

    .line 1137
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    return-void
.end method

.method public final sendFingerprintBigData(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1105
    invoke-static {}, Lcom/android/server/biometrics/SemBioAnalyticsManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    const-string v1, "BiometricService.AM"

    if-eqz v0, :cond_40

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DQAManager.sendFingerprintBigData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_40
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-nez p2, :cond_50

    .line 1108
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/SemHqmManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/SemHqmManager;

    iput-object p2, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    .line 1110
    :cond_50
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v3, :cond_68

    const/4 v4, 0x0

    const-string v5, "BFS"

    const-string/jumbo v7, "ph"

    const-string v8, "0.0"

    const-string/jumbo v9, "sec"

    const-string v10, ""

    const-string v12, ""

    move-object v6, p1

    .line 1111
    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_6d

    :cond_68
    const-string p0, "DQAManager.sendFingerprintBigData: SemHqmManager is null!!"

    .line 1114
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6d
    return-void
.end method

.method public final writeDqaDataToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1018
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
