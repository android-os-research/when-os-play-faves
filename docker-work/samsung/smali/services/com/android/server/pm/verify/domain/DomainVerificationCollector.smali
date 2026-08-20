.class public Lcom/android/server/pm/verify/domain/DomainVerificationCollector;
.super Ljava/lang/Object;
.source "DomainVerificationCollector.java"


# static fields
.field public static final ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

.field public static final MAX_DOMAINS_BYTE_SIZE:I = 0x100000

.field public static final RESTRICT_DOMAINS:J = 0xa74866dL


# instance fields
.field public final mDomainMatcher:Ljava/util/regex/Matcher;

.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field public final mSystemConfig:Lcom/android/server/SystemConfig;


# direct methods
.method public static synthetic $r8$lambda$2SK_jNYiNkNaWwZjL4Iwoe_gHZk(Landroid/util/ArraySet;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->lambda$static$0(Landroid/util/ArraySet;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$2jz0zelYXVvRtbJi77ibwF_Gjdc(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->lambda$containsWebDomain$1(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$SwupicDAo3MlAIkFLi3192TJjfA(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->lambda$containsAutoVerifyDomain$2(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(\\*\\.)?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 46
    invoke-virtual {v1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    .line 50
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/SystemConfig;)V
    .registers 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 68
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    .line 71
    sget-object p1, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->DOMAIN_NAME_WITH_WILDCARD:Ljava/util/regex/Pattern;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    return-void
.end method

.method public static synthetic lambda$containsAutoVerifyDomain$2(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 131
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 132
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$containsWebDomain$1(Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    .line 120
    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 121
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$static$0(Landroid/util/ArraySet;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    .line 52
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final byteSizeOf(Ljava/lang/String;)I
    .registers 2

    .line 300
    invoke-static {p1}, Landroid/content/pm/verify/domain/DomainVerificationUtils;->estimatedByteSizeOf(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public collectAllWebDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 96
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZ)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 142
    sget-object v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->ARRAY_SET_COLLECTOR:Ljava/util/function/BiFunction;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    return-object v6
.end method

.method public final collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v1, 0xa74866d

    .line 151
    invoke-static {v0, p1, v1, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationUtils;->isChangeEnabled(Lcom/android/server/compat/PlatformCompat;Lcom/android/server/pm/parsing/pkg/AndroidPackage;J)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 154
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 157
    :cond_10
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsLegacy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 243
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v2

    .line 244
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_f
    if-ge v6, v3, :cond_95

    if-eqz v7, :cond_95

    .line 247
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 248
    invoke-interface {v9}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 249
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_22
    if-ge v11, v10, :cond_8d

    if-eqz v7, :cond_8d

    .line 251
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 252
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    if-eqz v1, :cond_39

    .line 253
    invoke-virtual {v12}, Landroid/content/IntentFilter;->getAutoVerify()Z

    move-result v13

    if-nez v13, :cond_39

    goto :goto_86

    :cond_39
    const-string v13, "android.intent.category.DEFAULT"

    .line 257
    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->hasCategory(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_86

    .line 258
    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v13

    if-nez v13, :cond_48

    goto :goto_86

    .line 276
    :cond_48
    invoke-virtual {v12}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    const/4 v14, 0x0

    :goto_4d
    if-ge v14, v13, :cond_86

    if-eqz v7, :cond_86

    .line 278
    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 279
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v4

    move/from16 v5, p3

    if-ne v4, v5, :cond_81

    .line 280
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v8, v4

    const/high16 v4, 0x100000

    if-ge v8, v4, :cond_71

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    const/16 v16, 0x1

    goto :goto_77

    :cond_71
    move-object/from16 v4, p4

    move-object/from16 v7, p5

    const/16 v16, 0x0

    .line 282
    :goto_77
    invoke-interface {v7, v4, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_7e

    return-object v15

    :cond_7e
    move/from16 v7, v16

    goto :goto_83

    :cond_81
    move-object/from16 v4, p4

    :goto_83
    add-int/lit8 v14, v14, 0x1

    goto :goto_4d

    :cond_86
    :goto_86
    move/from16 v5, p3

    move-object/from16 v4, p4

    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_8d
    move/from16 v5, p3

    move-object/from16 v4, p4

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    :cond_95
    const/4 v0, 0x0

    return-object v0
.end method

.method public final collectDomainsLegacy(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<InitialValue:",
            "Ljava/lang/Object;",
            "ReturnValue:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "ZZTInitialValue;",
            "Ljava/util/function/BiFunction<",
            "TInitialValue;",
            "Ljava/lang/String;",
            "TReturnValue;>;)TReturnValue;"
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p2, :cond_13

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 171
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomainsInternal(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 175
    :cond_13
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getActivities()Ljava/util/List;

    move-result-object v1

    .line 176
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 180
    iget-object v3, v0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mSystemConfig:Lcom/android/server/SystemConfig;

    invoke-virtual {v3}, Lcom/android/server/SystemConfig;->getLinkedApps()Landroid/util/ArraySet;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_5c

    move v6, v5

    :goto_2e
    if-ge v6, v2, :cond_59

    if-nez v3, :cond_59

    .line 184
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 185
    invoke-interface {v7}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v7

    .line 186
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    move v9, v5

    :goto_41
    if-ge v9, v8, :cond_56

    if-nez v3, :cond_56

    .line 189
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 190
    invoke-interface {v3}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/IntentFilter;->needsVerification()Z

    move-result v3

    add-int/lit8 v9, v9, 0x1

    goto :goto_41

    :cond_56
    add-int/lit8 v6, v6, 0x1

    goto :goto_2e

    :cond_59
    if-nez v3, :cond_5c

    return-object v4

    :cond_5c
    move v6, v5

    move v8, v6

    const/4 v7, 0x1

    :goto_5f
    if-ge v6, v2, :cond_d3

    if-eqz v7, :cond_d3

    .line 203
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/pkg/component/ParsedActivity;

    .line 204
    invoke-interface {v9}, Lcom/android/server/pm/pkg/component/ParsedComponent;->getIntents()Ljava/util/List;

    move-result-object v9

    .line 205
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move v11, v5

    :goto_72
    if-ge v11, v10, :cond_cb

    if-eqz v7, :cond_cb

    .line 207
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;

    .line 208
    invoke-interface {v12}, Lcom/android/server/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v12

    .line 209
    invoke-virtual {v12, v5}, Landroid/content/IntentFilter;->handlesWebUris(Z)Z

    move-result v13

    if-eqz v13, :cond_c3

    .line 210
    invoke-virtual {v12}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v13

    move v14, v5

    :goto_8b
    if-ge v14, v13, :cond_c3

    .line 212
    invoke-virtual {v12, v14}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 213
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->isValidHost(Ljava/lang/String;)Z

    move-result v3

    move/from16 v5, p3

    if-ne v3, v5, :cond_bd

    .line 214
    invoke-virtual {v0, v15}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->byteSizeOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v8, v3

    const/high16 v3, 0x100000

    if-ge v8, v3, :cond_ad

    move-object/from16 v3, p4

    move-object/from16 v7, p5

    const/16 v16, 0x1

    goto :goto_b3

    :cond_ad
    move-object/from16 v3, p4

    move-object/from16 v7, p5

    const/16 v16, 0x0

    .line 216
    :goto_b3
    invoke-interface {v7, v3, v15}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_ba

    return-object v15

    :cond_ba
    move/from16 v7, v16

    goto :goto_bf

    :cond_bd
    move-object/from16 v3, p4

    :goto_bf
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_8b

    :cond_c3
    move/from16 v5, p3

    move-object/from16 v3, p4

    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    goto :goto_72

    :cond_cb
    move/from16 v5, p3

    move-object/from16 v3, p4

    add-int/lit8 v6, v6, 0x1

    const/4 v5, 0x0

    goto :goto_5f

    :cond_d3
    return-object v4
.end method

.method public collectInvalidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public collectValidAutoVerifyDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 105
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZ)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public containsAutoVerifyDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 9

    .line 129
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public containsWebDomain(Lcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/lang/String;)Z
    .registers 9

    .line 118
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;

    invoke-direct {v5, p2}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->collectDomains(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZZLjava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final isValidHost(Ljava/lang/String;)Z
    .registers 3

    .line 310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 314
    :cond_8
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 315
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/DomainVerificationCollector;->mDomainMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
