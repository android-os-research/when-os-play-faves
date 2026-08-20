.class public final Landroid/service/notification/ZenPolicy;
.super Ljava/lang/Object;
.source "ZenPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenPolicy$Builder;,
        Landroid/service/notification/ZenPolicy$State;,
        Landroid/service/notification/ZenPolicy$ConversationSenders;,
        Landroid/service/notification/ZenPolicy$PeopleType;,
        Landroid/service/notification/ZenPolicy$VisualEffect;,
        Landroid/service/notification/ZenPolicy$PriorityCategory;
    }
.end annotation


# static fields
.field public static final whitelist CONVERSATION_SENDERS_ANYONE:I = 0x1

.field public static final whitelist CONVERSATION_SENDERS_IMPORTANT:I = 0x2

.field public static final whitelist CONVERSATION_SENDERS_NONE:I = 0x3

.field public static final whitelist CONVERSATION_SENDERS_UNSET:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/ZenPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist PEOPLE_TYPE_ANYONE:I = 0x1

.field public static final whitelist PEOPLE_TYPE_CONTACTS:I = 0x2

.field public static final whitelist PEOPLE_TYPE_NONE:I = 0x4

.field public static final whitelist PEOPLE_TYPE_STARRED:I = 0x3

.field public static final whitelist PEOPLE_TYPE_UNSET:I = 0x0

.field public static final blacklist PRIORITY_CATEGORY_ALARMS:I = 0x5

.field public static final blacklist PRIORITY_CATEGORY_CALLS:I = 0x3

.field public static final blacklist PRIORITY_CATEGORY_CONVERSATIONS:I = 0x8

.field public static final blacklist PRIORITY_CATEGORY_EVENTS:I = 0x1

.field public static final blacklist PRIORITY_CATEGORY_MEDIA:I = 0x6

.field public static final blacklist PRIORITY_CATEGORY_MESSAGES:I = 0x2

.field public static final blacklist PRIORITY_CATEGORY_REMINDERS:I = 0x0

.field public static final blacklist PRIORITY_CATEGORY_REPEAT_CALLERS:I = 0x4

.field public static final blacklist PRIORITY_CATEGORY_SYSTEM:I = 0x7

.field public static final whitelist STATE_ALLOW:I = 0x1

.field public static final whitelist STATE_DISALLOW:I = 0x2

.field public static final whitelist STATE_UNSET:I = 0x0

.field public static final blacklist VISUAL_EFFECT_AMBIENT:I = 0x5

.field public static final blacklist VISUAL_EFFECT_BADGE:I = 0x4

.field public static final blacklist VISUAL_EFFECT_FULL_SCREEN_INTENT:I = 0x0

.field public static final blacklist VISUAL_EFFECT_LIGHTS:I = 0x1

.field public static final blacklist VISUAL_EFFECT_NOTIFICATION_LIST:I = 0x6

.field public static final blacklist VISUAL_EFFECT_PEEK:I = 0x2

.field public static final blacklist VISUAL_EFFECT_STATUS_BAR:I = 0x3


# instance fields
.field private blacklist mAppsToBypassDnd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mConversationSenders:I

.field private blacklist mExceptionContacts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsContactsOverridden:Z

.field private blacklist mPriorityCalls:I

.field private blacklist mPriorityCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPriorityMessages:I

