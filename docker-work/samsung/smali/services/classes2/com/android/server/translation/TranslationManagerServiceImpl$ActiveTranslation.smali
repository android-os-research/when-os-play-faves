.class public final Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;
.super Ljava/lang/Object;
.source "TranslationManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/translation/TranslationManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActiveTranslation"
.end annotation


# instance fields
.field public isPaused:Z

.field public final packageName:Ljava/lang/String;

.field public final sourceSpec:Landroid/view/translation/TranslationSpec;

.field public final targetSpec:Landroid/view/translation/TranslationSpec;

.field public final translatedAppUid:I


# direct methods
.method public constructor <init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILjava/lang/String;)V
    .registers 6

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 605
    iput-boolean v0, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->isPaused:Z

    .line 609
    iput-object p1, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->sourceSpec:Landroid/view/translation/TranslationSpec;

    .line 610
    iput-object p2, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->targetSpec:Landroid/view/translation/TranslationSpec;

    .line 611
    iput p3, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->translatedAppUid:I

    .line 612
    iput-object p4, p0, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;->packageName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILjava/lang/String;Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/translation/TranslationManagerServiceImpl$ActiveTranslation;-><init>(Landroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ILjava/lang/String;)V

    return-void
.end method
