.class public Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;
.super Ljava/lang/Object;
.source "CameraKillModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bgslotmanager/CameraKillModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraKillModeManagerLazyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

.field public static isinitClass:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/android/server/bgslotmanager/CameraKillModeManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/bgslotmanager/CameraKillModeManager;-><init>(Lcom/android/server/bgslotmanager/CameraKillModeManager-IA;)V

    sput-object v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->INSTANCE:Lcom/android/server/bgslotmanager/CameraKillModeManager;

    const/4 v0, 0x0

    .line 41
    sput-boolean v0, Lcom/android/server/bgslotmanager/CameraKillModeManager$CameraKillModeManagerLazyHolder;->isinitClass:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
