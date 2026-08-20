.class public Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PersonaHandler"
.end annotation


# static fields
.field public static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 1084
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 1085
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string p0, "PersonaHandler"

    .line 1086
    invoke-static {p1, p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13

    .line 1091
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v1, "PersonaHandler"

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mcheckCallerPermissionFor(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)I

    .line 1092
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_45e

    const/16 v3, 0x1e

    if-eq v0, v3, :cond_43c

    const/16 v3, 0x3c

    if-eq v0, v3, :cond_438

    const/16 v3, 0x50

    if-eq v0, v3, :cond_405

    const/16 v3, 0x5a

    if-eq v0, v3, :cond_3e6

    const/16 v3, 0x63

    const/4 v4, 0x1

    const/high16 v5, 0x10000000

    if-eq v0, v3, :cond_32f

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_31b

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_466

    packed-switch v0, :pswitch_data_470

    const-string p0, "PersonaManagerService"

    const-string/jumbo p1, "msg : ignore unknown message"

    .line 1313
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_465

    :pswitch_3a
    const-string p1, "PersonaManagerService"

    const-string v0, "MSG_KNOX_APP_SEPARATION_CLEAN_UP "

    .line 1238
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menforceSeparatedAppsRemoveInternal(Lcom/android/server/pm/PersonaManagerService;)Z

    goto/16 :goto_465

    :pswitch_48
    const-string v0, "PersonaManagerService"

    const-string v1, "MSG_KNOX_APP_SEPARATION_ACTIVATION"

    .line 1254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1256
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetIMEPackages(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fputmImeSet(Lcom/android/server/pm/PersonaManagerService;Ljava/util/Set;)V

    .line 1257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmImeSet(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1258
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1259
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_91

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "PersonaManagerService"

    .line 1260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_KNOX_APP_SEPARATION_ACTIVATION: packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6e

    .line 1262
    :cond_91
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.action.PROVISION_KNOX_PROFILE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.appseparation"

    const-string v2, "com.samsung.android.appseparation.receiver.ProvisionReceiver"

    .line 1264
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "packageNames"

    .line 1265
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1266
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1268
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PersonaManagerService;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "APP_SEPARATION_APP_LIST"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventActivationForAppSep(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_465

    .line 1248
    :pswitch_ca
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1249
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaManagerService;->processAppSeparationInstallationInternal(Ljava/lang/String;)I

    move-result p0

    const-string p1, "PersonaManagerService"

    .line 1250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MSG_KNOX_APP_SEPARATION_INSTALLATION - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_465

    :pswitch_ec
    const-string p1, "PersonaManagerService"

    const-string v0, "MSG_KNOX_APP_SEPARATION_DELETION "

    .line 1243
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menforceAppSeparationDeletionInternal(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_465

    :pswitch_fa
    const-string p1, "PersonaManagerService"

    const-string v0, "MSG_KNOX_APP_SEPARATION_LIST_UPDATE "

    .line 1233
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menforceAppSeparationAllowListUpdateInternal(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_465

    .line 1272
    :pswitch_108
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmKnoxAnalyticsContainer(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/KnoxAnalyticsContainer;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/knox/KnoxAnalyticsContainer;->logEventAccountChanged(ILjava/lang/String;I)V

    goto/16 :goto_465

    :pswitch_11b
    const-string p1, "PersonaManagerService"

    const-string v0, "MSG_BOOT_LOAD_PERSONA_SYSTEMREADY is called..."

    .line 1134
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    new-instance v0, Lcom/android/server/pm/PersonaLegacyStateMonitor;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/pm/PersonaLegacyStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/android/server/pm/PersonaManagerService;->mLegacyStateMonitor:Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 1138
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_163

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaCacheMap(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "fwversion"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_163

    .line 1139
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mhandleFOTAInstallToPackages(Lcom/android/server/pm/PersonaManagerService;)V

    .line 1140
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mremoveDisallowedSFpackages(Lcom/android/server/pm/PersonaManagerService;)V

    .line 1141
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mmigrateKnoxLockTimeoutValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V

    .line 1142
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mmigrateKnoxFingerprintPlusValueIfNeeded(Lcom/android/server/pm/PersonaManagerService;)V

    .line 1144
    :cond_163
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetRequiredApps(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fputrequiredApps(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)V

    .line 1145
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetWorkTabSupportLauncherUids(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$sfputworkTabSupportLauncherUids(Ljava/util/ArrayList;)V

    .line 1149
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mrecoverContainerInfo(Lcom/android/server/pm/PersonaManagerService;)V

    .line 1152
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserListFile(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1af

    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserListFile(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1af

    .line 1153
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUserListFile(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    const-string v0, "PersonaManagerService:FOTA"

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user list file delete status - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_1af
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmUsersDir(Lcom/android/server/pm/PersonaManagerService;)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v1, "userwithpersonalist.xml.crt"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1158
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 1159
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result p1

    const-string v0, "PersonaManagerService:FOTA"

    .line 1160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "user list backup file delete status - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_1de
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaCacheMap(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 1164
    :try_start_1e5
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaCacheMap(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "fwversion"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1165
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_203

    if-eqz v1, :cond_244

    .line 1166
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_244

    :cond_203
    const-string p1, "PersonaManagerService"

    .line 1167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Storing fw version - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fota version - "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaCacheMap(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "fwversion"

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetDeviceFirmwareVersion(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmPersonaCacheMap(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object p1

    const-string v1, "fotaversion"

    const-string v2, "10"

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mwritePersonaCacheLocked(Lcom/android/server/pm/PersonaManagerService;)V

    .line 1172
    :cond_244
    monitor-exit v0
    :try_end_245
    .catchall {:try_start_1e5 .. :try_end_245} :catchall_255

    .line 1174
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v0, "com.sec.knox.bluetooth"

    invoke-virtual {p1, v0, v3, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    .line 1175
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string p1, "com.samsung.android.bbc.fileprovider"

    invoke-virtual {p0, p1, v3, v3}, Lcom/android/server/pm/PersonaManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    goto/16 :goto_465

    :catchall_255
    move-exception p0

    .line 1172
    :try_start_256
    monitor-exit v0
    :try_end_257
    .catchall {:try_start_256 .. :try_end_257} :catchall_255

    throw p0

    .line 1280
    :pswitch_258
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_465

    :pswitch_261
    const-string p1, "PersonaManagerServiceHandler"

    const-string v0, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    .line 1182
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :try_start_268
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_298

    .line 1186
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetIPackageManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object p1

    const-string v0, "com.felicanetworks.mfm"

    invoke-interface {p1, v0, v3}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_298

    const-string p1, "PersonaManagerServiceHandler"

    const-string v0, " MSG_BOOT_COMPLETE_RECEIVED : DO is enabled. recorver disabled app."

    .line 1187
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetIPackageManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-string v6, "com.felicanetworks.mfm"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_268 .. :try_end_293} :catch_294

    goto :goto_298

    :catch_294
    move-exception p1

    .line 1192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1195
    :cond_298
    :goto_298
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mhandleFotaResetSecureFolderAdmin(Lcom/android/server/pm/PersonaManagerService;)V

    .line 1197
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetcontainerNames(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-lez p1, :cond_2cd

    .line 1198
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p1

    .line 1199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2cd

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1200
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1, v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msetDpmScreenTimeoutFlag(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_2b7

    .line 1203
    :cond_2cd
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {p1, v3, v3}, Lcom/android/server/pm/PersonaManagerService;->getProfiles(IZ)Ljava/util/List;

    move-result-object p1

    move v0, v3

    .line 1204
    :goto_2d4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_465

    .line 1205
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1208
    :try_start_2e0
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetIPackageManager(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.samsung.android.appseparation"

    const-string v7, "com.samsung.android.appseparation.view.launcher.LauncherActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5, v3}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v2
    :try_end_2f3
    .catch Landroid/os/RemoteException; {:try_start_2e0 .. :try_end_2f3} :catch_2f4

    goto :goto_2f9

    :catch_2f4
    move-exception v2

    .line 1211
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    .line 1213
    :goto_2f9
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isUserTypeAppSeparation()Z

    move-result v5

    if-eqz v5, :cond_306

    if-eq v2, v4, :cond_306

    .line 1215
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PersonaManagerService;->enforceAppSeparationDeletion()V

    .line 1219
    :cond_306
    :try_start_306
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_318

    .line 1220
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$menableMyFilesLauncherActivity(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_313
    .catch Ljava/lang/Exception; {:try_start_306 .. :try_end_313} :catch_314

    goto :goto_318

    :catch_314
    move-exception v1

    .line 1222
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_318
    :goto_318
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d4

    :cond_31b
    const-string v0, "PersonaManagerServiceHandler"

    const-string v1, "MSG_POST_NOTI_FOR_PWD_CHANGE_DO "

    .line 1308
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->handlePwdChangeNotificationForDeviceOwner(Landroid/content/Context;I)V

    goto/16 :goto_465

    :cond_32f
    const-string p1, "PersonaManagerService"

    const-string v0, "MSG_MIGRATE_NEWPO"

    .line 1094
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 1096
    invoke-virtual {p1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1097
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_348
    :goto_348
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1098
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v3

    if-nez v3, :cond_348

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v3

    if-eqz v3, :cond_361

    goto :goto_348

    :cond_361
    const-string v3, "NEWPO"

    .line 1099
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Migration start for user # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :try_start_379
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v3, v5}, Lcom/samsung/android/knox/SemPersonaManager;->clearAttributes(II)Z
    :try_end_37e
    .catch Ljava/lang/Exception; {:try_start_379 .. :try_end_37e} :catch_37f

    goto :goto_383

    :catch_37f
    move-exception v3

    .line 1104
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1107
    :goto_383
    iget v3, v2, Landroid/content/pm/UserInfo;->flags:I

    .line 1109
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_348

    and-int v6, v3, v5

    if-ne v6, v5, :cond_348

    const v6, -0x100001

    and-int/2addr v3, v6

    const v6, -0x200001

    and-int/2addr v3, v6

    const v6, -0x800001

    and-int/2addr v3, v6

    .line 1113
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 1114
    iget-object v7, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v7}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8}, Lcom/android/server/knox/ContainerDependencyWrapper;->deactivateKnoxCore(Landroid/content/Context;I)Z

    move-result v7

    and-int/2addr v7, v4

    .line 1115
    iget-object v8, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, v2}, Lcom/android/server/pm/PersonaManagerService;->applyDefaultPolicyForNewPO(Landroid/content/pm/UserInfo;)Z

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_348

    const v7, -0x10000001

    and-int/2addr v3, v7

    const-string/jumbo v7, "update-flags"

    .line 1118
    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1119
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v2, v6}, Lcom/android/server/knox/ContainerDependencyWrapper;->updateUserInfo(Landroid/os/UserManager;ILandroid/os/Bundle;)V

    goto :goto_348

    .line 1124
    :cond_3c6
    :try_start_3c6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3ca
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_465

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 1125
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    const-string v2, "com.samsung.android.knox.containeragent"

    invoke-static {v1, v0, v2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mdeletePkg(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z
    :try_end_3df
    .catch Ljava/lang/Exception; {:try_start_3c6 .. :try_end_3df} :catch_3e0

    goto :goto_3ca

    :catch_3e0
    move-exception p0

    .line 1128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_465

    .line 1300
    :cond_3e6
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmSeamLessSwitchHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/SeamLessSwitchHandler;

    move-result-object p1

    if-eqz p1, :cond_465

    .line 1301
    iget-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmSeamLessSwitchHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/SeamLessSwitchHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/knox/SeamLessSwitchHandler;->launchSeamLessForSF()V

    .line 1302
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmSeamLessSwitchHandler(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/knox/SeamLessSwitchHandler;

    move-result-object p0

    const-string p1, "2040"

    sget-object v0, Lcom/android/server/knox/SeamLessSwitchHandler;->packageExtraForSALog:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/knox/SeamLessSwitchHandler;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    .line 1284
    :cond_405
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1285
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    monitor-enter v0

    :try_start_40d
    const-string v1, "PersonaManagerService"

    .line 1286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setForegroundUser(newProfileId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object p0

    const/4 v1, 0x3

    invoke-static {p0, p1, v1}, Lcom/samsung/android/knox/SemPersonaManager;->sendContainerEvent(Landroid/content/Context;II)V

    .line 1288
    monitor-exit v0

    goto :goto_465

    :catchall_435
    move-exception p0

    monitor-exit v0
    :try_end_437
    .catchall {:try_start_40d .. :try_end_437} :catchall_435

    throw p0

    .line 1227
    :cond_438
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    goto :goto_465

    .line 1292
    :cond_43c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1293
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "PersonaManagerServiceHandler"

    .line 1294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MSG_REMOVE_USER : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mlogUserRemoval(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)V

    goto :goto_465

    .line 1276
    :cond_45e
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v1, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$msendMessageAndLockTimeout(Lcom/android/server/pm/PersonaManagerService;II)V

    :cond_465
    :goto_465
    return-void

    :pswitch_data_466
    .packed-switch 0xd
        :pswitch_261
        :pswitch_258
        :pswitch_11b
    .end packed-switch

    :pswitch_data_470
    .packed-switch 0x46
        :pswitch_108
        :pswitch_fa
        :pswitch_ec
        :pswitch_ca
        :pswitch_48
        :pswitch_3a
    .end packed-switch
.end method
