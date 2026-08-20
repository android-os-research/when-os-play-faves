.class public final Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;
.super Ljava/lang/Object;
.source "KeyguardServiceDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyguardState"
.end annotation


# instance fields
.field public bootCompleted:Z

.field public currentUser:I

.field public deviceHasKeyguard:Z

.field public dexOccluded:Z

.field public dreaming:Z

.field public enabled:Z

.field public inputRestricted:Z

.field public interactiveState:I

.field public volatile occluded:Z

.field public offReason:I

.field public screenState:I

.field public secure:Z

.field public showing:Z

.field public showingAndNotOccluded:Z

.field public systemIsReady:Z


# direct methods
.method public static bridge synthetic -$$Nest$mreset(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->currentUser:I

    .line 80
    invoke-virtual {p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->reset()V

    return-void
.end method


# virtual methods
.method public final reset()V
    .registers 2

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showing:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->showingAndNotOccluded:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->secure:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->deviceHasKeyguard:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$KeyguardState;->enabled:Z

    return-void
.end method
