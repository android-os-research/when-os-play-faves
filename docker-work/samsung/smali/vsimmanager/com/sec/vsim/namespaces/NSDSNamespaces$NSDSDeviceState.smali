.class public final Lcom/sec/vsim/namespaces/NSDSNamespaces$NSDSDeviceState;
.super Ljava/lang/Object;
.source "NSDSNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/NSDSNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NSDSDeviceState"
.end annotation


# static fields
.field public static final ACTIVATED:Ljava/lang/String; = "activated"

.field public static final ACTIVATION_IN_PROGRESS:Ljava/lang/String; = "activation_in_progress"

.field public static final DEACTIVATED:Ljava/lang/String; = "deactivated"

.field public static final ENTITLMENT_IN_PROGRESS:Ljava/lang/String; = "entitlement_in_progress"

.field public static final OAUTH:Ljava/lang/String; = "oauth"

.field public static final SERVICE_PROVISIONED:Ljava/lang/String; = "service_provisioned"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
