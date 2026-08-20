.class Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;
.super Ljava/lang/Object;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemChooserAppSource"
.end annotation


# instance fields
.field private blacklist mClassName:Ljava/lang/String;

.field private blacklist mLabel:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;

.field private blacklist mSubLabel:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "subLabel"    # Ljava/lang/String;

    .line 2660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2661
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mPackageName:Ljava/lang/String;

    .line 2662
    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mClassName:Ljava/lang/String;

    .line 2663
    iput p3, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mUserId:I

    .line 2664
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mLabel:Ljava/lang/String;

    .line 2665
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mSubLabel:Ljava/lang/String;

    .line 2666
    return-void
.end method


# virtual methods
.method public blacklist getClassName()Ljava/lang/String;
    .registers 2

    .line 2669
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getLabel()Ljava/lang/String;
    .registers 2

    .line 2675
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .registers 2

    .line 2667
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSubLabel()Ljava/lang/String;
    .registers 2

    .line 2677
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mSubLabel:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserId()I
    .registers 2

    .line 2672
    iget v0, p0, Lcom/android/internal/app/ResolverActivity$SemChooserAppSource;->mUserId:I

    return v0
.end method
