.class public Lcom/mediatek/powerhalwrapper/ScnList;
.super Ljava/lang/Object;
.source "ScnList.java"


# instance fields
.field public blacklist handle:I

.field public blacklist pid:I

.field public blacklist uid:I


# direct methods
.method constructor blacklist <init>(III)V
    .registers 4
    .param p1, "handle"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput p1, p0, Lcom/mediatek/powerhalwrapper/ScnList;->handle:I

    .line 51
    iput p2, p0, Lcom/mediatek/powerhalwrapper/ScnList;->pid:I

    .line 52
    iput p3, p0, Lcom/mediatek/powerhalwrapper/ScnList;->uid:I

    .line 53
    return-void
.end method


# virtual methods
.method public blacklist gethandle()I
    .registers 2

    .line 72
    iget v0, p0, Lcom/mediatek/powerhalwrapper/ScnList;->handle:I

    return v0
.end method

.method public blacklist getpid()I
    .registers 2

    .line 56
    iget v0, p0, Lcom/mediatek/powerhalwrapper/ScnList;->pid:I

    return v0
.end method

.method public blacklist getuid()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/mediatek/powerhalwrapper/ScnList;->uid:I

    return v0
.end method

.method public blacklist setPack_Name(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 68
    iput p1, p0, Lcom/mediatek/powerhalwrapper/ScnList;->uid:I

    .line 69
    return-void
.end method

.method public blacklist sethandle(I)V
    .registers 2
    .param p1, "handle"    # I

    .line 76
    iput p1, p0, Lcom/mediatek/powerhalwrapper/ScnList;->handle:I

    .line 77
    return-void
.end method

.method public blacklist setpid(I)V
    .registers 2
    .param p1, "pid"    # I

    .line 60
    iput p1, p0, Lcom/mediatek/powerhalwrapper/ScnList;->pid:I

    .line 61
    return-void
.end method
