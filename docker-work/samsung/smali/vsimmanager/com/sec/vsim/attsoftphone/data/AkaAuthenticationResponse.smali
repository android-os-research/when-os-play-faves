.class public Lcom/sec/vsim/attsoftphone/data/AkaAuthenticationResponse;
.super Ljava/lang/Object;
.source "AkaAuthenticationResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/attsoftphone/data/AkaAuthenticationResponse$ChallengeResponse;
    }
.end annotation


# instance fields
.field public mChallengeResponse:Lcom/sec/vsim/attsoftphone/data/AkaAuthenticationResponse$ChallengeResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "challengeResponse"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AkaAuthenticationResponse [mChallengeResponse = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/vsim/attsoftphone/data/AkaAuthenticationResponse;->mChallengeResponse:Lcom/sec/vsim/attsoftphone/data/AkaAuthenticationResponse$ChallengeResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
