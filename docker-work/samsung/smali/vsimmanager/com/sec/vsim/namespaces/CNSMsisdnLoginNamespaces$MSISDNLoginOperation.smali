.class public final Lcom/sec/vsim/namespaces/CNSMsisdnLoginNamespaces$MSISDNLoginOperation;
.super Ljava/lang/Object;
.source "CNSMsisdnLoginNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/CNSMsisdnLoginNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MSISDNLoginOperation"
.end annotation


# static fields
.field public static final AUTH:Ljava/lang/String; = "authorize"

.field public static final AUTH_UPDATE:Ljava/lang/String; = "authorizeUpdate"

.field public static final CANCEL:Ljava/lang/String; = "cancel"

.field public static final INIT:Ljava/lang/String; = "initiate"

.field public static final QUERY:Ljava/lang/String; = "query"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
