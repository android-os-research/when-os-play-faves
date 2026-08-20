.class public Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile;
.super Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;
.source "ResponseGetConsumerProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile$TmoIdProfile;
    }
.end annotation


# instance fields
.field public tmoIdProfile:Lcom/sec/vsim/ericssonnsds/data/ResponseGetConsumerProfile$TmoIdProfile;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TMO_ID_profile"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/OAuthResponse;-><init>()V

    return-void
.end method
