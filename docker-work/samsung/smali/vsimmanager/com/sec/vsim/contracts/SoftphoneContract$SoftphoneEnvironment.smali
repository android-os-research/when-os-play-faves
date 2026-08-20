.class public final Lcom/sec/vsim/contracts/SoftphoneContract$SoftphoneEnvironment;
.super Ljava/lang/Object;
.source "SoftphoneContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/contracts/SoftphoneContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftphoneEnvironment"
.end annotation


# static fields
.field public static final PROD:I = 0x1

.field public static final STAGE:I = 0x0

.field public static final UNKNOWN:I = -0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
