.class public Lcom/android/server/knox/dar/EnterprisePartitionManager$EpmResponseCode;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/EnterprisePartitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EpmResponseCode"
.end annotation


# static fields
.field public static final CommandFailed:I = 0x119

.field public static final CommandNoPermission:I = 0x1f6

.field public static final CommandOkay:I = 0xc8

.field public static final CommandOngoing:I = 0xc9

.field public static final CommandParameterError:I = 0x1f5

.field public static final CommandSyntaxError:I = 0x1f4

.field public static final OperationFailed:I = 0x190

.field public static final UnsolicitedInformation:I = 0x258


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
