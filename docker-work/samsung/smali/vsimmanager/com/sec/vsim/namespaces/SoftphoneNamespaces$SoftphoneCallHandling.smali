.class public final Lcom/sec/vsim/namespaces/SoftphoneNamespaces$SoftphoneCallHandling;
.super Ljava/lang/Object;
.source "SoftphoneNamespaces.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/namespaces/SoftphoneNamespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SoftphoneCallHandling"
.end annotation


# static fields
.field public static final ACTIONS:Ljava/lang/String; = "actions"

.field public static final ACTIVE:Ljava/lang/String; = "active"

.field public static final COMMON_POLICY_NS_PREFIX:Ljava/lang/String; = "cp"

.field public static final COMMUNICATION_DIVERSION:Ljava/lang/String; = "communication-diversion"

.field public static final COMMUNICATION_WAITING:Ljava/lang/String; = "communication-waiting"

.field public static final CONDITIONS:Ljava/lang/String; = "conditions"

.field public static final DEACTIVATED:Ljava/lang/String; = "rule-deactivated"

.field public static final FORWARD_TO:Ljava/lang/String; = "forward-to"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final NO_REPLY_TIMER:Ljava/lang/String; = "NoReplyTimer"

.field public static final RULE:Ljava/lang/String; = "rule"

.field public static final RULESET:Ljava/lang/String; = "ruleset"

.field public static final SUPPLEMENTARY_SERVICE_NS_PREFIX:Ljava/lang/String; = "ss"

.field public static final TARGET:Ljava/lang/String; = "target"

.field public static final XML_CHARSET:Ljava/lang/String; = "UTF-8"

.field public static final XML_VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCondition(I)Ljava/lang/String;
    .registers 2
    .param p0, "condition"    # I

    .line 210
    packed-switch p0, :pswitch_data_16

    .line 222
    :pswitch_3
    const-string v0, "unknown"

    return-object v0

    .line 220
    :pswitch_6
    const-string v0, "not-registered"

    return-object v0

    .line 218
    :pswitch_9
    const-string v0, "not-reachable"

    return-object v0

    .line 216
    :pswitch_c
    const-string v0, "no-answer"

    return-object v0

    .line 214
    :pswitch_f
    const-string v0, "busy"

    return-object v0

    .line 212
    :pswitch_12
    const-string v0, "unconditional"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public static getId(I)Ljava/lang/String;
    .registers 2
    .param p0, "condition"    # I

    .line 193
    packed-switch p0, :pswitch_data_16

    .line 205
    :pswitch_3
    const-string v0, "unknown"

    return-object v0

    .line 203
    :pswitch_6
    const-string v0, "call-diversion-not-logged-in"

    return-object v0

    .line 201
    :pswitch_9
    const-string v0, "call-diversion-not-reachable"

    return-object v0

    .line 199
    :pswitch_c
    const-string v0, "call-diversion-no-reply"

    return-object v0

    .line 197
    :pswitch_f
    const-string v0, "call-diversion-busy"

    return-object v0

    .line 195
    :pswitch_12
    const-string v0, "call-diversion-unconditional"

    return-object v0

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
