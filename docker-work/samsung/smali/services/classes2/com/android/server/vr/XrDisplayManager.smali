.class public Lcom/android/server/vr/XrDisplayManager;
.super Ljava/lang/Object;
.source "XrDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    }
.end annotation


# static fields
.field public static final NAME_META_SCREEN:Ljava/lang/String; = "Meta Screen"

.field public static final NAME_XR_SCREEN:Ljava/lang/String; = "XR Screen"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mGearVrManagerService:Lcom/android/server/vr/XrManagerService;

.field public mMetaScreenDisplay:Landroid/view/Display;

.field public mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/server/vr/XrDisplayManager;)Landroid/hardware/display/DisplayManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;)Landroid/view/Display;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager;)Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    return-void
.end method

.method public static bridge synthetic -$$Nest$misMetaScreenDisplay(Lcom/android/server/vr/XrDisplayManager;Landroid/view/Display;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrDisplayManager;->isMetaScreenDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/vr/XrManagerService;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/android/server/vr/XrDisplayManager;->mGearVrManagerService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "XrDisplayManager:"

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mMetaScreenDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    invoke-static {p0}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_26
    const-string p0, "null"

    :goto_28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getMetaScreenDisplayId()I
    .registers 1

    .line 91
    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Landroid/view/Display;->getDisplayId()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, -0x1

    :goto_a
    return p0
.end method

.method public final isMetaScreenDisplay(Landroid/view/Display;)Z
    .registers 3

    .line 74
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display;->getOwnerUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_1d

    invoke-virtual {p1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Meta Screen"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method public isMetaScreenDisplayOn()Z
    .registers 3

    .line 95
    iget-object p0, p0, Lcom/android/server/vr/XrDisplayManager;->mMetaScreenDisplay:Landroid/view/Display;

    const/4 v0, 0x0

    if-eqz p0, :cond_10

    .line 96
    invoke-virtual {p0}, Landroid/view/Display;->getState()I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_f

    const/4 v1, 0x5

    if-ne p0, v1, :cond_10

    :cond_f
    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public register()V
    .registers 3

    .line 35
    iget-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/vr/XrDisplayManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 36
    new-instance v1, Lcom/android/server/vr/XrDisplayManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/vr/XrDisplayManager$1;-><init>(Lcom/android/server/vr/XrDisplayManager;)V

    .line 70
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    .line 36
    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method public setOnXrDisplayListener(Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/android/server/vr/XrDisplayManager;->mOnXrDisplayListener:Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;

    return-void
.end method