.field private blacklist mVisualEffects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppsToBypassDnd(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExceptionContacts(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPriorityCategories(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVisualEffects(Landroid/service/notification/ZenPolicy;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAppsToBypassDnd(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConversationSenders(Landroid/service/notification/ZenPolicy;I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExceptionContacts(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsContactsOverridden(Landroid/service/notification/ZenPolicy;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityCalls(Landroid/service/notification/ZenPolicy;I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityCategories(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPriorityMessages(Landroid/service/notification/ZenPolicy;I)V
    .registers 2

    iput p1, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVisualEffects(Landroid/service/notification/ZenPolicy;Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 860
    new-instance v0, Landroid/service/notification/ZenPolicy$1;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 4

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 44
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    .line 45
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    .line 46
    iput v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 49
    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x9

    invoke-static {v2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-static {v2, v1}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    .line 212
    return-void
.end method

.method private blacklist appsToBypassDndToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1002
    .local p1, "appsToBypassDnd":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1003
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1004
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 1005
    if-eqz v1, :cond_18

    const-string v2, ", ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    :cond_18
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1008
    .end local v1    # "i":I
    :cond_24
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist conversationTypeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "conversationType"    # I

    .line 1017
    packed-switch p0, :pswitch_data_2e

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidConversationType{"

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

    .line 1023
    :pswitch_1f
    const-string/jumbo v0, "none"

    return-object v0

    .line 1021
    :pswitch_23
    const-string/jumbo v0, "important"

    return-object v0

    .line 1019
    :pswitch_27
    const-string v0, "anyone"

    return-object v0

    .line 1025
    :pswitch_2a
    const-string/jumbo v0, "unset"

    return-object v0

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist getZenPolicyPriorityCategoryState(I)I
    .registers 3
    .param p1, "category"    # I

    .line 1054
    packed-switch p1, :pswitch_data_32

    .line 1074
    const/4 v0, -0x1

    return v0

    .line 1072
    :pswitch_5
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v0

    return v0

    .line 1070
    :pswitch_a
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v0

    return v0

    .line 1068
    :pswitch_f
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v0

    return v0

    .line 1066
    :pswitch_14
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v0

    return v0

    .line 1064
    :pswitch_19
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v0

    return v0

    .line 1062
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v0

    return v0

    .line 1060
    :pswitch_23
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v0

    return v0

    .line 1058
    :pswitch_28
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v0

    return v0

    .line 1056
    :pswitch_2d
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v0

    return v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_28
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist getZenPolicyVisualEffectState(I)I
    .registers 3
    .param p1, "effect"    # I

    .line 1078
    packed-switch p1, :pswitch_data_28

    .line 1094
    const/4 v0, -0x1

    return v0

    .line 1092
    :pswitch_5
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v0

    return v0

    .line 1090
    :pswitch_a
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v0

    return v0

    .line 1088
    :pswitch_f
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v0

    return v0

    .line 1086
    :pswitch_14
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v0

    return v0

    .line 1084
    :pswitch_19
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v0

    return v0

    .line 1082
    :pswitch_1e
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v0

    return v0

    .line 1080
    :pswitch_23
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v0

    return v0

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_23
        :pswitch_1e
        :pswitch_19
        :pswitch_14
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist indexToCategory(I)Ljava/lang/String;
    .registers 3
    .param p1, "categoryIndex"    # I

    .line 949
    packed-switch p1, :pswitch_data_26

    .line 969
    const/4 v0, 0x0

    return-object v0

    .line 967
    :pswitch_5
    const-string v0, "convs"

    return-object v0

    .line 965
    :pswitch_8
    const-string/jumbo v0, "system"

    return-object v0

    .line 963
    :pswitch_c
    const-string/jumbo v0, "media"

    return-object v0

    .line 961
    :pswitch_10
    const-string v0, "alarms"

    return-object v0

    .line 959
    :pswitch_13
    const-string/jumbo v0, "repeatCallers"

    return-object v0

    .line 957
    :pswitch_17
    const-string v0, "calls"

    return-object v0

    .line 955
    :pswitch_1a
    const-string/jumbo v0, "messages"

    return-object v0

    .line 953
    :pswitch_1e
    const-string v0, "events"

    return-object v0

    .line 951
    :pswitch_21
    const-string/jumbo v0, "reminders"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_21
        :pswitch_1e
        :pswitch_1a
        :pswitch_17
        :pswitch_13
        :pswitch_10
        :pswitch_c
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist indexToVisualEffect(I)Ljava/lang/String;
    .registers 3
    .param p1, "visualEffectIndex"    # I

    .line 929
    packed-switch p1, :pswitch_data_1e

    .line 945
    const/4 v0, 0x0

    return-object v0

    .line 943
    :pswitch_5
    const-string/jumbo v0, "notificationList"

    return-object v0

    .line 941
    :pswitch_9
    const-string v0, "ambient"

    return-object v0

    .line 939
    :pswitch_c
    const-string v0, "badge"

    return-object v0

    .line 937
    :pswitch_f
    const-string/jumbo v0, "statusBar"

    return-object v0

    .line 935
    :pswitch_13
    const-string/jumbo v0, "peek"

    return-object v0

    .line 933
    :pswitch_17
    const-string/jumbo v0, "lights"

    return-object v0

    .line 931
    :pswitch_1b
    const-string v0, "fullScreenIntent"

    return-object v0

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method private blacklist peopleTypeToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "peopleType"    # I

    .line 985
    packed-switch p1, :pswitch_data_32

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidPeopleType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 991
    :pswitch_1f
    const-string/jumbo v0, "none"

    return-object v0

    .line 993
    :pswitch_23
    const-string/jumbo v0, "starred_contacts"

    return-object v0

    .line 989
    :pswitch_27
    const-string v0, "contacts"

    return-object v0

    .line 987
    :pswitch_2a
    const-string v0, "anyone"

    return-object v0

    .line 995
    :pswitch_2d
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_23
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist priorityCategoriesToString()Ljava/lang/String;
    .registers 5

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 903
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_43

    .line 904
    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->indexToCategory(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 905
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    .line 906
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/service/notification/ZenPolicy;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 907
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 911
    .end local v1    # "i":I
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist stateToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # I

    .line 973
    packed-switch p1, :pswitch_data_2a

    .line 981
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalidState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 977
    :pswitch_1f
    const-string v0, "disallow"

    return-object v0

    .line 979
    :pswitch_22
    const-string v0, "allow"

    return-object v0

    .line 975
    :pswitch_25
    const-string/jumbo v0, "unset"

    return-object v0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_25
        :pswitch_22
        :pswitch_1f
    .end packed-switch
.end method

.method private blacklist visualEffectsToString()Ljava/lang/String;
    .registers 5

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 916
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 917
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_43

    .line 918
    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->indexToVisualEffect(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 919
    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    .line 920
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/service/notification/ZenPolicy;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 921
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 925
    .end local v1    # "i":I
    :cond_46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist apply(Landroid/service/notification/ZenPolicy;)V
    .registers 7
    .param p1, "policyToApply"    # Landroid/service/notification/ZenPolicy;

    .line 1126
    if-nez p1, :cond_3

    .line 1127
    return-void

    .line 1131
    :cond_3
    const/4 v0, 0x0

    .local v0, "category":I
    :goto_4
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_59

    .line 1132
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1c

    .line 1134
    goto :goto_56

    .line 1137
    :cond_1c
    iget-object v1, p1, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1138
    .local v1, "newState":I
    if-eqz v1, :cond_56

    .line 1139
    iget-object v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1141
    if-ne v0, v2, :cond_3e

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    if-ge v2, v3, :cond_3e

    .line 1143
    iput v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    goto :goto_56

    .line 1144
    :cond_3e
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4a

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    if-ge v2, v3, :cond_4a

    .line 1146
    iput v3, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    goto :goto_56

    .line 1147
    :cond_4a
    const/16 v2, 0x8

    if-ne v0, v2, :cond_56

    iget v2, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iget v3, p1, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    if-ge v2, v3, :cond_56

    .line 1149
    iput v3, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 1131
    .end local v1    # "newState":I
    :cond_56
    :goto_56
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1155
    .end local v0    # "category":I
    :cond_59
    const/4 v0, 0x0

    .local v0, "visualEffect":I
    :goto_5a
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8f

    .line 1156
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_71

    .line 1158
    goto :goto_8c

    .line 1161
    :cond_71
    iget-object v1, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8c

    .line 1162
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v1, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1155
    :cond_8c
    :goto_8c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5a

    .line 1168
    .end local v0    # "visualEffect":I
    :cond_8f
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getAppsToBypassDnd()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_97
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1169
    .local v1, "appName":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1170
    .end local v1    # "appName":Ljava/lang/String;
    goto :goto_97

    .line 1172
    :cond_a9
    invoke-virtual {p1}, Landroid/service/notification/ZenPolicy;->getExceptionContacts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1173
    .local v1, "contactInfo":Ljava/lang/String;
    iget-object v2, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1174
    .end local v1    # "contactInfo":Ljava/lang/String;
    goto :goto_b1

    .line 1176
    :cond_c3
    iget-boolean v0, p1, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    iput-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    .line 1178
    return-void
.end method

.method public blacklist copy()Landroid/service/notification/ZenPolicy;
    .registers 3

    .line 1247
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1249
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenPolicy;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1250
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1251
    sget-object v1, Landroid/service/notification/ZenPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenPolicy;
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_17

    .line 1253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1251
    return-object v1

    .line 1253
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1254
    throw v1
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 845
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 1184
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1186
    .local v0, "token":J
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1187
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1188
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1189
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1190
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v2

    const-wide v3, 0x10e00000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1191
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v2

    const-wide v3, 0x10e00000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1192
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v2

    const-wide v3, 0x10e00000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1193
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v2

    const-wide v3, 0x10e00000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1195
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v2

    const-wide v3, 0x10e00000009L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1196
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v2

    const-wide v3, 0x10e0000000aL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1197
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v2

    const-wide v3, 0x10e0000000bL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1198
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v2

    const-wide v3, 0x10e0000000cL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1199
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v2

    const-wide v3, 0x10e0000000dL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1200
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v2

    const-wide v3, 0x10e0000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1201
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v2

    const-wide v3, 0x10e0000000fL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1203
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v2

    const-wide v3, 0x10e00000011L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1204
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v2

    const-wide v3, 0x10e00000010L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1205
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1206
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1032
    instance-of v0, p1, Landroid/service/notification/ZenPolicy;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1033
    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 1034
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/service/notification/ZenPolicy;

    .line 1036
    .local v2, "other":Landroid/service/notification/ZenPolicy;
    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    .line 1037
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    if-ne v3, v4, :cond_4f

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    if-ne v3, v4, :cond_4f

    iget v3, v2, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    iget v4, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    if-ne v3, v4, :cond_4f

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    .line 1041
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-object v3, v2, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    .line 1042
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    iget-boolean v3, v2, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    if-ne v3, v4, :cond_4f

    move v1, v0

    goto :goto_50

    :cond_4f
    nop

    .line 1036
    :goto_50
    return v1
.end method

.method public blacklist getAppsToBypassDnd()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getExceptionContacts()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public whitelist getPriorityCallSenders()I
    .registers 2

    .line 238
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    return v0
.end method

.method public whitelist getPriorityCategoryAlarms()I
    .registers 3

    .line 312
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryCalls()I
    .registers 3

    .line 290
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryConversations()I
    .registers 3

    .line 248
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryEvents()I
    .registers 3

    .line 268
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryMedia()I
    .registers 3

    .line 323
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryMessages()I
    .registers 3

    .line 279
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryReminders()I
    .registers 3

    .line 258
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategoryRepeatCallers()I
    .registers 3

    .line 300
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityCategorySystem()I
    .registers 3

    .line 332
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getPriorityConversationSenders()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    return v0
.end method

.method public whitelist getPriorityMessageSenders()I
    .registers 2

    .line 229
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    return v0
.end method

.method public whitelist getVisualEffectAmbient()I
    .registers 3

    .line 379
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectBadge()I
    .registers 3

    .line 371
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectFullScreenIntent()I
    .registers 3

    .line 340
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectLights()I
    .registers 3

    .line 348
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectNotificationList()I
    .registers 3

    .line 388
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectPeek()I
    .registers 3

    .line 355
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getVisualEffectStatusBar()I
    .registers 3

    .line 363
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1048
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 1049
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 1048
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isCategoryAllowed(IZ)Z
    .registers 4
    .param p1, "category"    # I
    .param p2, "defaultVal"    # Z

    .line 1099
    invoke-direct {p0, p1}, Landroid/service/notification/ZenPolicy;->getZenPolicyPriorityCategoryState(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 1105
    return p2

    .line 1103
    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 1101
    :pswitch_a
    const/4 v0, 0x1

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist isContactsOverridden()Z
    .registers 2

    .line 437
    iget-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    return v0
.end method

.method public blacklist isVisualEffectAllowed(IZ)Z
    .registers 4
    .param p1, "effect"    # I
    .param p2, "defaultVal"    # Z

    .line 1111
    invoke-direct {p0, p1}, Landroid/service/notification/ZenPolicy;->getZenPolicyVisualEffectState(I)I

    move-result v0

    packed-switch v0, :pswitch_data_c

    .line 1117
    return p2

    .line 1115
    :pswitch_8
    const/4 v0, 0x0

    return v0

    .line 1113
    :pswitch_a
    const/4 v0, 0x1

    return v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public blacklist shouldHideAllVisualEffects()Z
    .registers 4

    .line 396
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 397
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    .line 398
    const/4 v1, 0x0

    return v1

    .line 396
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldShowAllVisualEffects()Z
    .registers 4

    .line 409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1d

    .line 410
    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_1a

    .line 411
    const/4 v1, 0x0

    return v1

    .line 409
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 414
    .end local v0    # "i":I
    :cond_1d
    return v2
.end method

.method public blacklist toProto()[B
    .registers 6

    .line 1213
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1214
    .local v0, "bytes":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, v0}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1216
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryCalls()I

    move-result v2

    const-wide v3, 0x10e00000001L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1217
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryRepeatCallers()I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1218
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMessages()I

    move-result v2

    const-wide v3, 0x10e00000003L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1219
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryConversations()I

    move-result v2

    const-wide v3, 0x10e00000004L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1220
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryReminders()I

    move-result v2

    const-wide v3, 0x10e00000005L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1221
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryEvents()I

    move-result v2

    const-wide v3, 0x10e00000006L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1222
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryAlarms()I

    move-result v2

    const-wide v3, 0x10e00000007L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1223
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategoryMedia()I

    move-result v2

    const-wide v3, 0x10e00000008L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1224
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCategorySystem()I

    move-result v2

    const-wide v3, 0x10e00000009L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1226
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectFullScreenIntent()I

    move-result v2

    const-wide v3, 0x10e0000000aL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1227
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectLights()I

    move-result v2

    const-wide v3, 0x10e0000000bL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1228
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectPeek()I

    move-result v2

    const-wide v3, 0x10e0000000cL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1229
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectStatusBar()I

    move-result v2

    const-wide v3, 0x10e0000000dL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1230
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectBadge()I

    move-result v2

    const-wide v3, 0x10e0000000eL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1231
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectAmbient()I

    move-result v2

    const-wide v3, 0x10e0000000fL

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1232
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getVisualEffectNotificationList()I

    move-result v2

    const-wide v3, 0x10e00000010L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1234
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityCallSenders()I

    move-result v2

    const-wide v3, 0x10e00000011L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1235
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityMessageSenders()I

    move-result v2

    const-wide v3, 0x10e00000012L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1236
    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->getPriorityConversationSenders()I

    move-result v2

    const-wide v3, 0x10e00000013L

    invoke-virtual {v1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1238
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1239
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Landroid/service/notification/ZenPolicy;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 885
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 886
    const-string/jumbo v1, "priorityCategories=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy;->priorityCategoriesToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 887
    const-string v1, "], visualEffects=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/service/notification/ZenPolicy;->visualEffectsToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 888
    const-string v1, "], priorityCallsSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->peopleTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 889
    const-string v1, ", priorityMessagesSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->peopleTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 890
    const-string v1, ", priorityConversationSenders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    .line 891
    invoke-static {v1}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 892
    const-string v1, ", appsToBypassDnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->appsToBypassDndToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 893
    const-string v1, ", exceptionContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Landroid/service/notification/ZenPolicy;->appsToBypassDndToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 894
    const-string v1, ", isContactsOverridden="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 895
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 896
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 884
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 850
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCategories:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 851
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mVisualEffects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 852
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mPriorityMessages:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    iget v0, p0, Landroid/service/notification/ZenPolicy;->mConversationSenders:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 855
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mAppsToBypassDnd:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 856
    iget-object v0, p0, Landroid/service/notification/ZenPolicy;->mExceptionContacts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 857
    iget-boolean v0, p0, Landroid/service/notification/ZenPolicy;->mIsContactsOverridden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 858
    return-void
.end method
