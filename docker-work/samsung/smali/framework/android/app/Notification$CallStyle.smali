.class public Landroid/app/Notification$CallStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStyle"
.end annotation


# static fields
.field public static final blacklist CALL_TYPE_INCOMING:I = 0x1

.field public static final blacklist CALL_TYPE_ONGOING:I = 0x2

.field public static final blacklist CALL_TYPE_SCREENING:I = 0x3

.field private static final blacklist KEY_ACTION_PRIORITY:Ljava/lang/String; = "key_action_priority"


# instance fields
.field private blacklist mAnswerButtonColor:Ljava/lang/Integer;

.field private blacklist mAnswerIntent:Landroid/app/PendingIntent;

.field private blacklist mCallType:I

.field private blacklist mDeclineButtonColor:Ljava/lang/Integer;

.field private blacklist mDeclineIntent:Landroid/app/PendingIntent;

.field private blacklist mHangUpIntent:Landroid/app/PendingIntent;

.field private blacklist mIsVideo:Z

.field private blacklist mPerson:Landroid/app/Person;

.field private blacklist mVerificationIcon:Landroid/graphics/drawable/Icon;

.field private blacklist mVerificationText:Ljava/lang/CharSequence;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 9632
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9633
    return-void
.end method

.method private constructor blacklist <init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 8
    .param p1, "callType"    # I
    .param p2, "person"    # Landroid/app/Person;
    .param p3, "hangUpIntent"    # Landroid/app/PendingIntent;
    .param p4, "declineIntent"    # Landroid/app/PendingIntent;
    .param p5, "answerIntent"    # Landroid/app/PendingIntent;

    .line 9707
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 9708
    if-eqz p2, :cond_1a

    invoke-virtual {p2}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 9711
    iput p1, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    .line 9712
    iput-object p2, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 9713
    iput-object p5, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 9714
    iput-object p4, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 9715
    iput-object p3, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 9716
    return-void

    .line 9709
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "person must have a non-empty a name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V
    .registers 10
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;

    .line 9992
    const/4 v0, 0x0

    .line 9993
    .local v0, "iconContentDescription":Ljava/lang/String;
    const/4 v1, 0x1

    .line 9994
    .local v1, "showDivider":Z
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    const/4 v3, 0x0

    const/16 v4, 0x8

    const v5, 0x1020696

    if-eqz v2, :cond_2c

    .line 9995
    invoke-virtual {p1, v5, v2}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 9996
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9997
    invoke-virtual {v2, p2}, Landroid/app/Notification$Builder;->getSecondaryTextColor(Landroid/app/Notification$StandardTemplateParams;)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 9996
    invoke-virtual {p1, v5, v3, v2, v6}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 9998
    invoke-virtual {p1, v5, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9999
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v2

    const v6, 0x1040889

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 10001
    const/4 v1, 0x0

    goto :goto_2f

    .line 10003
    :cond_2c
    invoke-virtual {p1, v5, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10005
    :goto_2f
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v6, 0x1020697

    if-nez v2, :cond_49

    .line 10006
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 10007
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, p1, v6, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 10008
    invoke-virtual {p1, v6, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10009
    const/4 v0, 0x0

    goto :goto_4d

    .line 10011
    :cond_49
    invoke-virtual {p1, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10012
    const/4 v1, 0x0

    .line 10014
    :goto_4d
    invoke-virtual {p1, v5, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 10015
    const v2, 0x1020695

    if-eqz v1, :cond_5e

    .line 10017
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10018
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3, p1, v2, p2}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    goto :goto_61

    .line 10020
    :cond_5e
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 10022
    :goto_61
    return-void
.end method

.method private blacklist fixTitleAndTextExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 10070
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 10071
    .local v0, "sender":Ljava/lang/CharSequence;
    :goto_a
    if-eqz v0, :cond_11

    .line 10072
    const-string v1, "android.title"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10074
    :cond_11
    const-string v1, "android.text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_20

    .line 10075
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10077
    :cond_20
    return-void
.end method

.method public static whitelist forIncomingCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .registers 10
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "declineIntent"    # Landroid/app/PendingIntent;
    .param p2, "answerIntent"    # Landroid/app/PendingIntent;

    .line 9649
    new-instance v6, Landroid/app/Notification$CallStyle;

    .line 9651
    const-string v0, "declineIntent is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/app/PendingIntent;

    .line 9652
    const-string v0, "answerIntent is required"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 9649
    return-object v6
.end method

.method public static whitelist forOngoingCall(Landroid/app/Person;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .registers 9
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "hangUpIntent"    # Landroid/app/PendingIntent;

    .line 9669
    new-instance v6, Landroid/app/Notification$CallStyle;

    .line 9670
    const-string v0, "hangUpIntent is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/PendingIntent;

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 9669
    return-object v6
.end method

.method public static whitelist forScreeningCall(Landroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification$CallStyle;
    .registers 10
    .param p0, "person"    # Landroid/app/Person;
    .param p1, "hangUpIntent"    # Landroid/app/PendingIntent;
    .param p2, "answerIntent"    # Landroid/app/PendingIntent;

    .line 9691
    new-instance v6, Landroid/app/Notification$CallStyle;

    .line 9692
    const-string v0, "hangUpIntent is required"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/PendingIntent;

    .line 9694
    const-string v0, "answerIntent is required"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/PendingIntent;

    const/4 v1, 0x3

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;-><init>(ILandroid/app/Person;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 9691
    return-object v6
.end method

.method private blacklist getDefaultText()Ljava/lang/String;
    .registers 3

    .line 10026
    iget v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    packed-switch v0, :pswitch_data_32

    .line 10034
    const/4 v0, 0x0

    return-object v0

    .line 10032
    :pswitch_7
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104028f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10030
    :pswitch_15
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104028e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10028
    :pswitch_23
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104028d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_23
        :pswitch_15
        :pswitch_7
    .end packed-switch
.end method

.method private blacklist isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z
    .registers 4
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 9884
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_action_priority"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private blacklist makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;
    .registers 12
    .param p1, "icon"    # I
    .param p2, "title"    # I
    .param p3, "colorInt"    # Ljava/lang/Integer;
    .param p4, "defaultColorRes"    # I
    .param p5, "intent"    # Landroid/app/PendingIntent;

    .line 9869
    if-eqz p3, :cond_a

    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$misCallActionColorCustomizable(Landroid/app/Notification$Builder;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 9870
    :cond_a
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 9872
    :cond_18
    new-instance v0, Landroid/app/Notification$Action$Builder;

    const-string v1, ""

    invoke-static {v1, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-$$Nest$fgetmContext(Landroid/app/Notification$Builder;)Landroid/content/Context;

    move-result-object v3

    .line 9873
    invoke-virtual {v3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    .line 9874
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x12

    .line 9873
    invoke-virtual {v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-direct {v0, v1, v2, p5}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 9876
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 9877
    .local v0, "action":Landroid/app/Notification$Action;
    invoke-virtual {v0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "key_action_priority"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9878
    return-object v0
.end method

.method private blacklist makeAnswerAction()Landroid/app/Notification$Action;
    .registers 7

    .line 9858
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_6

    const/4 v0, 0x0

    goto :goto_26

    .line 9859
    :cond_6
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    if-eqz v0, :cond_e

    const v1, 0x1080381

    goto :goto_11

    :cond_e
    const v1, 0x1080380

    .line 9860
    :goto_11
    if-eqz v0, :cond_18

    const v0, 0x104028a

    move v2, v0

    goto :goto_1c

    .line 9861
    :cond_18
    const v0, 0x1040289

    move v2, v0

    :goto_1c
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    const v4, 0x10600b8

    .line 9858
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    :goto_26
    return-object v0
.end method

.method private blacklist makeCallLayout(I)Landroid/widget/RemoteViews;
    .registers 11
    .param p1, "viewType"    # I

    .line 9940
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_7

    move v0, v1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 9941
    .local v0, "isCollapsed":Z
    :goto_8
    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 9942
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1b

    :cond_1a
    move-object v3, v4

    .line 9943
    .local v3, "title":Ljava/lang/CharSequence;
    :goto_1b
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const-string v6, "android.text"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 9944
    .local v5, "text":Ljava/lang/CharSequence;
    if-nez v5, :cond_2d

    .line 9945
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->getDefaultText()Ljava/lang/String;

    move-result-object v5

    .line 9949
    :cond_2d
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v6, v6, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v6}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 9950
    invoke-virtual {v6, p1}, Landroid/app/Notification$StandardTemplateParams;->viewType(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 9951
    invoke-virtual {v6, v1}, Landroid/app/Notification$StandardTemplateParams;->callStyleActions(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 9952
    invoke-virtual {v6, v1}, Landroid/app/Notification$StandardTemplateParams;->allowTextWithProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 9953
    invoke-virtual {v6, v1}, Landroid/app/Notification$StandardTemplateParams;->hideLeftIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v6

    .line 9954
    invoke-virtual {v6, v1}, Landroid/app/Notification$StandardTemplateParams;->hideRightIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 9955
    invoke-virtual {v1, v0}, Landroid/app/Notification$StandardTemplateParams;->hideAppName(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    const v6, 0x102028e

    .line 9956
    invoke-virtual {v1, v6}, Landroid/app/Notification$StandardTemplateParams;->titleViewId(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 9957
    invoke-virtual {v1, v3}, Landroid/app/Notification$StandardTemplateParams;->title(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 9958
    invoke-virtual {v1, v5}, Landroid/app/Notification$StandardTemplateParams;->text(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v7, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 9959
    invoke-static {v6, v7}, Landroid/app/Notification$Builder;->-$$Nest$mprocessLegacyText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/Notification$StandardTemplateParams;->summaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v1

    .line 9960
    .local v1, "p":Landroid/app/Notification$StandardTemplateParams;
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9962
    if-eqz v0, :cond_7d

    .line 9963
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v7, 0x10900d5

    invoke-static {v6, v7, v1, v4}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplate(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v4

    .local v4, "contentView":Landroid/widget/RemoteViews;
    goto :goto_86

    .line 9966
    .end local v4    # "contentView":Landroid/widget/RemoteViews;
    :cond_7d
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v7, 0x10900d0

    invoke-static {v6, v7, v1, v4}, Landroid/app/Notification$Builder;->-$$Nest$mapplyStandardTemplateWithActions(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v4

    .line 9971
    .restart local v4    # "contentView":Landroid/widget/RemoteViews;
    :goto_86
    iget-boolean v6, v1, Landroid/app/Notification$StandardTemplateParams;->mHideAppName:Z

    if-nez v6, :cond_97

    .line 9973
    const/16 v6, 0x8

    const v7, 0x10201f8

    invoke-virtual {v4, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 9974
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6, v4, v7, v1}, Landroid/app/Notification$Builder;->-$$Nest$msetTextViewColorSecondary(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;ILandroid/app/Notification$StandardTemplateParams;)V

    .line 9976
    :cond_97
    invoke-direct {p0, v4, v1}, Landroid/app/Notification$CallStyle;->bindCallerVerification(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;)V

    .line 9979
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9980
    invoke-static {v6, v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetSmallIconColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v6

    .line 9979
    const v7, 0x10205e9

    const-string/jumbo v8, "setLayoutColor"

    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9981
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    .line 9982
    invoke-static {v6, v1}, Landroid/app/Notification$Builder;->-$$Nest$mgetBackgroundColor(Landroid/app/Notification$Builder;Landroid/app/Notification$StandardTemplateParams;)I

    move-result v6

    .line 9981
    const-string/jumbo v8, "setNotificationBackgroundColor"

    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 9983
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v6

    invoke-static {v6}, Landroid/app/Notification;->-$$Nest$fgetmLargeIcon(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v6

    const-string/jumbo v8, "setLargeIcon"

    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setIcon(ILjava/lang/String;Landroid/graphics/drawable/Icon;)V

    .line 9985
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmN(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v8, "setData"

    invoke-virtual {v4, v7, v8, v6}, Landroid/widget/RemoteViews;->setBundle(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 9988
    return-object v4
.end method

.method private blacklist makeNegativeAction()Landroid/app/Notification$Action;
    .registers 13

    .line 9843
    iget-object v5, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-nez v5, :cond_17

    .line 9844
    const v7, 0x1080382

    const v8, 0x104028c

    iget-object v9, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v10, 0x10600b9

    iget-object v11, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0

    .line 9849
    :cond_17
    const v1, 0x1080382

    const v2, 0x104028b

    iget-object v3, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    const v4, 0x10600b9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/app/Notification$CallStyle;->makeAction(IILjava/lang/Integer;ILandroid/app/PendingIntent;)Landroid/app/Notification$Action;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addExtras(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 10041
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 10042
    iget v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    const-string v1, "android.callType"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10043
    iget-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    const-string v1, "android.callIsVideo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10044
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    const-string v1, "android.callPerson"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10045
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_21

    .line 10046
    const-string v1, "android.verificationIcon"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10048
    :cond_21
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2a

    .line 10049
    const-string v1, "android.verificationText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 10051
    :cond_2a
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_33

    .line 10052
    const-string v1, "android.answerIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10054
    :cond_33
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3c

    .line 10055
    const-string v1, "android.declineIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10057
    :cond_3c
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_45

    .line 10058
    const-string v1, "android.hangUpIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 10060
    :cond_45
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_52

    .line 10061
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.answerColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10063
    :cond_52
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    if-eqz v0, :cond_5f

    .line 10064
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.declineColor"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10066
    :cond_5f
    invoke-direct {p0, p1}, Landroid/app/Notification$CallStyle;->fixTitleAndTextExtras(Landroid/os/Bundle;)V

    .line 10067
    return-void
.end method

.method public blacklist areNotificationsVisiblyDifferent(Landroid/app/Notification$Style;)Z
    .registers 6
    .param p1, "other"    # Landroid/app/Notification$Style;

    .line 10112
    const/4 v0, 0x1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_e

    goto :goto_3c

    .line 10115
    :cond_e
    move-object v1, p1

    check-cast v1, Landroid/app/Notification$CallStyle;

    .line 10116
    .local v1, "otherS":Landroid/app/Notification$CallStyle;
    iget v2, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v1, Landroid/app/Notification$CallStyle;->mCallType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    iget-object v3, v1, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 10117
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    iget-object v3, v1, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 10118
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_38

    goto :goto_3a

    :cond_38
    const/4 v0, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    nop

    .line 10116
    :goto_3b
    return v0

    .line 10113
    .end local v1    # "otherS":Landroid/app/Notification$CallStyle;
    :cond_3c
    :goto_3c
    return v0
.end method

.method public blacklist buildStyled(Landroid/app/Notification;)Landroid/app/Notification;
    .registers 4
    .param p1, "wip"    # Landroid/app/Notification;

    .line 9773
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object p1

    .line 9775
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Notification$CallStyle;->getActionsListWithSystemActions()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->-$$Nest$fputmActions(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)V

    .line 9776
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/app/Notification$Action;

    iput-object v0, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 9777
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v0}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9778
    return-object p1
.end method

.method public blacklist displayCustomViewInline()Z
    .registers 2

    .line 9789
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getActionsListWithSystemActions()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 9896
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeNegativeAction()Landroid/app/Notification$Action;

    move-result-object v0

    .line 9897
    .local v0, "negativeAction":Landroid/app/Notification$Action;
    invoke-direct {p0}, Landroid/app/Notification$CallStyle;->makeAnswerAction()Landroid/app/Notification$Action;

    move-result-object v1

    .line 9901
    .local v1, "answerAction":Landroid/app/Notification$Action;
    if-nez v1, :cond_c

    const/4 v2, 0x0

    goto :goto_d

    :cond_c
    move-object v2, v0

    .line 9902
    .local v2, "firstAction":Landroid/app/Notification$Action;
    :goto_d
    if-nez v1, :cond_11

    move-object v3, v0

    goto :goto_12

    :cond_11
    move-object v3, v1

    .line 9905
    .local v3, "lastAction":Landroid/app/Notification$Action;
    :goto_12
    const/4 v4, 0x3

    .line 9906
    .local v4, "nonContextualActionSlotsRemaining":I
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 9907
    .local v5, "resultActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    if-eqz v2, :cond_20

    .line 9908
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9909
    add-int/lit8 v4, v4, -0x1

    .line 9913
    :cond_20
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_5d

    .line 9914
    iget-object v6, p0, Landroid/app/Notification$CallStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v6}, Landroid/app/Notification$Builder;->-$$Nest$fgetmActions(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/Notification$Action;

    .line 9915
    .local v8, "action":Landroid/app/Notification$Action;
    invoke-virtual {v8}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 9917
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 9918
    :cond_49
    invoke-direct {p0, v8}, Landroid/app/Notification$CallStyle;->isActionAddedByCallStyle(Landroid/app/Notification$Action;)Z

    move-result v9

    if-eqz v9, :cond_50

    goto :goto_55

    .line 9922
    :cond_50
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9923
    add-int/lit8 v4, v4, -0x1

    .line 9926
    :goto_55
    if-ne v4, v7, :cond_5c

    .line 9927
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9928
    add-int/lit8 v4, v4, -0x1

    .line 9930
    .end local v8    # "action":Landroid/app/Notification$Action;
    :cond_5c
    goto :goto_33

    .line 9933
    :cond_5d
    if-lt v4, v7, :cond_62

    .line 9934
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9936
    :cond_62
    return-object v5
.end method

.method public blacklist hasSummaryInHeader()Z
    .registers 2

    .line 10104
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist makeBigContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 9838
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_BIG:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeContentView(Z)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "increasedHeight"    # Z

    .line 9823
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_NORMAL:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .registers 3
    .param p1, "increasedHeight"    # Z

    .line 9831
    sget v0, Landroid/app/Notification$StandardTemplateParams;->VIEW_TYPE_HEADS_UP:I

    invoke-direct {p0, v0}, Landroid/app/Notification$CallStyle;->makeCallLayout(I)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public blacklist purgeResources()V
    .registers 2

    .line 9797
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 9798
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_a

    .line 9799
    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 9801
    :cond_a
    return-void
.end method

.method public blacklist reduceImageSizes(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 9808
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 9809
    iget-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_21

    .line 9810
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9811
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 9812
    const v1, 0x10502a0

    goto :goto_18

    .line 9813
    :cond_15
    const v1, 0x105029f

    .line 9810
    :goto_18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 9814
    .local v0, "rightIconSize":I
    iget-object v1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Icon;->scaleDownIfNecessary(II)V

    .line 9816
    .end local v0    # "rightIconSize":I
    :cond_21
    return-void
.end method

.method protected blacklist restoreFromExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 10084
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 10085
    const-string v0, "android.callType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/app/Notification$CallStyle;->mCallType:I

    .line 10086
    const-string v0, "android.callIsVideo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    .line 10087
    const-class v0, Landroid/app/Person;

    const-string v1, "android.callPerson"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Person;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mPerson:Landroid/app/Person;

    .line 10088
    const-string v0, "android.verificationIcon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    .line 10089
    const-string v0, "android.verificationText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 10090
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "android.answerIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerIntent:Landroid/app/PendingIntent;

    .line 10091
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "android.declineIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineIntent:Landroid/app/PendingIntent;

    .line 10092
    const-class v0, Landroid/app/PendingIntent;

    const-string v1, "android.hangUpIntent"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mHangUpIntent:Landroid/app/PendingIntent;

    .line 10093
    const-string v0, "android.answerColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_67

    .line 10094
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_68

    :cond_67
    move-object v0, v2

    :goto_68
    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    .line 10095
    const-string v0, "android.declineColor"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 10096
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_7c

    :cond_7b
    nop

    :goto_7c
    iput-object v2, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    .line 10097
    return-void
.end method

.method public whitelist setAnswerButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .registers 3
    .param p1, "color"    # I

    .line 9755
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mAnswerButtonColor:Ljava/lang/Integer;

    .line 9756
    return-object p0
.end method

.method public whitelist setDeclineButtonColorHint(I)Landroid/app/Notification$CallStyle;
    .registers 3
    .param p1, "color"    # I

    .line 9766
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mDeclineButtonColor:Ljava/lang/Integer;

    .line 9767
    return-object p0
.end method

.method public whitelist setIsVideo(Z)Landroid/app/Notification$CallStyle;
    .registers 2
    .param p1, "isVideo"    # Z

    .line 9724
    iput-boolean p1, p0, Landroid/app/Notification$CallStyle;->mIsVideo:Z

    .line 9725
    return-object p0
.end method

.method public whitelist setVerificationIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$CallStyle;
    .registers 2
    .param p1, "verificationIcon"    # Landroid/graphics/drawable/Icon;

    .line 9734
    iput-object p1, p0, Landroid/app/Notification$CallStyle;->mVerificationIcon:Landroid/graphics/drawable/Icon;

    .line 9735
    return-object p0
.end method

.method public whitelist setVerificationText(Ljava/lang/CharSequence;)Landroid/app/Notification$CallStyle;
    .registers 3
    .param p1, "verificationText"    # Ljava/lang/CharSequence;

    .line 9744
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$CallStyle;->mVerificationText:Ljava/lang/CharSequence;

    .line 9745
    return-object p0
.end method
