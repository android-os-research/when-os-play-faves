.class public Lcom/android/server/wm/DexCompatController$Request;
.super Ljava/lang/Object;
.source "DexCompatController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexCompatController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# static fields
.field public static final DEFAULT_CALLING_PID:I = 0x0

.field public static final DEFAULT_CALLING_UID:I = -0x1


# instance fields
.field public activityOptions:Lcom/android/server/wm/SafeActivityOptions;

.field public callingFeatureId:Ljava/lang/String;

.field public callingPackage:Ljava/lang/String;

.field public callingUid:I

.field public intent:Landroid/content/Intent;

.field public realCallingPid:I

.field public realCallingUid:I

.field public reason:Ljava/lang/String;

.field public userId:I

.field public wpc:Lcom/android/server/wm/WindowProcessController;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 636
    iput v0, p0, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    const/4 v1, 0x0

    .line 639
    iput v1, p0, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    .line 640
    iput v0, p0, Lcom/android/server/wm/DexCompatController$Request;->realCallingUid:I

    .line 646
    invoke-virtual {p0}, Lcom/android/server/wm/DexCompatController$Request;->reset()V

    return-void
.end method


# virtual methods
.method public reset()V
    .registers 4

    const/4 v0, 0x0

    .line 653
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController$Request;->wpc:Lcom/android/server/wm/WindowProcessController;

    .line 654
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController$Request;->intent:Landroid/content/Intent;

    const/4 v1, -0x1

    .line 655
    iput v1, p0, Lcom/android/server/wm/DexCompatController$Request;->callingUid:I

    .line 656
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController$Request;->callingPackage:Ljava/lang/String;

    const/4 v2, 0x0

    .line 657
    iput v2, p0, Lcom/android/server/wm/DexCompatController$Request;->realCallingPid:I

    .line 658
    iput v1, p0, Lcom/android/server/wm/DexCompatController$Request;->realCallingUid:I

    .line 659
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController$Request;->activityOptions:Lcom/android/server/wm/SafeActivityOptions;

    .line 660
    iput-object v0, p0, Lcom/android/server/wm/DexCompatController$Request;->reason:Ljava/lang/String;

    .line 661
    iput v2, p0, Lcom/android/server/wm/DexCompatController$Request;->userId:I

    return-void
.end method
