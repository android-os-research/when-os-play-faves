.class public Lcom/sec/ims/extensions/SemEmergencyConstantsExt;
.super Ljava/lang/Object;
.source "SemEmergencyConstantsExt.java"


# static fields
.field public static final EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 20
    const-string v0, "EMERGENCY_CHECK_ABNORMAL_STATE"

    const-string v1, "com.samsung.intent.action.EMERGENCY_CHECK_ABNORMAL_STATE"

    invoke-static {v0, v1}, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/extensions/SemEmergencyConstantsExt;->EMERGENCY_CHECK_ABNORMAL_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getStringFromField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .line 26
    :try_start_0
    const-class v0, Lcom/samsung/android/emergencymode/SemEmergencyConstants;

    invoke-static {v0, p0}, Lcom/sec/ims/extensions/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 27
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_10

    .line 28
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_11

    return-object v1

    .line 32
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_10
    goto :goto_15

    .line 30
    :catch_11
    move-exception v0

    .line 31
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 34
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_15
    return-object p1
.end method
