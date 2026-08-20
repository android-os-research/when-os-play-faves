.class public Lcom/sec/ims/extensions/ServiceStateExt;
.super Ljava/lang/Object;
.source "ServiceStateExt.java"


# static fields
.field public static final LTE_IMS_VOICE_AVAIL_NOT_SUPPORT:I = 0x3

.field public static final LTE_IMS_VOICE_AVAIL_SUPPORT:I = 0x2

.field public static final LTE_IMS_VOICE_AVAIL_UNKNOWN:I = 0x1

.field public static final SNAPSHOT_STATUS_ACTIVATED:I

.field public static final SNAPSHOT_STATUS_DEACTIVATED:I

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 22
    const-class v0, Lcom/sec/ims/extensions/ServiceStateExt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/ServiceStateExt;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "SNAPSHOT_STATUS_DEACTIVATED"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    .line 28
    const-string v0, "SNAPSHOT_STATUS_ACTIVATED"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/ServiceStateExt;->getIntField(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final getIntField(Ljava/lang/String;I)I
    .registers 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultvalue"    # I

    .line 32
    :try_start_0
    const-class v0, Landroid/telephony/ServiceState;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 33
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_b} :catch_c

    return v1

    .line 34
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_c
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    sget-object v1, Lcom/sec/ims/extensions/ServiceStateExt;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .end local v0    # "e":Ljava/lang/ReflectiveOperationException;
    return p1
.end method
