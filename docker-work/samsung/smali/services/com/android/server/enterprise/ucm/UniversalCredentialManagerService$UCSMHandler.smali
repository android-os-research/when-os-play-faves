.class public Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
.super Landroid/os/Handler;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UCSMHandler"
.end annotation


# static fields
.field public static final MSG_CLEAN_INFO:I = 0x3

.field public static final MSG_CLEAN_USER_INFO:I = 0x1

.field public static final MSG_CONTAINER_LOCK_STATUS_UPDATE:I = 0x9

.field public static final MSG_LOAD_ADMINS:I = 0x2

.field public static final MSG_LOAD_PLUGINS:I = 0x4

.field public static final MSG_LOAD_WHITELIST_AND_EXEMPT_APPS:I = 0x5

.field public static final MSG_LOCK_STATUS_UPDATE:I = 0x7

.field public static final MSG_PRE_ADMIN_REMOVED:I = 0xa

.field public static final MSG_REINSTALL_CA_CERT:I = 0x8

.field public static final MSG_SYNC_UP_DATA:I = 0x6


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .registers 2

    .line 719
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    .line 720
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 724
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    const-string/jumbo v2, "parsing error, continue..."

    const-string v3, "appUid"

    const-string/jumbo v4, "userId"

    const-string v5, ", packageName-"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "The exception occurs "

    packed-switch v0, :pswitch_data_b88

    :pswitch_16
    goto/16 :goto_b87

    .line 728
    :pswitch_18
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 729
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "adminUid"

    .line 730
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    aput-object p1, v1, v7

    .line 735
    :try_start_28
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    const-string v2, "UniversalCredentialEnforcedLockTypeTable"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_34} :catch_35

    goto :goto_5a

    :catch_35
    move-exception p1

    .line 738
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 739
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performPreAdminCleanup - Exception delete locktype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_59
    move p1, v7

    .line 741
    :goto_5a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performPreAdminCleanup - Enforce Lock Type status- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :try_start_73
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p0

    const-string p1, "UniversalCredentialWhiteListTable"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_7f} :catch_80

    goto :goto_a4

    :catch_80
    move-exception p0

    .line 749
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_a4

    .line 750
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "performPreAdminCleanup - Exception delete whitelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_a4
    :goto_a4
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "performPreAdminCleanup - White List status - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b87

    .line 1161
    :pswitch_bf
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_b87

    .line 1163
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1164
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1165
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyChangeToPlugin is called for container Lock status update containerId-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", status-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :try_start_ea
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1169
    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eq p1, v6, :cond_fb

    const/16 p1, 0x14

    .line 1171
    invoke-interface {p0, v8, p1, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto/16 :goto_b87

    :cond_fb
    const/16 p1, 0x15

    .line 1173
    invoke-interface {p0, v8, p1, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_100} :catch_102

    goto/16 :goto_b87

    :catch_102
    move-exception p0

    .line 1176
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b87

    .line 1139
    :pswitch_11f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "****MSG_LOCK_STATUS_UPDATE block started****"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p1

    if-eqz p1, :cond_17f

    .line 1142
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "notifyChangeToPlugin is called for Lock status update..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    .line 1145
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p0

    .line 1147
    :try_start_14b
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1148
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p0, :cond_15b

    const/16 p0, 0xf

    .line 1150
    invoke-interface {p1, v8, p0, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_17f

    :cond_15b
    const/16 p0, 0x10

    .line 1152
    invoke-interface {p1, v8, p0, v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_160} :catch_161

    goto :goto_17f

    :catch_161
    move-exception p0

    .line 1154
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyChangeToPlugin Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    :cond_17f
    :goto_17f
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "****MSG_LOCK_STATUS_UPDATE block ended****"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b87

    .line 1001
    :pswitch_18a
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "****MSG_SYNC_UP_DATA block started****"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    :try_start_193
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 1004
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_275

    const/16 v1, 0x11

    .line 1006
    invoke-interface {v0, v8, v1, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 1007
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mgetAllUsers(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_275

    .line 1008
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_275

    .line 1009
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1010
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 1011
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c8
    :goto_1c8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_218

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1012
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 1013
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Valid userid-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c8

    .line 1015
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found userid on cache-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1c8

    .line 1019
    :cond_218
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_275

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1020
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InValid userid-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1022
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 1023
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_259
    .catch Ljava/lang/Exception; {:try_start_193 .. :try_end_259} :catch_25a

    goto :goto_21c

    :catch_25a
    move-exception p1

    .line 1028
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_275
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1034
    :try_start_27e
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_288
    :goto_288
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1035
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_SYNC_UP_DATA adminId-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmPm(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2de

    .line 1038
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_288

    .line 1039
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_SYNC_UP_DATA remove adminid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_288

    :cond_2de
    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    .line 1044
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1043
    invoke-interface {v0, v3, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_317

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    .line 1046
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1045
    invoke-interface {v0, v3, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_317

    const-string v3, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    .line 1048
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1047
    invoke-interface {v0, v3, v4}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_303

    goto :goto_317

    .line 1051
    :cond_303
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "  Admin don\'t has UCS permission..."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mprocessAdminLicenseExpiry(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    goto/16 :goto_288

    .line 1049
    :cond_317
    :goto_317
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "  Admin has valid permission. Processing further..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_320
    .catch Ljava/lang/Exception; {:try_start_27e .. :try_end_320} :catch_322

    goto/16 :goto_288

    :catch_322
    move-exception v0

    .line 1057
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_33d
    :try_start_33d
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1062
    :cond_34b
    :goto_34b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e0

    .line 1063
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1064
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1065
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1066
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_SYNC_UP_DATA plugin id -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MSG_SYNC_UP_DATA plugin package -"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmPm(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_34b

    .line 1070
    invoke-interface {p1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34b

    .line 1071
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SYNC_UP_DATA remove plugin : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c4
    .catch Ljava/lang/Exception; {:try_start_33d .. :try_end_3c4} :catch_3c5

    goto :goto_34b

    :catch_3c5
    move-exception v0

    .line 1077
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_3e0
    :try_start_3e0
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetexemptedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1082
    :cond_3ee
    :goto_3ee
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_465

    .line 1083
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1084
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1085
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SYNC_UP_DATA exempt app id -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    iget-object v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmPm(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3ee

    .line 1088
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3ee

    .line 1089
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SYNC_UP_DATA remove exempt app : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_449
    .catch Ljava/lang/Exception; {:try_start_3e0 .. :try_end_449} :catch_44a

    goto :goto_3ee

    :catch_44a
    move-exception v0

    .line 1095
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :cond_465
    :try_start_465
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetwhitelistedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1100
    :cond_473
    :goto_473
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4ea

    .line 1101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1102
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1103
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SYNC_UP_DATA Whitelist app id -"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v2, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmPm(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_473

    .line 1106
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_473

    .line 1107
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_SYNC_UP_DATA remove Whitelist app : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4ce
    .catch Ljava/lang/Exception; {:try_start_465 .. :try_end_4ce} :catch_4cf

    goto :goto_473

    :catch_4cf
    move-exception v0

    .line 1113
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_4ea
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_553

    .line 1117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 1119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4fa
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_534

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_513

    .line 1121
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "id is null, continue..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4fa

    .line 1124
    :cond_513
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adding clean app id-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, v0, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4fa

    .line 1129
    :cond_534
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1130
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1131
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_SYNC_UP_DATA calling MSG_CLEAN_INFO..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1135
    :cond_553
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "****MSG_SYNC_UP_DATA block ended****"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b87

    .line 909
    :pswitch_55e
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block started****"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :try_start_567
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mgetAllWhitelistedApps(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_56d
    .catch Ljava/lang/Exception; {:try_start_567 .. :try_end_56d} :catch_78b

    const-string v0, ", App package = "

    const-string v4, "appPackage"

    if-eqz p1, :cond_66b

    .line 912
    :try_start_573
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_66b

    .line 913
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAllWhitelistedApps - Size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_599
    :goto_599
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_626

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .line 917
    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 918
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v7, :cond_61d

    if-nez v6, :cond_5b2

    goto :goto_61d

    .line 923
    :cond_5b2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_5b6
    .catch Ljava/lang/Exception; {:try_start_573 .. :try_end_5b6} :catch_78b

    :try_start_5b6
    const-string v8, "*"

    .line 925
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5bf

    goto :goto_599

    :cond_5bf
    if-eq v6, v1, :cond_599

    if-nez v6, :cond_5c4

    goto :goto_599

    .line 931
    :cond_5c4
    iget-object v8, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetwhitelistedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_599

    .line 932
    iget-object v8, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetwhitelistedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caching WhiteList app id-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5ff
    .catch Ljava/lang/Exception; {:try_start_5b6 .. :try_end_5ff} :catch_600

    goto :goto_599

    :catch_600
    move-exception v6

    .line 936
    :try_start_601
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_599

    .line 920
    :cond_61d
    :goto_61d
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_599

    .line 940
    :cond_626
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetwhitelistedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 941
    :goto_634
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_674

    .line 942
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 943
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 944
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 945
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WHITELIST App UID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_634

    .line 948
    :cond_66b
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v6, "getAllWhitelistedApps DB is empty..."

    invoke-static {p1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_674
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mgetAllExemptedApps(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_781

    .line 952
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_781

    .line 953
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAllExemptedApps - Size-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6a2
    :goto_6a2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_73c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    if-nez v6, :cond_6bb

    .line 958
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "value is null, continue..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a2

    .line 961
    :cond_6bb
    invoke-virtual {v6, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 962
    invoke-virtual {v6, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v7, :cond_733

    if-nez v6, :cond_6c8

    goto :goto_733

    .line 967
    :cond_6c8
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_6cc
    .catch Ljava/lang/Exception; {:try_start_601 .. :try_end_6cc} :catch_78b

    :try_start_6cc
    const-string v8, "com.samsung.knox.virtual.wifi"

    .line 969
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6d5

    goto :goto_6a2

    :cond_6d5
    if-eq v6, v1, :cond_6a2

    if-nez v6, :cond_6da

    goto :goto_6a2

    .line 975
    :cond_6da
    iget-object v8, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetexemptedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6a2

    .line 976
    iget-object v8, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v8}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetexemptedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Caching Exempted app id-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_715
    .catch Ljava/lang/Exception; {:try_start_6cc .. :try_end_715} :catch_716

    goto :goto_6a2

    :catch_716
    move-exception v6

    .line 980
    :try_start_717
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a2

    .line 964
    :cond_733
    :goto_733
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a2

    .line 984
    :cond_73c
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetexemptedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 985
    :goto_74a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7a6

    .line 986
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 987
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 988
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 989
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXEPMT-> App UID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_74a

    .line 992
    :cond_781
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "getAllExemptedApps DB is empty..."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78a
    .catch Ljava/lang/Exception; {:try_start_717 .. :try_end_78a} :catch_78b

    goto :goto_7a6

    :catch_78b
    move-exception p0

    .line 995
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_7a6
    :goto_7a6
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block ended****"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b87

    .line 861
    :pswitch_7b1
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "****MSG_LOAD_PLUGINS block started****"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :try_start_7ba
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mgetActivePlugin(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object p1

    .line 864
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_897

    .line 867
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7ca
    :goto_7ca
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_850

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string/jumbo v4, "storagePackageName"

    .line 868
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 869
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v4, :cond_847

    if-nez v0, :cond_7e6

    goto :goto_847

    .line 874
    :cond_7e6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_7ea
    .catch Ljava/lang/Exception; {:try_start_7ba .. :try_end_7ea} :catch_8a1

    if-eq v0, v1, :cond_7ca

    if-nez v0, :cond_7ef

    goto :goto_7ca

    .line 879
    :cond_7ef
    :try_start_7ef
    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7ca

    .line 880
    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 881
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Caching plugin app id-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82a
    .catch Ljava/lang/Exception; {:try_start_7ef .. :try_end_82a} :catch_82b

    goto :goto_7ca

    :catch_82b
    move-exception v0

    .line 884
    :try_start_82c
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7ca

    .line 871
    :cond_847
    :goto_847
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7ca

    .line 888
    :cond_850
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 889
    :goto_85e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8bc

    .line 890
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 891
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 892
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 893
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plugin ID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Plugin package = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_85e

    .line 896
    :cond_897
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "No active plugin found"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a0
    .catch Ljava/lang/Exception; {:try_start_82c .. :try_end_8a0} :catch_8a1

    goto :goto_8bc

    :catch_8a1
    move-exception p1

    .line 899
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    :cond_8bc
    :goto_8bc
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "****MSG_LOAD_PLUGINS block ended****"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 904
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_b87

    .line 799
    :pswitch_8db
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "****MSG_CLEAN_INFO block started****"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    :try_start_8e4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    if-eqz p1, :cond_a69

    .line 802
    array-length v0, p1

    if-lez v0, :cond_a69

    .line 803
    array-length v0, p1

    :goto_8ee
    if-ge v7, v0, :cond_a69

    aget v1, p1, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 804
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 805
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uid - "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", userId-"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94f

    .line 808
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v6, "UCS admin uninstall. Start cleaning...."

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mnotifyAdminUninstall(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 810
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mperformAdminCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 811
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 815
    :cond_94f
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99a

    .line 816
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 817
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Active plugin is removed. Perform clean up for uid-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", pluginPkg-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mnotifyPluginIsUninstalled(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    .line 819
    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetactivePluginsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mperformStorageCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    .line 824
    :cond_99a
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetwhitelistedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9de

    .line 825
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetwhitelistedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 826
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling performWhitelistAppCleanup for userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6, v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mperformWhitelistAppCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    .line 828
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetwhitelistedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    :cond_9de
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetexemptedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a22

    .line 833
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetexemptedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 834
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling performExemptedAppCleanup for userId-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v6, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v6, v2, v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mperformExemptedAppCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    .line 836
    iget-object v3, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v3}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetexemptedAppsCache(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    :cond_a22
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v3

    if-eqz v3, :cond_a65

    .line 840
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "notifyChangeToPlugin is called for package uninstalled..."

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a32
    .catch Ljava/lang/Exception; {:try_start_8e4 .. :try_end_a32} :catch_a74

    .line 842
    :try_start_a32
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 843
    invoke-virtual {v6, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "packageUid"

    .line 844
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v1, 0xc

    .line 845
    invoke-interface {v3, v8, v1, v6}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a49
    .catch Ljava/lang/Exception; {:try_start_a32 .. :try_end_a49} :catch_a4a

    goto :goto_a65

    :catch_a4a
    move-exception v1

    .line 848
    :try_start_a4b
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a65
    :goto_a65
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8ee

    .line 853
    :cond_a69
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "****MSG_CLEAN_INFO block ended****"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a72
    .catch Ljava/lang/Exception; {:try_start_a4b .. :try_end_a72} :catch_a74

    goto/16 :goto_b87

    :catch_a74
    move-exception p0

    .line 856
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b87

    .line 781
    :pswitch_a91
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "****MSG_LOAD_ADMINS block started****"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :try_start_a9a
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mgetAllAdmins(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object p1

    .line 784
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_afb

    .line 785
    iget-object v0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 786
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_afb

    .line 787
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adminIds size- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetadminIds(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_adf
    .catch Ljava/lang/Exception; {:try_start_a9a .. :try_end_adf} :catch_ae0

    goto :goto_afb

    :catch_ae0
    move-exception p1

    .line 791
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_afb
    :goto_afb
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "****MSG_LOAD_ADMINS block ended****"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    iget-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 795
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$fgetmUCSMHandler(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_b87

    .line 761
    :pswitch_b19
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "****MSG_CLEAN_USER_INFO block started****"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 763
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "userId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-eqz v0, :cond_b79

    .line 766
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "notifyChangeToPlugin is called for user removed..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :try_start_b4d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 769
    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0xb

    .line 770
    invoke-interface {v0, v8, v2, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    .line 771
    invoke-interface {v0, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->removeEnforcedLockTypeNotification(I)V
    :try_end_b5d
    .catch Ljava/lang/Exception; {:try_start_b4d .. :try_end_b5d} :catch_b5e

    goto :goto_b79

    :catch_b5e
    move-exception v0

    .line 773
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_b79
    :goto_b79
    iget-object p0, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$mperformUserCleanup(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    .line 777
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "****MSG_CLEAN_USER_INFO block ended****"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b87
    :goto_b87
    return-void

    :pswitch_data_b88
    .packed-switch 0x1
        :pswitch_b19
        :pswitch_a91
        :pswitch_8db
        :pswitch_7b1
        :pswitch_55e
        :pswitch_18a
        :pswitch_11f
        :pswitch_16
        :pswitch_bf
        :pswitch_18
    .end packed-switch
.end method
