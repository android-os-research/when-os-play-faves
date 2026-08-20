.class public final Lcom/sec/vsim/namespaces/CNSMsisdnLoginNamespaces$MSISDNLoginRequestType;
.super Ljava/lang/Object;
.source "CNSMsisdnLoginNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/CNSMsisdnLoginNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MSISDNLoginRequestType"
.end annotation


# static fields
.field public static final CANCEL_MSISDN_AUTH:Ljava/lang/String; = "cancelMsisdnAuthorization"

.field public static final GET_DUMMY_TMOID:Ljava/lang/String; = "getDummyTmoId"

.field public static final GET_MSISDN_AUTH_STATUS:Ljava/lang/String; = "getMsisdnAuthorizationStatus"

.field public static final REAL_TMO_ID_UPDATE:Ljava/lang/String; = "realTmoIdUpdate"

.field public static final USE_MSISDN_AUTH:Ljava/lang/String; = "UseMsisdnAuthorization"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
