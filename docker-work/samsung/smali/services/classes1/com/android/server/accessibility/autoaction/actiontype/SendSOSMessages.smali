.class public Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "SendSOSMessages.java"


# static fields
.field public static final SEND_EMERGENCY_MESSAGE_POWER_NUMBER:Ljava/lang/String; = "send_emergency_message_power_number"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mUserId:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserId(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 34
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mContext:Landroid/content/Context;

    .line 36
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;->mUserId:I

    return-void
.end method

.method public static createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;
    .registers 3

    .line 40
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x1040124

    return v0
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 3

    .line 49
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages$1;-><init>(Lcom/android/server/accessibility/autoaction/actiontype/SendSOSMessages;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
