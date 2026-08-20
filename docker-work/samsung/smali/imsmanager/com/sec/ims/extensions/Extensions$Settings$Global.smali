.class public Lcom/sec/ims/extensions/Extensions$Settings$Global;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Global"
.end annotation


# static fields
.field public static final DEVICE_NAME:Ljava/lang/String;

.field public static final DEVICE_PROVISIONED:Ljava/lang/String;

.field public static final MOBILE_DATA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 127
    const-class v0, Landroid/provider/Settings$Global;

    .line 128
    const-string v1, "MOBILE_DATA"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->MOBILE_DATA:Ljava/lang/String;

    .line 130
    const-class v0, Landroid/provider/Settings$Global;

    .line 131
    const-string v1, "DEVICE_NAME"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_NAME:Ljava/lang/String;

    .line 133
    const-class v0, Landroid/provider/Settings$Global;

    .line 134
    const-string v1, "DEVICE_PROVISIONED"

    invoke-static {v1, v0}, Lcom/sec/ims/extensions/ReflectionUtils;->getValueOf(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
