.class public Lcom/sec/vsim/ericssonnsds/data/RequestAccessToken;
.super Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginRequest;
.source "RequestAccessToken.java"


# instance fields
.field public clientId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_id"
    .end annotation
.end field

.field public clientSecret:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_secret"
    .end annotation
.end field

.field public code:Ljava/lang/String;

.field public grantType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "grant_type"
    .end annotation
.end field

.field public redirectUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "redirect_uri"
    .end annotation
.end field

.field public scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginRequest;-><init>()V

    return-void
.end method
