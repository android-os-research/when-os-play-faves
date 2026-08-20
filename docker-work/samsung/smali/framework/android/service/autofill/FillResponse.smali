.class public final Landroid/service/autofill/FillResponse;
.super Ljava/lang/Object;
.source "FillResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillResponse$Builder;,
        Landroid/service/autofill/FillResponse$FillResponseFlags;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_DELAY_FILL:I = 0x4

.field public static final whitelist FLAG_DISABLE_ACTIVITY_ONLY:I = 0x2

.field public static final whitelist FLAG_TRACK_CONTEXT_COMMITED:I = 0x1


# instance fields
.field private final greylist-max-o mAuthentication:Landroid/content/IntentSender;

.field private final greylist-max-o mAuthenticationIds:[Landroid/view/autofill/AutofillId;

.field private final blacklist mCancelIds:[I

.field private final greylist-max-o mClientState:Landroid/os/Bundle;

.field private final greylist-max-o mDatasets:Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mDialogHeader:Landroid/widget/RemoteViews;

.field private final blacklist mDialogPresentation:Landroid/widget/RemoteViews;

.field private final greylist-max-o mDisableDuration:J

.field private final greylist-max-o mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

.field private final blacklist mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mFooter:Landroid/widget/RemoteViews;

.field private final greylist-max-o mHeader:Landroid/widget/RemoteViews;

.field private final greylist-max-o mIgnoredIds:[Landroid/view/autofill/AutofillId;

.field private final blacklist mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private final blacklist mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

.field private final greylist-max-o mPresentation:Landroid/widget/RemoteViews;

.field private greylist-max-o mRequestId:I

.field private final greylist-max-o mSaveInfo:Landroid/service/autofill/SaveInfo;

.field private final blacklist mSupportsInlineSuggestions:Z

.field private final blacklist mUserData:Landroid/service/autofill/UserData;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1032
    new-instance v0, Landroid/service/autofill/FillResponse$1;

    invoke-direct {v0}, Landroid/service/autofill/FillResponse$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/service/autofill/FillResponse$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/service/autofill/FillResponse$Builder;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmDatasets(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmDatasets(Landroid/service/autofill/FillResponse$Builder;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    .line 113
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmSaveInfo(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/SaveInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    .line 114
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmClientState(Landroid/service/autofill/FillResponse$Builder;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    .line 115
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    .line 116
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmInlinePresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 117
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmInlineTooltipPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    .line 118
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmDialogPresentation(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mDialogPresentation:Landroid/widget/RemoteViews;

    .line 119
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmDialogHeader(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mDialogHeader:Landroid/widget/RemoteViews;

    .line 120
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmHeader(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mHeader:Landroid/widget/RemoteViews;

    .line 121
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmFooter(Landroid/service/autofill/FillResponse$Builder;)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mFooter:Landroid/widget/RemoteViews;

    .line 122
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmAuthentication(Landroid/service/autofill/FillResponse$Builder;)Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    .line 123
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmAuthenticationIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    .line 124
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmFillDialogTriggerIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 125
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmIgnoredIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    .line 126
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmDisableDuration(Landroid/service/autofill/FillResponse$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/autofill/FillResponse;->mDisableDuration:J

    .line 127
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmFieldClassificationIds(Landroid/service/autofill/FillResponse$Builder;)[Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    .line 128
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmFlags(Landroid/service/autofill/FillResponse$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillResponse;->mFlags:I

    .line 129
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    .line 130
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmUserData(Landroid/service/autofill/FillResponse$Builder;)Landroid/service/autofill/UserData;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mUserData:Landroid/service/autofill/UserData;

    .line 131
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmCancelIds(Landroid/service/autofill/FillResponse$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillResponse;->mCancelIds:[I

    .line 132
    invoke-static {p1}, Landroid/service/autofill/FillResponse$Builder;->-$$Nest$fgetmSupportsInlineSuggestions(Landroid/service/autofill/FillResponse$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/autofill/FillResponse;->mSupportsInlineSuggestions:Z

    .line 133
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/FillResponse$Builder;Landroid/service/autofill/FillResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/FillResponse;-><init>(Landroid/service/autofill/FillResponse$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getAuthentication()Landroid/content/IntentSender;
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    return-object v0
.end method

.method public greylist-max-o getAuthenticationIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 192
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getCancelIds()[I
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mCancelIds:[I

    return-object v0
.end method

.method public greylist-max-o getClientState()Landroid/os/Bundle;
    .registers 2

    .line 137
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public greylist-max-o getDatasets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public blacklist getDialogHeader()Landroid/widget/RemoteViews;
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDialogHeader:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public blacklist getDialogPresentation()Landroid/widget/RemoteViews;
    .registers 2

    .line 167
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDialogPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public greylist-max-o getDisableDuration()J
    .registers 3

    .line 207
    iget-wide v0, p0, Landroid/service/autofill/FillResponse;->mDisableDuration:J

    return-wide v0
.end method

.method public greylist-max-o getFieldClassificationIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 212
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getFillDialogTriggerIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 197
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getFlags()I
    .registers 2

    .line 223
    iget v0, p0, Landroid/service/autofill/FillResponse;->mFlags:I

    return v0
.end method

.method public greylist-max-o getFooter()Landroid/widget/RemoteViews;
    .registers 2

    .line 182
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mFooter:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public greylist-max-o getHeader()Landroid/widget/RemoteViews;
    .registers 2

    .line 177
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mHeader:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public greylist-max-o getIgnoredIds()[Landroid/view/autofill/AutofillId;
    .registers 2

    .line 202
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    return-object v0
.end method

.method public blacklist getInlinePresentation()Landroid/service/autofill/InlinePresentation;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    return-object v0
.end method

.method public blacklist getInlineTooltipPresentation()Landroid/service/autofill/InlinePresentation;
    .registers 2

    .line 162
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    return-object v0
.end method

.method public greylist-max-o getPresentation()Landroid/widget/RemoteViews;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public greylist-max-o getRequestId()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    return v0
.end method

.method public greylist-max-o getSaveInfo()Landroid/service/autofill/SaveInfo;
    .registers 2

    .line 147
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    return-object v0
.end method

.method public blacklist getUserData()Landroid/service/autofill/UserData;
    .registers 2

    .line 217
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mUserData:Landroid/service/autofill/UserData;

    return-object v0
.end method

.method public greylist-max-o setRequestId(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 236
    iput p1, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    .line 237
    return-void
.end method

.method public blacklist supportsInlineSuggestions()Z
    .registers 2

    .line 252
    iget-boolean v0, p0, Landroid/service/autofill/FillResponse;->mSupportsInlineSuggestions:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 937
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 940
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FillResponse : [mRequestId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    if-eqz v1, :cond_36

    .line 943
    const-string v1, ", datasets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {v2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 945
    :cond_36
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    if-eqz v1, :cond_45

    .line 946
    const-string v1, ", saveInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 948
    :cond_45
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    if-eqz v1, :cond_4e

    .line 949
    const-string v1, ", hasClientState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    :cond_4e
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_57

    .line 952
    const-string v1, ", hasPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :cond_57
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_60

    .line 955
    const-string v1, ", hasInlinePresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 957
    :cond_60
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    if-eqz v1, :cond_69

    .line 958
    const-string v1, ", hasInlineTooltipPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    :cond_69
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mDialogPresentation:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_72

    .line 961
    const-string v1, ", hasDialogPresentation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    :cond_72
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mDialogHeader:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_7b

    .line 964
    const-string v1, ", hasDialogHeader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    :cond_7b
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mHeader:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_84

    .line 967
    const-string v1, ", hasHeader"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    :cond_84
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mFooter:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_8d

    .line 970
    const-string v1, ", hasFooter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 972
    :cond_8d
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    if-eqz v1, :cond_96

    .line 973
    const-string v1, ", hasAuthentication"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    :cond_96
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_a9

    .line 976
    const-string v1, ", authenticationIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    :cond_a9
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_bc

    .line 979
    const-string v1, ", fillDialogTriggerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/FillResponse;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    .line 980
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    :cond_bc
    const-string v1, ", disableDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/service/autofill/FillResponse;->mDisableDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 983
    iget v1, p0, Landroid/service/autofill/FillResponse;->mFlags:I

    if-eqz v1, :cond_d6

    .line 984
    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/autofill/FillResponse;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    :cond_d6
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_e1

    .line 987
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    :cond_e1
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mUserData:Landroid/service/autofill/UserData;

    if-eqz v1, :cond_f0

    .line 990
    const-string v1, ", userData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/FillResponse;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 992
    :cond_f0
    iget-object v1, p0, Landroid/service/autofill/FillResponse;->mCancelIds:[I

    if-eqz v1, :cond_100

    .line 993
    const-string v1, ", mCancelIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/FillResponse;->mCancelIds:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 995
    :cond_100
    const-string v1, ", mSupportInlinePresentations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/FillResponse;->mSupportsInlineSuggestions:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 996
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1010
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDatasets:Landroid/content/pm/ParceledListSlice;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1011
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mSaveInfo:Landroid/service/autofill/SaveInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1012
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1013
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthenticationIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 1014
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mAuthentication:Landroid/content/IntentSender;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1015
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1016
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1017
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mInlineTooltipPresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1018
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDialogPresentation:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1019
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mDialogHeader:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1020
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mFillDialogTriggerIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 1021
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mHeader:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1022
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mFooter:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1023
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mUserData:Landroid/service/autofill/UserData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1024
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mIgnoredIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 1025
    iget-wide v0, p0, Landroid/service/autofill/FillResponse;->mDisableDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1026
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mFieldClassificationIds:[Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 1027
    iget v0, p0, Landroid/service/autofill/FillResponse;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1028
    iget-object v0, p0, Landroid/service/autofill/FillResponse;->mCancelIds:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1029
    iget v0, p0, Landroid/service/autofill/FillResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1030
    return-void
.end method
