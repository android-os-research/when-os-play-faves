.class public Lcom/samsung/android/cocktailbar/CocktailInfo;
.super Ljava/lang/Object;
.source "CocktailInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cocktailbar/CocktailInfo$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/cocktailbar/CocktailInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCategory:I

.field private blacklist mClassInfo:Landroid/content/ComponentName;

.field private blacklist mContentInfo:Landroid/os/Bundle;

.field private blacklist mContentView:Landroid/widget/RemoteViews;

.field private blacklist mDisplayPolicy:I

.field private blacklist mHelpView:Landroid/widget/RemoteViews;

.field private blacklist mOrientation:I

.field private blacklist mUserId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmCategory(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmClassInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/content/ComponentName;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/os/Bundle;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmContentView(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDisplayPolicy(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHelpView(Lcom/samsung/android/cocktailbar/CocktailInfo;Landroid/widget/RemoteViews;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOrientation(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUserId(Lcom/samsung/android/cocktailbar/CocktailInfo;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 315
    new-instance v0, Lcom/samsung/android/cocktailbar/CocktailInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/cocktailbar/CocktailInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/cocktailbar/CocktailInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    .line 40
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    .line 42
    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 46
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    .line 48
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist dump()Ljava/lang/String;
    .registers 4

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DP:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CAT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "dumpResult":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_50

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has RemoteViews"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_50
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    if-eqz v1, :cond_67

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has ContentInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_67
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    if-eqz v1, :cond_88

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ClassInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :cond_88
    iget-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_9f

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has HelpView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_9f
    return-object v0
.end method

.method public blacklist getCategory()I
    .registers 2

    .line 154
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    return v0
.end method

.method public blacklist getClassInfo()Landroid/content/ComponentName;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    return-object v0
.end method

.method public blacklist getContentInfo()Landroid/os/Bundle;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public blacklist getContentView()Landroid/widget/RemoteViews;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public blacklist getDisplayPolicy()I
    .registers 2

    .line 145
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    return v0
.end method

.method public blacklist getHelpView()Landroid/widget/RemoteViews;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public blacklist getOrientation()I
    .registers 2

    .line 136
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    return v0
.end method

.method public blacklist mergeInfo(Lcom/samsung/android/cocktailbar/CocktailInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/samsung/android/cocktailbar/CocktailInfo;

    .line 226
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    .line 227
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    .line 228
    iget v0, p1, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    .line 229
    iget-object v0, p1, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 230
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    .line 231
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 233
    :cond_15
    iget-object v0, p1, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_1d

    .line 234
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 235
    iput-object v1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    .line 237
    :cond_1d
    iget-object v0, p1, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_23

    .line 238
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    .line 240
    :cond_23
    iget-object v0, p1, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    if-eqz v0, :cond_29

    .line 241
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    .line 243
    :cond_29
    return-void
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 294
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 295
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    goto :goto_47

    :cond_46
    const/4 v0, 0x0

    :goto_47
    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    .line 302
    return-void
.end method

.method public blacklist setCategory(I)V
    .registers 2
    .param p1, "category"    # I

    .line 164
    iput p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    .line 165
    return-void
.end method

.method public blacklist updateContentView(Landroid/widget/RemoteViews;Z)V
    .registers 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .line 207
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    .line 208
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_c

    .line 210
    :cond_a
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 212
    :goto_c
    return-void
.end method

.method public blacklist updateHelpView(Landroid/widget/RemoteViews;Z)V
    .registers 4
    .param p1, "helpView"    # Landroid/widget/RemoteViews;
    .param p2, "isPartialUpdate"    # Z

    .line 218
    if-eqz p2, :cond_a

    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_a

    .line 219
    invoke-virtual {v0, p1}, Landroid/widget/RemoteViews;->mergeRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_c

    .line 221
    :cond_a
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    .line 223
    :goto_c
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 273
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 274
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mHelpView:Landroid/widget/RemoteViews;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 275
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mOrientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mDisplayPolicy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mContentInfo:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    if-eqz v0, :cond_31

    .line 281
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailInfo;->mClassInfo:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_35

    .line 284
    :cond_31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    :goto_35
    return-void
.end method
