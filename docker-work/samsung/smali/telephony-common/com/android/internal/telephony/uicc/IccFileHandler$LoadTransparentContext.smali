.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadTransparentContext"
.end annotation


# instance fields
.field blacklist mBinSize:I

.field blacklist mCountPhases:I

.field blacklist mEfid:I

.field blacklist mLoadAll:Z

.field blacklist mOnLoaded:Landroid/os/Message;

.field blacklist mPhaseNum:I

.field blacklist results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ILandroid/os/Message;)V
    .registers 3

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mEfid:I

    const/4 p1, 0x1

    .line 210
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mPhaseNum:I

    .line 211
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mLoadAll:Z

    .line 212
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadTransparentContext;->mOnLoaded:Landroid/os/Message;

    return-void
.end method
