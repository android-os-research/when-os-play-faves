.class public final Lcom/sec/vsim/namespaces/NSDSNamespaces$NSDSRequestServices;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSRequestServices"
.end annotation


# static fields
.field public static final REQ_SERVICE_VOLTE:Ljava/lang/String; = "VoLTE"

.field public static final REQ_SERVICE_VOWIFI:Ljava/lang/String; = "VoWiFi"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
