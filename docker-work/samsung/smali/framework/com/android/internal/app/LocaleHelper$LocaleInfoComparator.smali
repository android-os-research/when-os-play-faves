.class public final Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;
.super Ljava/lang/Object;
.source "LocaleHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/LocaleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocaleInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/app/LocaleStore$LocaleInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist PREFIX_ARABIC:Ljava/lang/String; = "\u0627\u0644"


# instance fields
.field private final blacklist mCollator:Ljava/text/Collator;

.field private final blacklist mCountryMode:Z

.field private final blacklist mUseSecSuggestion:Z


# direct methods
.method public constructor greylist <init>(Ljava/util/Locale;Z)V
    .registers 4
    .param p1, "sortLocale"    # Ljava/util/Locale;
    .param p2, "countryMode"    # Z

    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;-><init>(Ljava/util/Locale;ZZ)V

    .line 233
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/Locale;ZZ)V
    .registers 5
    .param p1, "sortLocale"    # Ljava/util/Locale;
    .param p2, "countryMode"    # Z
    .param p3, "useSecSuggestion"    # Z

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    .line 245
    iput-boolean p2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    .line 246
    iput-boolean p3, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mUseSecSuggestion:Z

    .line 247
    return-void
.end method

.method private blacklist removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "str"    # Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "\u0627\u0644"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 259
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 261
    :cond_1e
    return-object p2
.end method

.method private blacklist semCompare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .registers 7
    .param p1, "lhs"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "rhs"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 298
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-nez v0, :cond_9a

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_9a

    .line 300
    :cond_10
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-nez v0, :cond_91

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_1e

    goto/16 :goto_91

    .line 305
    :cond_1e
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecXmlSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecXmlSuggested()Z

    move-result v3

    if-eq v0, v3, :cond_31

    .line 306
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecXmlSuggested()Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_30

    :cond_2f
    move v1, v2

    :goto_30
    return v1

    .line 308
    :cond_31
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v3

    if-eq v0, v3, :cond_44

    .line 309
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSuggested()Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_43

    :cond_42
    move v1, v2

    :goto_43
    return v1

    .line 311
    :cond_44
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isPriorityLocale()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isPriorityLocale()Z

    move-result v3

    if-eq v0, v3, :cond_57

    .line 312
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isPriorityLocale()Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_56

    :cond_55
    move v1, v2

    :goto_56
    return v1

    .line 314
    :cond_57
    iget-boolean v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mUseSecSuggestion:Z

    if-eqz v0, :cond_6e

    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v3

    if-eq v0, v3, :cond_6e

    .line 315
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSecSuggested()Z

    move-result v0

    if-eqz v0, :cond_6c

    goto :goto_6d

    :cond_6c
    move v1, v2

    :goto_6d
    return v1

    .line 317
    :cond_6e
    iget-object v0, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCollator:Ljava/text/Collator;

    .line 318
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p1, v2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-virtual {p2}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->mCountryMode:Z

    invoke-virtual {p2, v3}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->getLabel(Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->removePrefixForCompare(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 301
    :cond_91
    :goto_91
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isSystemLocale()Z

    move-result v0

    if-eqz v0, :cond_98

    goto :goto_99

    :cond_98
    move v1, v2

    :goto_99
    return v1

    .line 299
    :cond_9a
    :goto_9a
    invoke-virtual {p1}, Lcom/android/internal/app/LocaleStore$LocaleInfo;->isAppCurrentLocale()Z

    move-result v0

    if-eqz v0, :cond_a1

    goto :goto_a2

    :cond_a1
    move v1, v2

    :goto_a2
    return v1
.end method


# virtual methods
.method public greylist compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I
    .registers 4
    .param p1, "lhs"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;
    .param p2, "rhs"    # Lcom/android/internal/app/LocaleStore$LocaleInfo;

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->semCompare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 211
    check-cast p1, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    check-cast p2, Lcom/android/internal/app/LocaleStore$LocaleInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/LocaleHelper$LocaleInfoComparator;->compare(Lcom/android/internal/app/LocaleStore$LocaleInfo;Lcom/android/internal/app/LocaleStore$LocaleInfo;)I

    move-result p1

    return p1
.end method
