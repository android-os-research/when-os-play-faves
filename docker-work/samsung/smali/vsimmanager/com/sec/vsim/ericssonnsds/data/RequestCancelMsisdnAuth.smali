.class public Lcom/sec/vsim/ericssonnsds/data/RequestCancelMsisdnAuth;
.super Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginRequest;
.source "RequestCancelMsisdnAuth.java"


# instance fields
.field public msisdn:Ljava/lang/String;

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Lcom/sec/vsim/ericssonnsds/data/MSISDNLoginRequest;-><init>()V

    return-void
.end method
