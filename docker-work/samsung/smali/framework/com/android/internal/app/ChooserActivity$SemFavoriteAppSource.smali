.class public Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;
.super Ljava/lang/Object;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemFavoriteAppSource"
.end annotation


# instance fields
.field public blacklist cn:Landroid/content/ComponentName;

.field public blacklist userId:I


# direct methods
.method private constructor blacklist <init>(Landroid/content/ComponentName;I)V
    .registers 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "id"    # I

    .line 12233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12234
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->cn:Landroid/content/ComponentName;

    .line 12235
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->userId:I

    .line 12236
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ComponentName;ILcom/android/internal/app/ChooserActivity$SemFavoriteAppSource-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;-><init>(Landroid/content/ComponentName;I)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 12240
    const/4 v0, 0x0

    if-eqz p1, :cond_18

    .line 12241
    move-object v1, p1

    check-cast v1, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;

    .line 12242
    .local v1, "other":Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->userId:I

    iget v3, v1, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->userId:I

    if-ne v2, v3, :cond_17

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->cn:Landroid/content/ComponentName;

    iget-object v3, v1, Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;->cn:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0

    .line 12244
    .end local v1    # "other":Lcom/android/internal/app/ChooserActivity$SemFavoriteAppSource;
    :cond_18
    return v0
.end method
