.class public final Lcom/sec/vsim/namespaces/CNSMsisdnLoginNamespaces$CNSStatusCode;
.super Ljava/lang/Object;
.source "CNSMsisdnLoginNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/CNSMsisdnLoginNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CNSStatusCode"
.end annotation


# static fields
.field public static final REQUEST_FAILURE:Ljava/lang/String; = "error"

.field public static final REQUEST_SUCCESSFUL:Ljava/lang/String; = "success"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
