.class public Lcom/android/server/usb/UsbHandlerManager;
.super Ljava/lang/Object;
.source "UsbHandlerManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "UsbHandlerManager"


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public confirmUsbHandler(Landroid/content/pm/ResolveInfo;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbAccessory;)V
    .registers 7

    .line 88
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHandlerManager;->createDialogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "rinfo"

    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 95
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p2, :cond_30

    const-string p3, "device"

    .line 98
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_35

    :cond_30
    const-string p2, "accessory"

    .line 100
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 104
    :goto_35
    :try_start_35
    iget-object p0, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_35 .. :try_end_3a} :catch_3b

    goto :goto_53

    :catch_3b
    move-exception p0

    .line 106
    sget-object p1, Lcom/android/server/usb/UsbHandlerManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to start activity "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_53
    return-void
.end method

.method public final createDialogIntent()Landroid/content/Intent;
    .registers 2

    .line 136
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10000000

    .line 137
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public selectUsbHandler(Ljava/util/ArrayList;Landroid/os/UserHandle;Landroid/content/Intent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHandlerManager;->createDialogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    .line 123
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v1, "rlist"

    .line 125
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.INTENT"

    .line 126
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 129
    :try_start_23
    iget-object p0, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_28
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_28} :catch_29

    goto :goto_41

    :catch_29
    move-exception p0

    .line 131
    sget-object p1, Lcom/android/server/usb/UsbHandlerManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to start activity "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_41
    return-void
.end method

.method public showUsbAccessoryUriActivity(Landroid/hardware/usb/UsbAccessory;Landroid/os/UserHandle;)V
    .registers 7

    .line 60
    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->getUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3d

    .line 63
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHandlerManager;->createDialogIntent()Landroid/content/Intent;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10403a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "accessory"

    .line 67
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p1, "uri"

    .line 68
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    :try_start_2f
    iget-object p0, p0, Lcom/android/server/usb/UsbHandlerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_34
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_3d

    .line 72
    :catch_35
    sget-object p0, Lcom/android/server/usb/UsbHandlerManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "unable to start UsbAccessoryUriActivity"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    :goto_3d
    return-void
.end method
