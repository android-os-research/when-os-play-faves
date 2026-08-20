.class public Landroid/app/NotificationManager$Policy;
.super Ljava/lang/Object;
.source "NotificationManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/NotificationManager$Policy$ConversationSenders;,
        Landroid/app/NotificationManager$Policy$PrioritySenders;
    }
.end annotation


# static fields
.field public static final greylist-max-o ALL_PRIORITY_CATEGORIES:[I

.field private static final greylist-max-o ALL_SUPPRESSED_EFFECTS:[I

.field public static final whitelist CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final whitelist CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final whitelist CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final blacklist CONVERSATION_SENDERS_UNSET:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/NotificationManager$Policy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PRIORITY_CATEGORY_ALARMS:I = 0x20

.field public static final whitelist PRIORITY_CATEGORY_CALLS:I = 0x8

.field public static final whitelist PRIORITY_CATEGORY_CONVERSATIONS:I = 0x100

.field public static final whitelist PRIORITY_CATEGORY_EVENTS:I = 0x2

.field public static final whitelist PRIORITY_CATEGORY_MEDIA:I = 0x40

.field public static final whitelist PRIORITY_CATEGORY_MESSAGES:I = 0x4

.field public static final whitelist PRIORITY_CATEGORY_REMINDERS:I = 0x1

.field public static final whitelist PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x10

.field public static final whitelist PRIORITY_CATEGORY_SYSTEM:I = 0x80

.field public static final whitelist PRIORITY_SENDERS_ANY:I = 0x0

.field public static final whitelist PRIORITY_SENDERS_CONTACTS:I = 0x1

.field public static final whitelist PRIORITY_SENDERS_STARRED:I = 0x2

.field private static final greylist-max-o SCREEN_OFF_SUPPRESSED_EFFECTS:[I

.field private static final greylist-max-o SCREEN_ON_SUPPRESSED_EFFECTS:[I

.field public static final greylist-max-o STATE_CHANNELS_BYPASSING_DND:I = 0x1

.field public static final greylist-max-o STATE_UNSET:I = -0x1

.field public static final greylist-max-o SUPPRESSED_EFFECTS_UNSET:I = -0x1

.field public static final whitelist SUPPRESSED_EFFECT_AMBIENT:I = 0x80

.field public static final whitelist SUPPRESSED_EFFECT_BADGE:I = 0x40

.field public static final whitelist SUPPRESSED_EFFECT_FULL_SCREEN_INTENT:I = 0x4

.field public static final whitelist SUPPRESSED_EFFECT_LIGHTS:I = 0x8

.field public static final whitelist SUPPRESSED_EFFECT_NOTIFICATION_LIST:I = 0x100

.field public static final whitelist SUPPRESSED_EFFECT_PEEK:I = 0x10

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_SCREEN_ON:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SUPPRESSED_EFFECT_STATUS_BAR:I = 0x20


# instance fields
.field private blacklist mExceptionContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final whitelist priorityCallSenders:I

.field public final whitelist priorityCategories:I

.field public final whitelist priorityConversationSenders:I

.field public final whitelist priorityMessageSenders:I

.field public final greylist-max-o state:I

.field public final whitelist suppressedVisualEffects:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1852
    const/16 v0, 0x9

    new-array v1, v0, [I

    fill-array-data v1, :array_28

    sput-object v1, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    .line 1993
    new-array v0, v0, [I

    fill-array-data v0, :array_3e

    sput-object v0, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    .line 2006
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    .line 2013
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_60

    sput-object v0, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    .line 2534
    new-instance v0, Landroid/app/NotificationManager$Policy$1;

    invoke-direct {v0}, Landroid/app/NotificationManager$Policy$1;-><init>()V

    sput-object v0, Landroid/app/NotificationManager$Policy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_28
    .array-data 4
        0x20
        0x40
        0x80
        0x1
        0x2
        0x4
        0x8
        0x10
        0x100
    .end array-data

    :array_3e
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x4
        0x8
        0x80
    .end array-data

    :array_60
    .array-data 4
        0x2
        0x10
        0x20
        0x40
        0x100
    .end array-data
.end method

.method public constructor whitelist <init>(III)V
    .registers 11
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I

    .line 2061
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2063
    return-void
.end method

.method public constructor whitelist <init>(IIII)V
    .registers 12
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I

    .line 2095
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2097
    return-void
.end method

.method public constructor whitelist <init>(IIIII)V
    .registers 13
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I
    .param p5, "priorityConversationSenders"    # I

    .line 2138
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    .line 2140
    return-void
.end method

.method public constructor blacklist <init>(IIIIII)V
    .registers 15
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I
    .param p5, "state"    # I
    .param p6, "priorityConversationSenders"    # I

    .line 2153
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIILjava/util/List;)V

    .line 2157
    return-void
.end method

.method public constructor blacklist <init>(IIIIIILjava/util/List;)V
    .registers 9
    .param p1, "priorityCategories"    # I
    .param p2, "priorityCallSenders"    # I
    .param p3, "priorityMessageSenders"    # I
    .param p4, "suppressedVisualEffects"    # I
    .param p5, "state"    # I
    .param p6, "priorityConversationSenders"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2163
    .local p7, "exceptionContacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2164
    iput p1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2165
    iput p2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2166
    iput p3, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2167
    iput p4, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2168
    iput p5, p0, Landroid/app/NotificationManager$Policy;->state:I

    .line 2169
    iput p6, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2170
    if-eqz p7, :cond_13

    move-object v0, p7

    goto :goto_18

    :cond_13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_18
    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    .line 2171
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "source"    # Landroid/os/Parcel;

    .line 2176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 2177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2178
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 2176
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Landroid/app/NotificationManager$Policy;-><init>(IIIIIILjava/util/List;)V

    .line 2179
    return-void
.end method

.method public static greylist-max-o areAllVisualEffectsSuppressed(I)Z
    .registers 4
    .param p0, "effects"    # I

    .line 2338
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_11

    .line 2339
    aget v1, v1, v0

    .line 2340
    .local v1, "effect":I
    and-int v2, p0, v1

    if-nez v2, :cond_e

    .line 2341
    const/4 v2, 0x0

    return v2

    .line 2338
    .end local v1    # "effect":I
    :cond_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2344
    .end local v0    # "i":I
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private static greylist-max-o bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 7
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"    # J
    .param p3, "data"    # I

    .line 2316
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    if-lez p3, :cond_10

    .line 2317
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    .line 2318
    invoke-virtual {p0, p1, p2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2316
    :cond_b
    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 2321
    .end local v0    # "i":I
    :cond_10
    return-void
.end method

.method public static blacklist conversationSendersToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "priorityConversationSenders"    # I

    .line 2521
    packed-switch p0, :pswitch_data_2c

    .line 2531
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalidConversationType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2527
    :pswitch_1e
    const-string/jumbo v0, "none"

    return-object v0

    .line 2525
    :pswitch_22
    const-string v0, "important"

    return-object v0

    .line 2523
    :pswitch_25
    const-string v0, "anyone"

    return-object v0

    .line 2529
    :pswitch_28
    const-string/jumbo v0, "unset"

    return-object v0

    :pswitch_data_2c
    .packed-switch -0x1
        :pswitch_28
        :pswitch_3
        :pswitch_25
        :pswitch_22
        :pswitch_1e
    .end packed-switch
.end method

.method private static greylist-max-o effectToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "effect"    # I

    .line 2468
    sparse-switch p0, :sswitch_data_36

    .line 2489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2482
    :sswitch_17
    const-string v0, "SUPPRESSED_EFFECT_NOTIFICATION_LIST"

    return-object v0

    .line 2480
    :sswitch_1a
    const-string v0, "SUPPRESSED_EFFECT_AMBIENT"

    return-object v0

    .line 2478
    :sswitch_1d
    const-string v0, "SUPPRESSED_EFFECT_BADGE"

    return-object v0

    .line 2476
    :sswitch_20
    const-string v0, "SUPPRESSED_EFFECT_STATUS_BAR"

    return-object v0

    .line 2474
    :sswitch_23
    const-string v0, "SUPPRESSED_EFFECT_PEEK"

    return-object v0

    .line 2472
    :sswitch_26
    const-string v0, "SUPPRESSED_EFFECT_LIGHTS"

    return-object v0

    .line 2470
    :sswitch_29
    const-string v0, "SUPPRESSED_EFFECT_FULL_SCREEN_INTENT"

    return-object v0

    .line 2486
    :sswitch_2c
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_ON"

    return-object v0

    .line 2484
    :sswitch_2f
    const-string v0, "SUPPRESSED_EFFECT_SCREEN_OFF"

    return-object v0

    .line 2488
    :sswitch_32
    const-string v0, "SUPPRESSED_EFFECTS_UNSET"

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        -0x1 -> :sswitch_32
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x8 -> :sswitch_26
        0x10 -> :sswitch_23
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1d
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_17
    .end sparse-switch
.end method

.method public static greylist-max-o getAllSuppressedVisualEffects()I
    .registers 4

    .line 2327
    const/4 v0, 0x0

    .line 2328
    .local v0, "effects":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v3, v2

    if-ge v1, v3, :cond_d

    .line 2329
    aget v2, v2, v1

    or-int/2addr v0, v2

    .line 2328
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2331
    .end local v1    # "i":I
    :cond_d
    return v0
.end method

.method public static whitelist priorityCategoriesToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "priorityCategories"    # I

    .line 2450
    if-nez p0, :cond_5

    const-string v0, ""

    return-object v0

    .line 2451
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2452
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_PRIORITY_CATEGORIES:[I

    array-length v3, v2

    const/16 v4, 0x2c

    if-ge v1, v3, :cond_2d

    .line 2453
    aget v2, v2, v1

    .line 2454
    .local v2, "priorityCategory":I
    and-int v3, p0, v2

    if-eqz v3, :cond_28

    .line 2455
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2456
    :cond_21
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->priorityCategoryToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2458
    :cond_28
    not-int v3, v2

    and-int/2addr p0, v3

    .line 2452
    .end local v2    # "priorityCategory":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2460
    .end local v1    # "i":I
    :cond_2d
    if-eqz p0, :cond_41

    .line 2461
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2462
    :cond_38
    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2464
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o priorityCategoryToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "priorityCategory"    # I

    .line 2494
    sparse-switch p0, :sswitch_data_32

    .line 2504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_CATEGORY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2503
    :sswitch_17
    const-string v0, "PRIORITY_CATEGORY_CONVERSATIONS"

    return-object v0

    .line 2502
    :sswitch_1a
    const-string v0, "PRIORITY_CATEGORY_SYSTEM"

    return-object v0

    .line 2501
    :sswitch_1d
    const-string v0, "PRIORITY_CATEGORY_MEDIA"

    return-object v0

    .line 2500
    :sswitch_20
    const-string v0, "PRIORITY_CATEGORY_ALARMS"

    return-object v0

    .line 2499
    :sswitch_23
    const-string v0, "PRIORITY_CATEGORY_REPEAT_CALLERS"

    return-object v0

    .line 2498
    :sswitch_26
    const-string v0, "PRIORITY_CATEGORY_CALLS"

    return-object v0

    .line 2497
    :sswitch_29
    const-string v0, "PRIORITY_CATEGORY_MESSAGES"

    return-object v0

    .line 2496
    :sswitch_2c
    const-string v0, "PRIORITY_CATEGORY_EVENTS"

    return-object v0

    .line 2495
    :sswitch_2f
    const-string v0, "PRIORITY_CATEGORY_REMINDERS"

    return-object v0

    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_2f
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_29
        0x8 -> :sswitch_26
        0x10 -> :sswitch_23
        0x20 -> :sswitch_20
        0x40 -> :sswitch_1d
        0x80 -> :sswitch_1a
        0x100 -> :sswitch_17
    .end sparse-switch
.end method

.method public static whitelist prioritySendersToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "prioritySenders"    # I

    .line 2509
    packed-switch p0, :pswitch_data_20

    .line 2513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PRIORITY_SENDERS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2512
    :pswitch_17
    const-string v0, "PRIORITY_SENDERS_STARRED"

    return-object v0

    .line 2511
    :pswitch_1a
    const-string v0, "PRIORITY_SENDERS_CONTACTS"

    return-object v0

    .line 2510
    :pswitch_1d
    const-string v0, "PRIORITY_SENDERS_ANY"

    return-object v0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
    .end packed-switch
.end method

.method public static blacklist secAreAllVisualEffectsSuppressed(I)Z
    .registers 5
    .param p0, "effects"    # I

    .line 2355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_27

    .line 2356
    aget v1, v1, v0

    .line 2357
    .local v1, "effect":I
    const/16 v2, 0x80

    if-eq v1, v2, :cond_24

    if-eq v1, v3, :cond_24

    const/4 v2, 0x2

    if-ne v1, v2, :cond_13

    .line 2359
    goto :goto_24

    .line 2361
    :cond_13
    invoke-static {}, Landroid/app/NotificationManager$Policy;->supportLedIndicator()Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2362
    const/16 v2, 0x8

    if-ne v1, v2, :cond_1e

    .line 2363
    goto :goto_24

    .line 2366
    :cond_1e
    and-int v2, p0, v1

    if-nez v2, :cond_24

    .line 2367
    const/4 v2, 0x0

    return v2

    .line 2355
    .end local v1    # "effect":I
    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2370
    .end local v0    # "i":I
    :cond_27
    return v3
.end method

.method public static blacklist secAreAnyScreenOffEffectsSuppressed(I)Z
    .registers 5
    .param p0, "effects"    # I

    .line 2377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/NotificationManager$Policy;->SCREEN_OFF_SUPPRESSED_EFFECTS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_23

    .line 2378
    aget v1, v1, v0

    .line 2379
    .local v1, "effect":I
    const/16 v2, 0x80

    if-eq v1, v2, :cond_20

    const/4 v2, 0x1

    if-ne v1, v2, :cond_10

    .line 2380
    goto :goto_20

    .line 2382
    :cond_10
    invoke-static {}, Landroid/app/NotificationManager$Policy;->supportLedIndicator()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2383
    const/16 v3, 0x8

    if-ne v1, v3, :cond_1b

    .line 2384
    goto :goto_20

    .line 2387
    :cond_1b
    and-int v3, p0, v1

    if-eqz v3, :cond_20

    .line 2388
    return v2

    .line 2377
    .end local v1    # "effect":I
    :cond_20
    :goto_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2391
    .end local v0    # "i":I
    :cond_23
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist secAreAnyScreenOnEffectsSuppressed(I)Z
    .registers 4
    .param p0, "effects"    # I

    .line 2398
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Landroid/app/NotificationManager$Policy;->SCREEN_ON_SUPPRESSED_EFFECTS:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 2399
    aget v1, v1, v0

    .line 2400
    .local v1, "effect":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 2401
    goto :goto_12

    .line 2403
    :cond_c
    and-int v2, p0, v1

    if-eqz v2, :cond_12

    .line 2404
    const/4 v2, 0x1

    return v2

    .line 2398
    .end local v1    # "effect":I
    :cond_12
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2407
    .end local v0    # "i":I
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private static blacklist supportLedIndicator()Z
    .registers 2

    .line 2411
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/sec/led/led_blink"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2412
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_f

    .line 2413
    const/4 v1, 0x0

    return v1

    .line 2415
    :cond_f
    const/4 v1, 0x1

    return v1
.end method

.method public static whitelist suppressedEffectsToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "effects"    # I

    .line 2432
    if-gtz p0, :cond_5

    const-string v0, ""

    return-object v0

    .line 2433
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2434
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    sget-object v2, Landroid/app/NotificationManager$Policy;->ALL_SUPPRESSED_EFFECTS:[I

    array-length v3, v2

    const/16 v4, 0x2c

    if-ge v1, v3, :cond_2d

    .line 2435
    aget v2, v2, v1

    .line 2436
    .local v2, "effect":I
    and-int v3, p0, v2

    if-eqz v3, :cond_28

    .line 2437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2438
    :cond_21
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->effectToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2440
    :cond_28
    not-int v3, v2

    and-int/2addr p0, v3

    .line 2434
    .end local v2    # "effect":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2442
    .end local v1    # "i":I
    :cond_2d
    if-eqz p0, :cond_41

    .line 2443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2444
    :cond_38
    const-string v1, "UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2446
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist suppressedVisualEffectsEqual(II)Z
    .registers 7
    .param p1, "suppressedEffects"    # I
    .param p2, "otherSuppressedVisualEffects"    # I

    .line 2221
    const/4 v0, 0x1

    if-ne p1, p2, :cond_4

    .line 2222
    return v0

    .line 2225
    :cond_4
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_a

    .line 2226
    or-int/lit8 p1, p1, 0x10

    .line 2228
    :cond_a
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_14

    .line 2229
    or-int/lit8 p1, p1, 0x4

    .line 2230
    or-int/lit8 p1, p1, 0x8

    .line 2231
    or-int/lit16 p1, p1, 0x80

    .line 2234
    :cond_14
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1a

    .line 2235
    or-int/lit8 p2, p2, 0x10

    .line 2237
    :cond_1a
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_24

    .line 2238
    or-int/lit8 p2, p2, 0x4

    .line 2239
    or-int/lit8 p2, p2, 0x8

    .line 2240
    or-int/lit16 p2, p2, 0x80

    .line 2243
    :cond_24
    and-int/lit8 v1, p1, 0x2

    and-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_37

    .line 2245
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_31

    .line 2246
    move v1, p2

    goto :goto_32

    :cond_31
    move v1, p1

    .line 2247
    .local v1, "currSuppressedEffects":I
    :goto_32
    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_37

    .line 2248
    return v3

    .line 2252
    .end local v1    # "currSuppressedEffects":I
    :cond_37
    and-int/lit8 v1, p1, 0x1

    and-int/lit8 v2, p2, 0x1

    if-eq v1, v2, :cond_51

    .line 2254
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_43

    .line 2255
    move v1, p2

    goto :goto_44

    :cond_43
    move v1, p1

    .line 2256
    .restart local v1    # "currSuppressedEffects":I
    :goto_44
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_50

    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_50

    and-int/lit16 v2, v1, 0x80

    if-nez v2, :cond_51

    .line 2259
    :cond_50
    return v3

    .line 2263
    .end local v1    # "currSuppressedEffects":I
    :cond_51
    and-int/lit8 v1, p1, -0x3

    and-int/lit8 v1, v1, -0x2

    .line 2266
    .local v1, "thisWithoutOldEffects":I
    and-int/lit8 v2, p2, -0x3

    and-int/lit8 v2, v2, -0x2

    .line 2269
    .local v2, "otherWithoutOldEffects":I
    if-ne v1, v2, :cond_5c

    goto :goto_5d

    :cond_5c
    move v0, v3

    :goto_5d
    return v0
.end method

.method private static greylist-max-o toggleEffects(I[IZ)I
    .registers 6
    .param p0, "currentEffects"    # I
    .param p1, "effects"    # [I
    .param p2, "suppress"    # Z

    .line 2420
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_f

    .line 2421
    aget v1, p1, v0

    .line 2422
    .local v1, "effect":I
    if-eqz p2, :cond_a

    .line 2423
    or-int/2addr p0, v1

    goto :goto_c

    .line 2425
    :cond_a
    not-int v2, v1

    and-int/2addr p0, v2

    .line 2420
    .end local v1    # "effect":I
    :goto_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2428
    .end local v0    # "i":I
    :cond_f
    return p0
.end method


# virtual methods
.method public blacklist allowAlarms()Z
    .registers 2

    .line 2549
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowCalls()Z
    .registers 2

    .line 2569
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowCallsFrom()I
    .registers 2

    .line 2594
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    return v0
.end method

.method public blacklist allowConversations()Z
    .registers 2

    .line 2574
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowConversationsFrom()I
    .registers 2

    .line 2604
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    return v0
.end method

.method public blacklist allowEvents()Z
    .registers 2

    .line 2584
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMedia()Z
    .registers 2

    .line 2554
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMessages()Z
    .registers 2

    .line 2579
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowMessagesFrom()I
    .registers 2

    .line 2599
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    return v0
.end method

.method public blacklist allowReminders()Z
    .registers 3

    .line 2589
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method public blacklist allowRepeatCallers()Z
    .registers 2

    .line 2564
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist allowSystem()Z
    .registers 2

    .line 2559
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist copy()Landroid/app/NotificationManager$Policy;
    .registers 3

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2649
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager$Policy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2650
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2651
    new-instance v1, Landroid/app/NotificationManager$Policy;

    invoke-direct {v1, v0}, Landroid/app/NotificationManager$Policy;-><init>(Landroid/os/Parcel;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_14

    .line 2653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2651
    return-object v1

    .line 2653
    :catchall_14
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2654
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2194
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 2304
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2306
    .local v0, "pToken":J
    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const-wide v3, 0x20e00000001L

    invoke-static {p1, v3, v4, v2}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2307
    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2308
    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2309
    iget v2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    const-wide v3, 0x20e00000004L

    invoke-static {p1, v3, v4, v2}, Landroid/app/NotificationManager$Policy;->bitwiseToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2312
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2313
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2205
    instance-of v0, p1, Landroid/app/NotificationManager$Policy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2206
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 2207
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/app/NotificationManager$Policy;

    .line 2208
    .local v2, "other":Landroid/app/NotificationManager$Policy;
    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-ne v3, v4, :cond_43

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    if-ne v3, v4, :cond_43

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    if-ne v3, v4, :cond_43

    iget v3, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v4, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2211
    invoke-direct {p0, v3, v4}, Landroid/app/NotificationManager$Policy;->suppressedVisualEffectsEqual(II)Z

    move-result v3

    if-eqz v3, :cond_43

    iget v3, v2, Landroid/app/NotificationManager$Policy;->state:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->state:I

    if-ne v3, v4, :cond_43

    iget v3, v2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    iget v4, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne v3, v4, :cond_43

    iget-object v3, v2, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    if-eqz v3, :cond_43

    iget-object v4, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    .line 2216
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    move v1, v0

    goto :goto_44

    :cond_43
    nop

    .line 2208
    :goto_44
    return v1
.end method

.method public blacklist getExceptionContacts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2670
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2199
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2200
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2199
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist setExceptionContacts(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2661
    .local p1, "contacts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    if-nez v0, :cond_b

    .line 2662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    .line 2664
    :cond_b
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2665
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2666
    return-void
.end method

.method public blacklist showAmbient()Z
    .registers 2

    .line 2629
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showBadges()Z
    .registers 2

    .line 2634
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showFullScreenIntents()Z
    .registers 2

    .line 2609
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showInNotificationList()Z
    .registers 2

    .line 2639
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showLights()Z
    .registers 2

    .line 2614
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showPeeking()Z
    .registers 2

    .line 2619
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist showStatusBarIcons()Z
    .registers 2

    .line 2624
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 2275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2276
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    if-eqz v1, :cond_2a

    .line 2277
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2278
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_26

    .line 2279
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2281
    :cond_26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2282
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_d

    .line 2285
    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationManager.Policy[priorityCategories="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    .line 2286
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->priorityCategoriesToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",priorityCallSenders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 2287
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",priorityMessageSenders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    .line 2288
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->prioritySendersToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",priorityConvSenders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    .line 2290
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->conversationSendersToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mExceptionContacts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",suppressedVisualEffects="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 2293
    invoke-static {v2}, Landroid/app/NotificationManager$Policy;->suppressedEffectsToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",areChannelsBypassingDnd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2294
    iget v2, p0, Landroid/app/NotificationManager$Policy;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_9c

    .line 2295
    const-string/jumbo v2, "unset"

    goto :goto_a6

    .line 2296
    :cond_9c
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a4

    .line 2297
    const-string/jumbo v2, "true"

    goto :goto_a6

    .line 2298
    :cond_a4
    const-string v2, "false"

    :goto_a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2285
    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2183
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2184
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    iget v0, p0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2187
    iget v0, p0, Landroid/app/NotificationManager$Policy;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2188
    iget v0, p0, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2189
    iget-object v0, p0, Landroid/app/NotificationManager$Policy;->mExceptionContacts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2190
    return-void
.end method
