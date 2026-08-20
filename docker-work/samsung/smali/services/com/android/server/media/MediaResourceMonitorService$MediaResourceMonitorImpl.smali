.class public Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaResourceMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaResourceMonitorImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBroadcastIntent(ILandroid/media/MediaMonitorEvent;)Landroid/content/Intent;
    .registers 15

    .line 149
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "tracking_id"

    const-string v2, "4H9-399-505457"

    .line 150
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const-string v2, ", "

    const-string v3, ","

    const/4 v4, 0x1

    const/4 v5, 0x0

    const v6, 0x1d524

    if-gt v6, v1, :cond_99

    .line 157
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 158
    iget-object p2, p2, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    array-length v6, p2

    move v7, v5

    :goto_2a
    if-ge v7, v6, :cond_92

    aget-object v8, p2, v7

    .line 159
    iget v9, v8, Landroid/media/MediaMonitorDimension;->mType:I

    .line 160
    iget-object v10, v8, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    if-nez v9, :cond_80

    .line 162
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getText()Ljava/lang/String;

    move-result-object v8

    const-string v9, "1003"

    .line 163
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 164
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_7c

    :cond_57
    const-string v9, "2001"

    .line 165
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_7c

    .line 167
    array-length v11, v9

    if-lez v11, :cond_7c

    .line 168
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v9, v5

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 171
    :cond_7c
    :goto_7c
    invoke-virtual {v1, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    :cond_80
    if-ne v9, v4, :cond_8c

    .line 173
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getNumber()J

    move-result-wide v8

    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_89
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 175
    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_92
    const-string p0, "dimension"

    .line 178
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_109

    .line 180
    :cond_99
    iget-object v1, p2, Landroid/media/MediaMonitorEvent;->mCustomDimensions:[Landroid/media/MediaMonitorDimension;

    array-length v6, v1

    move v7, v5

    :goto_9d
    if-ge v7, v6, :cond_109

    aget-object v8, v1, v7

    .line 181
    iget v9, v8, Landroid/media/MediaMonitorDimension;->mType:I

    .line 182
    iget-object v10, v8, Landroid/media/MediaMonitorDimension;->mName:Ljava/lang/String;

    if-nez v9, :cond_f7

    .line 184
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getText()Ljava/lang/String;

    move-result-object v8

    .line 185
    iget-object v9, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    const-string v11, "MMIF_PACKAGE"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cc

    .line 186
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_f3

    .line 187
    :cond_cc
    iget-object v9, p2, Landroid/media/MediaMonitorEvent;->mName:Ljava/lang/String;

    const-string v11, "MMER"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f3

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_f3

    .line 189
    array-length v11, v9

    if-lez v11, :cond_f3

    .line 190
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v9, v5

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 193
    :cond_f3
    :goto_f3
    invoke-virtual {v0, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_100

    :cond_f7
    if-ne v9, v4, :cond_103

    .line 195
    invoke-virtual {v8}, Landroid/media/MediaMonitorDimension;->getNumber()J

    move-result-wide v8

    invoke-virtual {v0, v10, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :goto_100
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 197
    :cond_103
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_109
    :goto_109
    const-string/jumbo p0, "type"

    const-string p1, "ev"

    .line 201
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "pkg_name"

    const-string p1, "com.samsung.android.mmfw"

    .line 202
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    .line 205
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p1, "com.sec.android.diagmonagent"

    .line 207
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final getPackageName(I)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    const/4 v1, -0x1

    if-ne p1, v1, :cond_6

    return-object v0

    .line 217
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 218
    array-length p1, p0

    if-gtz p1, :cond_10

    goto :goto_20

    :cond_10
    const/4 p1, 0x0

    .line 221
    aget-object p0, p0, p1

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    :goto_20
    return-object v0
.end method

.method public final getPackageNamesFromPid(I)[Ljava/lang/String;
    .registers 4

    .line 227
    iget-object p0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 228
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 229
    iget v1, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v1, p1, :cond_16

    .line 230
    iget-object p0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public notifyMediaInfo(ILandroid/media/MediaMonitorEvent;)V
    .registers 5

    .line 135
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 137
    :try_start_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getBroadcastIntent(ILandroid/media/MediaMonitorEvent;)Landroid/content/Intent;

    move-result-object p1

    .line 138
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->-$$Nest$sfgetmServiceEnabled()Z

    move-result p2

    if-eqz p2, :cond_17

    .line 139
    iget-object p0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_1d
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 144
    :cond_17
    :goto_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    :catchall_1b
    move-exception p0

    goto :goto_27

    :catch_1d
    :try_start_1d
    const-string p0, "MediaResourceMonitor"

    const-string/jumbo p1, "sendBroadcast fail"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_1b

    goto :goto_17

    :goto_26
    return-void

    .line 144
    :goto_27
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    throw p0
.end method

.method public notifyResourceGranted(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/media/MediaResourceMonitorService;->-$$Nest$fputmPackageManager(Lcom/android/server/media/MediaResourceMonitorService;Landroid/content/pm/PackageManager;)V

    .line 101
    iget-object v0, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-static {v0}, Lcom/android/server/media/MediaResourceMonitorService;->-$$Nest$fgetmPackageManager(Lcom/android/server/media/MediaResourceMonitorService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    return-void

    .line 105
    :cond_1c
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyResourceGranted(pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResourceMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_46
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 110
    :try_start_4a
    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_ae

    if-nez p1, :cond_54

    .line 129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 114
    :cond_54
    :try_start_54
    iget-object v2, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 115
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 114
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/os/UserManager;

    .line 116
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 117
    invoke-virtual {v2}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_ae

    if-eqz v3, :cond_7d

    .line 129
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 121
    :cond_7d
    :try_start_7d
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.extra.PACKAGES"

    .line 122
    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    .line 123
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_92
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_aa

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    .line 125
    iget-object v2, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    invoke-virtual {v2, v3, p2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_a9
    .catchall {:try_start_7d .. :try_end_a9} :catchall_ae

    goto :goto_92

    .line 129
    :cond_aa
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_ae
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 130
    throw p0
.end method
