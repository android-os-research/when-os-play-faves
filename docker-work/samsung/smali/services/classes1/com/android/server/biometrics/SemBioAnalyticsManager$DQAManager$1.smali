.class public Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemBioAnalyticsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V
    .registers 2

    .line 859
    iput-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 862
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 863
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBroadCastReceive [DQA]: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BiometricService.AM"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_54

    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    goto :goto_5e

    .line 870
    :cond_2f
    sget-boolean p1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SUPPORT_FINGERPRINT:Z

    if-eqz p1, :cond_3f

    .line 871
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-static {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$mfpGetDqaDataFormatToSave(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "settings_fingerprint_ext_bigdata.xml"

    invoke-static {p1, v0, p2}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$mwriteDqaDataToFile(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    :cond_3f
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-static {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$fgetFACE_FEATURE_HAL(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 874
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-static {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$mfaceGetDqaDataFormatToSave(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "settings_face_ext_bigdata.xml"

    invoke-static {p0, p2, p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$mwriteDqaDataToFile(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 866
    :cond_54
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-static {p1}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$msend(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    .line 867
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager$1;->this$0:Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;

    invoke-static {p0}, Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;->-$$Nest$mfpSendDaemonVersion(Lcom/android/server/biometrics/SemBioAnalyticsManager$DQAManager;)V

    :cond_5e
    :goto_5e
    return-void
.end method
