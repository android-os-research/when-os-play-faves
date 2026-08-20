.class public Landroid/app/Notification$MessagingStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessagingStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$MessagingStyle$Message;,
        Landroid/app/Notification$MessagingStyle$ConversationType;
    }
.end annotation


# static fields
.field public static final blacklist CONVERSATION_TYPE_IMPORTANT:I = 0x2

.field public static final blacklist CONVERSATION_TYPE_LEGACY:I = 0x0

.field public static final blacklist CONVERSATION_TYPE_NORMAL:I = 0x1

.field public static final whitelist MAXIMUM_RETAINED_MESSAGES:I = 0x19


# instance fields
.field greylist-max-o mConversationTitle:Ljava/lang/CharSequence;

.field blacklist mConversationType:I

.field greylist-max-o mHistoricMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mIsGroupConversation:Z

.field greylist-max-o mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mShortcutIcon:Landroid/graphics/drawable/Icon;

.field blacklist mUnreadMessageCount:I

.field greylist-max-o mUser:Landroid/app/Person;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 2

    .line 8114
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8111
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 8115
    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/Person;)V
    .registers 3
    .param p1, "user"    # Landroid/app/Person;

    .line 8136
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 8108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8111
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 8137
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 8138
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "userDisplayName"    # Ljava/lang/CharSequence;

    .line 8126
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    .line 8127
    return-void
.end method

