.class public abstract Lcom/android/server/tare/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tare/Modifier$CostModifier;
    }
.end annotation


# static fields
.field public static final COST_MODIFIER_CHARGING:I = 0x0

.field public static final COST_MODIFIER_DEVICE_IDLE:I = 0x1

.field public static final COST_MODIFIER_POWER_SAVE_MODE:I = 0x2

.field public static final COST_MODIFIER_PROCESS_STATE:I = 0x3

.field public static final NUM_COST_MODIFIERS:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public getModifiedCostToProduce(J)J
    .registers 3

    return-wide p1
.end method

.method public getModifiedPrice(J)J
    .registers 3

    return-wide p1
.end method

.method public setup()V
    .registers 1

    return-void
.end method

.method public tearDown()V
    .registers 1

    return-void
.end method
