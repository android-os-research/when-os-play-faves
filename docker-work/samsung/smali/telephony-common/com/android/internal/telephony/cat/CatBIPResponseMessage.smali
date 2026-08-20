.class public Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
.super Ljava/lang/Object;
.source "CatBIPResponseMessage.java"


# instance fields
.field blacklist AdditionalInfo:I

.field blacklist data:Lcom/android/internal/telephony/cat/ResponseData;

.field blacklist hasAdditionalInfo:Z

.field blacklist mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field blacklist resCode:Lcom/android/internal/telephony/cat/ResultCode;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .registers 6

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 28
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    .line 29
    iput p4, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    .line 30
    iput-object p5, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    return-void
.end method
