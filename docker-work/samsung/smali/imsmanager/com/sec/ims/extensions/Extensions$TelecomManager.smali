.class public Lcom/sec/ims/extensions/Extensions$TelecomManager;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TelecomManager"
.end annotation


# static fields
.field public static final RTT_MODE:I

.field public static final RTT_MODE_OFF:I

.field public static final TTY_MODE_OFF:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 170
    const-class v0, Landroid/telecom/TelecomManager;

    const-string v1, "TTY_MODE_OFF"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    .line 172
    add-int/lit8 v1, v0, 0x4

    sput v1, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    .line 173
    sput v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE_OFF:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
