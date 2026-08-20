.class public Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;
.super Ljava/lang/Object;
.source "ForegroundAppChangedE.java"

# interfaces
.implements Lcom/android/server/ssrm/common/IEvent;


# instance fields
.field private mIsFg:Z

.field private mPid:I

.field private mUid:I


# direct methods
.method constructor <init>(IIZ)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "isFg"    # Z

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;->mUid:I

    .line 15
    iput p2, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;->mPid:I

    .line 16
    iput-boolean p3, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;->mIsFg:Z

    .line 17
    return-void
.end method


# virtual methods
.method public getFgPid()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;->mPid:I

    return v0
.end method

.method public getFgUid()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;->mUid:I

    return v0
.end method

.method public isFgActivity()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcom/android/server/ssrm/common/callback/foreground/ForegroundAppChangedE;->mIsFg:Z

    return v0
.end method