.method private greylist-max-o findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;
    .registers 2

    .line 8554
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;)",
            "Landroid/app/Notification$MessagingStyle$Message;"
        }
    .end annotation

    .line 8563
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_26

    .line 8564
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8566
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 8567
    return-object v1

    .line 8563
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 8570
    .end local v0    # "i":I
    :cond_26
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    .line 8572
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    return-object v0

    .line 8574
    :cond_39
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8434
    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage()Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v0

    .line 8435
    .local v0, "m":Landroid/app/Notification$MessagingStyle$Message;
    const/4 v1, 0x0

    if-nez v0, :cond_9

    move-object v2, v1

    goto :goto_d

    :cond_9
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmText(Landroid/app/Notification$MessagingStyle$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 8436
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_d
    if-nez v0, :cond_10

    goto :goto_30

    .line 8437
    :cond_10
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    goto :goto_2a

    .line 8438
    :cond_25
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v1

    goto :goto_2c

    :cond_2a
    :goto_2a
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    :goto_2c
    invoke-virtual {v1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_30
    nop

    .line 8440
    .local v1, "sender":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 8442
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6c

    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6c

    .line 8443
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v3

    .line 8444
    .local v3, "bidi":Landroid/text/BidiFormatter;
    iget-object v4, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040882

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8446
    invoke-virtual {v3, v8}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v3, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    aput-object v8, v6, v7

    .line 8444
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 8447
    .local v3, "title":Ljava/lang/CharSequence;
    goto :goto_70

    .line 8448
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_6c
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .restart local v3    # "title":Ljava/lang/CharSequence;
    goto :goto_70

    .line 8451
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_6f
    move-object v3, v1

    .line 8454
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :goto_70
    if-eqz v3, :cond_77

    .line 8455
    const-string v4, "android.title"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8457
    :cond_77
    if-eqz v2, :cond_7e

    .line 8458
    const-string v4, "android.text"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8460
    :cond_7e
    return-void
.end method

.method private blacklist getKey(Landroid/app/Person;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "person"    # Landroid/app/Person;

    .line 8691
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_13

    .line 8692
    :cond_4
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-virtual {p1}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_13

    :cond_f
    invoke-virtual {p1}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 8691
    :goto_13
    return-object v0
.end method

.method private blacklist getOtherPersonName()Ljava/lang/CharSequence;
    .registers 5

    .line 8696
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8697
    .local v0, "userKey":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_30

    .line 8698
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v2}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 8699
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_2d

    invoke-direct {p0, v2}, Landroid/app/Notification$MessagingStyle;->getKey(Landroid/app/Person;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 8700
    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3

    .line 8697
    .end local v2    # "sender":Landroid/app/Person;
    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 8703
    .end local v1    # "i":I
    :cond_30
    const/4 v1, 0x0

    return-object v1
.end method

.method private greylist-max-o hasOnlyWhiteSpaceSenders()Z
    .registers 5

    .line 8707
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_26

    .line 8708
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8709
    .local v1, "m":Landroid/app/Notification$MessagingStyle$Message;
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v2

    .line 8710
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/app/Notification$MessagingStyle;->isWhiteSpace(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 8711
    const/4 v3, 0x0

    return v3

    .line 8707
    .end local v1    # "m":Landroid/app/Notification$MessagingStyle$Message;
    .end local v2    # "sender":Landroid/app/Person;
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8714
    .end local v0    # "i":I
    :cond_26
    const/4 v0, 0x1

    return v0
.end method

.method private greylist-max-o isWhiteSpace(Ljava/lang/CharSequence;)Z
    .registers 6
    .param p1, "sender"    # Ljava/lang/CharSequence;

    .line 8718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 8719
    return v1

    .line 8721
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "^\\s*$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 8722
    return v1

    .line 8726
    :cond_15
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 8727
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 8728
    .local v2, "c":C
    const/16 v3, 0x200b

    if-eq v2, v3, :cond_26

    .line 8729
    const/4 v1, 0x0

    return v1

    .line 8726
    .end local v2    # "c":C
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 8732
    .end local v0    # "i":I
    :cond_29
    return v1
.end method

.method private blacklist makeMessagingView(I)Landroid/widget/RemoteViews;
    .registers 20
    .param p1, "viewType"    # I

    .line 8594
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget v2, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    const/4 v4, 0x1

    if-eq v1, v2, :cond_b

    move v2, v4

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 8595
    .local v2, "isCollapsed":Z
    :goto_c
    sget v5, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    if-eq v1, v5, :cond_12

    move v5, v4

    goto :goto_13

    :cond_12
    const/4 v5, 0x0

    .line 8596
    .local v5, "hideRightIcons":Z
    :goto_13
    iget v6, v0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-eqz v6, :cond_19

    move v7, v4

    goto :goto_1a

    :cond_19
    const/4 v7, 0x0

    .line 8597
    .local v7, "isConversationLayout":Z
    :goto_1a
    const/4 v8, 0x2

    if-ne v6, v8, :cond_1f

    move v6, v4

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    .line 8598
    .local v6, "isImportantConversation":Z
    :goto_20
    if-nez v7, :cond_26

    if-eqz v2, :cond_26

    move v8, v4

    goto :goto_27

    :cond_26
    const/4 v8, 0x0

    .line 8600
    .local v8, "isHeaderless":Z
    :goto_27
    if-nez v7, :cond_2d

    if-nez v2, :cond_2d

    move v9, v4

    goto :goto_2e

    :cond_2d
    const/4 v9, 0x0

    .line 8602
    .local v9, "isBigMessageLayout":Z
    :goto_2e
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3d

    .line 8603
    invoke-static/range {p0 .. p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v10

    goto :goto_3f

    .line 8604
    :cond_3d
    iget-object v10, v0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_3f
    nop

    .line 8605
    .local v10, "conversationTitle":Ljava/lang/CharSequence;
    iget-object v11, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v11}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1c

    if-lt v11, v12, :cond_52

    move v11, v4

    goto :goto_53

    :cond_52
    const/4 v11, 0x0

    .line 8608
    .local v11, "atLeastP":Z
    :goto_53
    const/4 v12, 0x0

    .line 8609
    .local v12, "nameReplacement":Ljava/lang/CharSequence;
    if-nez v11, :cond_64

    .line 8610
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    .line 8611
    .local v13, "isOneToOne":Z
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v14

    if-eqz v14, :cond_69

    .line 8612
    const/4 v13, 0x1

    .line 8613
    move-object v12, v10

    .line 8614
    const/4 v10, 0x0

    goto :goto_69

    .line 8617
    .end local v13    # "isOneToOne":Z
    :cond_64
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->isGroupConversation()Z

    move-result v13

    xor-int/2addr v13, v4

    .line 8619
    .restart local v13    # "isOneToOne":Z
    :cond_69
    :goto_69
    if-eqz v8, :cond_77

    if-eqz v13, :cond_77

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_77

    .line 8620
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$MessagingStyle;->getOtherPersonName()Ljava/lang/CharSequence;

    move-result-object v10

    .line 8623
    :cond_77
    iget-object v14, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v14}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v14

    invoke-static {v14}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v14

    .line 8624
    .local v14, "largeIcon":Landroid/graphics/drawable/Icon;
    new-instance v15, Landroid/app/Notification$TemplateBindResult;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Landroid/app/Notification$TemplateBindResult;-><init>(Landroid/app/Notification$TemplateBindResult-IA;)V

    .line 8625
    .local v15, "bindResult":Landroid/app/Notification$TemplateBindResult;
    iget-object v3, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, v3, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v3}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8626
    invoke-virtual {v3, v1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8627
    invoke-virtual {v3, v7}, Landroid/app/Notification$StandardTemplateParams;->highlightExpander(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8628
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8629
    if-eqz v8, :cond_9f

    move-object v4, v10

    goto :goto_a0

    :cond_9f
    const/4 v4, 0x0

    :goto_a0
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8630
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8632
    if-nez v8, :cond_b0

    if-nez v9, :cond_ae

    goto :goto_b0

    :cond_ae
    const/4 v4, 0x0

    goto :goto_b1

    :cond_b0
    :goto_b0
    const/4 v4, 0x1

    :goto_b1
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8633
    invoke-virtual {v3, v13}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    if-nez v5, :cond_c0

    if-eqz v13, :cond_be

    goto :goto_c0

    :cond_be
    const/4 v4, 0x0

    goto :goto_c1

    :cond_c0
    :goto_c0
    const/4 v4, 0x1

    .line 8634
    :goto_c1
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8635
    if-eqz v8, :cond_c9

    const/4 v4, 0x0

    goto :goto_ca

    :cond_c9
    move-object v4, v10

    :goto_ca
    invoke-virtual {v3, v4}, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v3

    .line 8636
    .local v3, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8637
    if-eqz v7, :cond_d9

    .line 8638
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetConversationLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    goto :goto_e8

    .line 8639
    :cond_d9
    if-eqz v2, :cond_e2

    .line 8640
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    goto :goto_e8

    .line 8641
    :cond_e2
    iget-object v1, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetBigMessagingLayoutResource(Landroid/app/Notification$Builder;)I

    move-result v1

    .line 8636
    :goto_e8
    invoke-static {v4, v1, v3, v15}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 8644
    .local v1, "contentView":Landroid/widget/RemoteViews;
    if-eqz v7, :cond_106

    .line 8645
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    move/from16 v16, v5

    .end local v5    # "hideRightIcons":Z
    .local v16, "hideRightIcons":Z
    const v5, 0x102028e

    invoke-static {v4, v1, v5, v3}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorPrimary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 8647
    const/16 v4, 0x8

    const v5, 0x10201f8

    invoke-virtual {v1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 8648
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4, v1, v5, v3}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_108

    .line 8644
    .end local v16    # "hideRightIcons":Z
    .restart local v5    # "hideRightIcons":Z
    :cond_106
    move/from16 v16, v5

    .line 8651
    .end local v5    # "hideRightIcons":Z
    .restart local v16    # "hideRightIcons":Z
    :goto_108
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v4}, Landroid/app/Notification$MessagingStyle;->addExtras(Landroid/os/Bundle;)V

    .line 8652
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8653
    invoke-static {v4, v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8652
    const v5, 0x10205e9

    move/from16 v17, v9

    .end local v9    # "isBigMessageLayout":Z
    .local v17, "isBigMessageLayout":Z
    const-string/jumbo v9, "setLayoutColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8654
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8655
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->getPrimaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8654
    const-string/jumbo v9, "setSenderTextColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8656
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8657
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8656
    const-string/jumbo v9, "setMessageTextColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8658
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 8660
    invoke-static {v4, v3}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v4

    .line 8658
    const-string/jumbo v9, "setNotificationBackgroundColor"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8661
    const-string/jumbo v4, "setIsCollapsed"

    invoke-virtual {v1, v5, v4, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 8663
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    invoke-static {v4}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    const-string/jumbo v9, "setAvatarReplacement"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 8665
    const-string/jumbo v4, "setNameReplacement"

    invoke-virtual {v1, v5, v4, v12}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 8667
    const-string/jumbo v4, "setIsOneToOne"

    invoke-virtual {v1, v5, v4, v13}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 8669
    const-string/jumbo v4, "setConversationTitle"

    invoke-virtual {v1, v5, v4, v10}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 8671
    if-eqz v7, :cond_180

    .line 8672
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    const-string/jumbo v9, "setShortcutIcon"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 8674
    const-string/jumbo v4, "setIsImportantConversation"

    invoke-virtual {v1, v5, v4, v6}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 8678
    :cond_180
    if-nez v8, :cond_184

    if-eqz v2, :cond_18e

    .line 8680
    :cond_184
    const v4, 0x102045d

    const/4 v9, 0x4

    const-string/jumbo v5, "setMaxDisplayedLines"

    invoke-virtual {v1, v4, v5, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8683
    :cond_18e
    const-string/jumbo v4, "setLargeIcon"

    const v5, 0x10205e9

    invoke-virtual {v1, v5, v4, v14}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 8685
    iget-object v4, v0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v4}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v4

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v9, "setData"

    invoke-virtual {v1, v5, v9, v4}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 8687
    return-object v1
.end method

.method private static blacklist reduceMessagesIconSizes(Ljava/util/List;I)V
    .registers 6
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;I)V"
        }
    .end annotation

    .line 8780
    .local p0, "messages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-nez p0, :cond_3

    .line 8781
    return-void

    .line 8784
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification$MessagingStyle$Message;

    .line 8785
    .local v1, "message":Landroid/app/Notification$MessagingStyle$Message;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->-$$Nest$fgetmSender(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Person;

    move-result-object v2

    .line 8786
    .local v2, "sender":Landroid/app/Person;
    if-eqz v2, :cond_22

    .line 8787
    invoke-virtual {v2}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 8788
    .local v3, "icon":Landroid/graphics/drawable/Icon;
    if-eqz v3, :cond_22

    .line 8789
    invoke-virtual {v3, p1, p1}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8792
    .end local v1    # "message":Landroid/app/Notification$MessagingStyle$Message;
    .end local v2    # "sender":Landroid/app/Person;
    .end local v3    # "icon":Landroid/graphics/drawable/Icon;
    :cond_22
    goto :goto_7

    .line 8793
    :cond_23
    return-void
.end method


# virtual methods
.method public greylist-max-o addExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8409
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 8410
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_17

    .line 8412
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "android.selfDisplayName"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8413
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    const-string v1, "android.messagingUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8415
    :cond_17
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_20

    .line 8416
    const-string v1, "android.conversationTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 8418
    :cond_20
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8419
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    .line 8418
    const-string v1, "android.messages"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8421
    :cond_33
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8422
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;

    move-result-object v0

    .line 8421
    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 8424
    :cond_46
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_4f

    .line 8425
    const-string v1, "android.conversationIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8427
    :cond_4f
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    const-string v1, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8429
    invoke-direct {p0, p1}, Landroid/app/Notification$MessagingStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 8430
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    const-string v1, "android.isGroupConversation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8431
    return-void
.end method

.method public whitelist addHistoricMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 4
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 8344
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8345
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_15

    .line 8346
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8348
    :cond_15
    return-object p0
.end method

.method public whitelist addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;
    .registers 4
    .param p1, "message"    # Landroid/app/Notification$MessagingStyle$Message;

    .line 8323
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8324
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_15

    .line 8325
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 8327
    :cond_15
    return-object p0
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Landroid/app/Person;

    .line 8310
    new-instance v0, Landroid/app/Notification$MessagingStyle$Message;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/Notification$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroid/app/Person;)V

    invoke-virtual {p0, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Landroid/app/Notification$MessagingStyle$Message;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "timestamp"    # J
    .param p4, "sender"    # Ljava/lang/CharSequence;

    .line 8291
    nop

    .line 8292
    if-nez p4, :cond_5

    const/4 v0, 0x0

    goto :goto_12

    :cond_5
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p4}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    .line 8291
    :goto_12
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLandroid/app/Person;)Landroid/app/Notification$MessagingStyle;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 15
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 8505
    const/4 v0, 0x1

    if-eqz p1, :cond_c7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_f

    goto/16 :goto_c7

    .line 8508
    :cond_f
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$MessagingStyle;

    .line 8509
    .local v1, "newS":Landroid/app/Notification$MessagingStyle;
    invoke-virtual {p0}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v2

    .line 8510
    .local v2, "oldMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    invoke-virtual {v1}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v3

    .line 8512
    .local v3, "newMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    if-eqz v2, :cond_1e

    if-nez v3, :cond_24

    .line 8513
    :cond_1e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 8516
    :cond_24
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 8517
    .local v4, "n":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2f

    .line 8518
    return v0

    .line 8520
    :cond_2f
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_30
    if-ge v5, v4, :cond_c5

    .line 8521
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 8522
    .local v6, "oldM":Landroid/app/Notification$MessagingStyle$Message;
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Notification$MessagingStyle$Message;

    .line 8523
    .local v7, "newM":Landroid/app/Notification$MessagingStyle$Message;
    nop

    .line 8524
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 8525
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 8523
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_56

    .line 8526
    return v0

    .line 8528
    :cond_56
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_65

    .line 8529
    return v0

    .line 8531
    :cond_65
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    if-nez v8, :cond_70

    .line 8532
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_78

    .line 8533
    :cond_70
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v8

    .line 8531
    :goto_78
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 8534
    .local v8, "oldSender":Ljava/lang/String;
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    if-nez v9, :cond_87

    .line 8535
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v9

    goto :goto_8f

    .line 8536
    :cond_87
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v9

    .line 8534
    :goto_8f
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 8537
    .local v9, "newSender":Ljava/lang/String;
    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9a

    .line 8538
    return v0

    .line 8541
    :cond_9a
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    const/4 v11, 0x0

    if-nez v10, :cond_a3

    .line 8542
    move-object v10, v11

    goto :goto_ab

    :cond_a3
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v10

    .line 8543
    .local v10, "oldKey":Ljava/lang/String;
    :goto_ab
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v12

    if-nez v12, :cond_b2

    .line 8544
    goto :goto_ba

    :cond_b2
    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v11

    .line 8545
    .local v11, "newKey":Ljava/lang/String;
    :goto_ba
    invoke-static {v10, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c1

    .line 8546
    return v0

    .line 8520
    .end local v6    # "oldM":Landroid/app/Notification$MessagingStyle$Message;
    .end local v7    # "newM":Landroid/app/Notification$MessagingStyle$Message;
    .end local v8    # "oldSender":Ljava/lang/String;
    .end local v9    # "newSender":Ljava/lang/String;
    .end local v10    # "oldKey":Ljava/lang/String;
    .end local v11    # "newKey":Ljava/lang/String;
    :cond_c1
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_30

    .line 8550
    .end local v5    # "i":I
    :cond_c5
    const/4 v0, 0x0

    return v0

    .line 8506
    .end local v1    # "newS":Landroid/app/Notification$MessagingStyle;
    .end local v2    # "oldMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .end local v3    # "newMs":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification$MessagingStyle$Message;>;"
    .end local v4    # "n":I
    :cond_c7
    :goto_c7
    return v0
.end method

.method public whitelist getConversationTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 8217
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getConversationType()I
    .registers 2

    .line 8259
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    return v0
.end method

.method public greylist-max-o getHeadsUpStatusBarText()Ljava/lang/CharSequence;
    .registers 3

    .line 8161
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 8162
    invoke-static {p0}, Landroid/app/Notification$Style;->-$$Nest$fgetmBigContentTitle(Landroid/app/Notification$Style;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_11

    .line 8163
    :cond_f
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    :goto_11
    nop

    .line 8164
    .local v0, "conversationTitle":Ljava/lang/CharSequence;
    iget v1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    if-nez v1, :cond_23

    .line 8165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_23

    invoke-direct {p0}, Landroid/app/Notification$MessagingStyle;->hasOnlyWhiteSpaceSenders()Z

    move-result v1

    if-nez v1, :cond_23

    .line 8166
    return-object v0

    .line 8168
    :cond_23
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getHistoricMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 8362
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getMessages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification$MessagingStyle$Message;",
            ">;"
        }
    .end annotation

    .line 8355
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getShortcutIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 8240
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public blacklist getUnreadMessageCount()I
    .registers 2

    .line 8264
    iget v0, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    return v0
.end method

.method public whitelist getUser()Landroid/app/Person;
    .registers 2

    .line 8176
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    return-object v0
.end method

.method public whitelist getUserDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .line 8185
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist isGroupConversation()Z
    .registers 3

    .line 8395
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    .line 8396
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_1c

    .line 8398
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0

    .line 8401
    :cond_1c
    iget-boolean v0, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    return v0
.end method

.method public greylist-max-o makeBigContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 8582
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o makeContentView(Z)Landroid/widget/RemoteViews;
    .registers 5
    .param p1, "increasedHeight"    # Z

    .line 8490
    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    .line 8492
    .local v0, "originalActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    :try_start_6
    iget-object v1, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 8493
    sget v1, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v1}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_1c

    .line 8495
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 8493
    return-object v1

    .line 8495
    :catchall_1c
    move-exception v1

    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 8496
    throw v1
.end method

.method public greylist-max-o makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "increasedHeight"    # Z

    .line 8744
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, v0}, Landroid/app/Notification$MessagingStyle;->makeMessagingView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 8745
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    const v1, 0x102045d

    const-string/jumbo v2, "setMaxDisplayedLines"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 8746
    return-object v0
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 8755
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 8756
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 8757
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    .line 8758
    .local v1, "isLowRam":Z
    iget-object v2, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_22

    .line 8759
    nop

    .line 8760
    if-eqz v1, :cond_16

    const v2, 0x10502a4

    goto :goto_19

    .line 8761
    :cond_16
    const v2, 0x10502a3

    .line 8759
    :goto_19
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8762
    .local v2, "maxSize":I
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8765
    .end local v2    # "maxSize":I
    :cond_22
    nop

    .line 8766
    if-eqz v1, :cond_29

    const v2, 0x1050296

    goto :goto_2c

    .line 8767
    :cond_29
    const v2, 0x1050297

    .line 8765
    :goto_2c
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 8768
    .local v2, "maxAvatarSize":I
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 8769
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    invoke-virtual {v3}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 8772
    :cond_43
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 8773
    iget-object v3, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/app/Notification$MessagingStyle;->reduceMessagesIconSizes(Ljava/util/List;I)V

    .line 8774
    return-void
.end method

.method protected greylist-max-o restoreFromExtras(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 8467
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 8469
    const-class v0, Landroid/app/Person;

    const-string v1, "android.messagingUser"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 8470
    if-nez v0, :cond_26

    .line 8471
    const-string v0, "android.selfDisplayName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 8472
    .local v0, "displayName":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/Person$Builder;

    invoke-direct {v1}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    .line 8474
    .end local v0    # "displayName":Ljava/lang/CharSequence;
    :cond_26
    const-string v0, "android.conversationTitle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8475
    const-string v0, "android.messages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 8476
    .local v0, "messages":[Landroid/os/Parcelable;
    invoke-static {v0}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/app/Notification$MessagingStyle;->mMessages:Ljava/util/List;

    .line 8477
    const-string v1, "android.messages.historic"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 8478
    .local v1, "histMessages":[Landroid/os/Parcelable;
    invoke-static {v1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mHistoricMessages:Ljava/util/List;

    .line 8479
    const-string v2, "android.isGroupConversation"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 8480
    const-string v2, "android.conversationUnreadMessageCount"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 8481
    const-class v2, Landroid/graphics/drawable/Icon;

    const-string v3, "android.conversationIcon"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    iput-object v2, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 8482
    return-void
.end method

.method public whitelist setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "conversationTitle"    # Ljava/lang/CharSequence;

    .line 8208
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;

    .line 8209
    return-object p0
.end method

.method public blacklist setConversationType(I)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "conversationType"    # I

    .line 8252
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mConversationType:I

    .line 8253
    return-object p0
.end method

.method public whitelist setGroupConversation(Z)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "isGroupConversation"    # Z

    .line 8375
    iput-boolean p1, p0, Landroid/app/Notification$MessagingStyle;->mIsGroupConversation:Z

    .line 8376
    return-object p0
.end method

.method public blacklist setShortcutIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "conversationIcon"    # Landroid/graphics/drawable/Icon;

    .line 8228
    iput-object p1, p0, Landroid/app/Notification$MessagingStyle;->mShortcutIcon:Landroid/graphics/drawable/Icon;

    .line 8229
    return-object p0
.end method

.method public blacklist setUnreadMessageCount(I)Landroid/app/Notification$MessagingStyle;
    .registers 2
    .param p1, "unreadMessageCount"    # I

    .line 8269
    iput p1, p0, Landroid/app/Notification$MessagingStyle;->mUnreadMessageCount:I

    .line 8270
    return-object p0
.end method

.method public greylist-max-o validate(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 8146
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 8147
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_20

    iget-object v0, p0, Landroid/app/Notification$MessagingStyle;->mUser:Landroid/app/Person;

    if-eqz v0, :cond_18

    .line 8148
    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_18

    goto :goto_20

    .line 8149
    :cond_18
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "User must be valid and have a name."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8151
    :cond_20
    :goto_20
    return-void
.end method
