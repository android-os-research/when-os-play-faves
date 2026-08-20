.class Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;
.super Ljava/lang/Object;
.source "IccFileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccFileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LoadPBEntryContext"
.end annotation


# instance fields
.field blacklist mCountRecords:I

.field blacklist mEfid:I

.field blacklist mLoadAll:Z

.field blacklist mOnLoaded:Landroid/os/Message;

.field blacklist mRecordNum:I

.field blacklist mTotalRecords:I

.field blacklist mUsedRecords:I

.field blacklist results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(ILandroid/os/Message;)V
    .registers 3

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mEfid:I

    const/4 p1, 0x1

    .line 236
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mRecordNum:I

    .line 237
    iput-boolean p1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mLoadAll:Z

    .line 238
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccFileHandler$LoadPBEntryContext;->mOnLoaded:Landroid/os/Message;

    return-void
.end method
