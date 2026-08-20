.class public final Lcom/android/server/compat/overrides/AppCompatOverridesParser;
.super Ljava/lang/Object;
.source "AppCompatOverridesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;
    }
.end annotation


# static fields
.field public static final BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

.field public static final FLAG_OWNED_CHANGE_IDS:Ljava/lang/String; = "owned_change_ids"

.field public static final FLAG_REMOVE_OVERRIDES:Ljava/lang/String; = "remove_overrides"

.field public static final TAG:Ljava/lang/String; = "AppCompatOverridesParser"

.field public static final WILDCARD_NO_OWNED_CHANGE_IDS_WARNING:Ljava/lang/String; = "Wildcard can\'t be used in \'remove_overrides\' flag with an empty owned_change_ids\' flag"

.field public static final WILDCARD_SYMBOL:Ljava/lang/String; = "*"


# instance fields
.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$CCLVQzkeXBCIlKIB40cGiPH6YP8(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->lambda$parseRemoveOverrides$0(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "true|false"

    const/4 v1, 0x2

    .line 68
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .registers 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static extractSignatureFromConfig(Ljava/lang/String;)Landroid/util/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "~"

    .line 281
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    const-string v0, ""

    .line 285
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 288
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_38

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only one signature per config is supported. Config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppCompatOverridesParser"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_38
    const/4 p0, 0x0

    .line 293
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$parseRemoveOverrides$0(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    .line 142
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0
.end method

.method public static parseOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 164
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 168
    :cond_b
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const-string v1, ","

    .line 169
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_42

    aget-object v3, p0, v2

    .line 171
    :try_start_1c
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_27} :catch_28

    goto :goto_3f

    :catch_28
    move-exception v4

    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid change ID in \'owned_change_ids\' flag: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "AppCompatOverridesParser"

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_42
    return-object v0
.end method


# virtual methods
.method public parsePackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 203
    :cond_b
    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;

    invoke-direct {v0, p3, p4}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;-><init>(J)V

    .line 204
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 206
    invoke-static {p1}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->extractSignatureFromConfig(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_20

    .line 208
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 210
    :cond_20
    iget-object p4, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p4, Ljava/lang/String;

    .line 211
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 213
    invoke-virtual {p0, p2, p4}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_33

    .line 214
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_33
    const-string p0, ","

    .line 217
    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length p1, p0

    const/4 p2, 0x0

    move p4, p2

    :goto_3c
    if-ge p4, p1, :cond_139

    aget-object v1, p0, p4

    const-string v2, ":"

    const/4 v3, 0x4

    .line 218
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 219
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "AppCompatOverridesParser"

    if-eq v4, v3, :cond_69

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid change override entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_135

    .line 225
    :cond_69
    :try_start_69
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_73
    .catch Ljava/lang/NumberFormatException; {:try_start_69 .. :try_end_73} :catch_120

    .line 231
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7f

    goto/16 :goto_135

    :cond_7f
    const/4 v6, 0x1

    .line 235
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    .line 236
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x3

    .line 238
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 239
    sget-object v8, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->BOOLEAN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_b6

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid enabled string in override entry: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_135

    .line 243
    :cond_b6
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 244
    new-instance v8, Landroid/app/compat/PackageOverride$Builder;

    invoke-direct {v8}, Landroid/app/compat/PackageOverride$Builder;-><init>()V

    invoke-virtual {v8, v2}, Landroid/app/compat/PackageOverride$Builder;->setEnabled(Z)Landroid/app/compat/PackageOverride$Builder;

    move-result-object v2

    .line 247
    :try_start_c3
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d0

    .line 248
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/compat/PackageOverride$Builder;->setMinVersionCode(J)Landroid/app/compat/PackageOverride$Builder;

    .line 250
    :cond_d0
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_dd

    .line 251
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/app/compat/PackageOverride$Builder;->setMaxVersionCode(J)Landroid/app/compat/PackageOverride$Builder;
    :try_end_dd
    .catch Ljava/lang/NumberFormatException; {:try_start_c3 .. :try_end_dd} :catch_10a

    .line 261
    :cond_dd
    :try_start_dd
    invoke-virtual {v2}, Landroid/app/compat/PackageOverride$Builder;->build()Landroid/app/compat/PackageOverride;

    move-result-object v1

    .line 262
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fb

    .line 263
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/compat/PackageOverride;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$PackageOverrideComparator;->compare(Landroid/app/compat/PackageOverride;Landroid/app/compat/PackageOverride;)I

    move-result v2

    if-gez v2, :cond_135

    .line 264
    :cond_fb
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_102
    .catch Ljava/lang/IllegalArgumentException; {:try_start_dd .. :try_end_102} :catch_103

    goto :goto_135

    :catch_103
    move-exception v1

    const-string v2, "Failed to build PackageOverride"

    .line 267
    invoke-static {v5, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_135

    :catch_10a
    move-exception v2

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid min/max version code in override entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_135

    :catch_120
    move-exception v2

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid change ID in override entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_135
    :goto_135
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_3c

    :cond_139
    return-object p3
.end method

.method public parseRemoveOverrides(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 106
    :cond_b
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    const-string v1, "*"

    .line 107
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Wildcard can\'t be used in \'remove_overrides\' flag with an empty owned_change_ids\' flag"

    const-string v4, "AppCompatOverridesParser"

    if-eqz v2, :cond_49

    .line 108
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 109
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    .line 112
    :cond_2a
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 p1, 0x400000

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object p0

    .line 114
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_36
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 115
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_36

    :cond_48
    return-object v0

    .line 120
    :cond_49
    new-instance p0, Landroid/util/KeyValueListParser;

    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 122
    :try_start_50
    invoke-virtual {p0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_53} :catch_b8

    const/4 p1, 0x0

    move v2, p1

    .line 129
    :goto_55
    invoke-virtual {p0}, Landroid/util/KeyValueListParser;->size()I

    move-result v5

    if-ge v2, v5, :cond_b7

    .line 130
    invoke-virtual {p0, v2}, Landroid/util/KeyValueListParser;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 131
    invoke-virtual {p0, v5, v6}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    .line 133
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_75

    .line 134
    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b4

    .line 137
    :cond_75
    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b4

    :cond_79
    const-string v7, ":"

    .line 139
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v8, p1

    :goto_81
    if-ge v8, v7, :cond_b4

    aget-object v9, v6, v8

    .line 141
    :try_start_85
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 142
    new-instance v12, Lcom/android/server/compat/overrides/AppCompatOverridesParser$$ExternalSyntheticLambda0;

    invoke-direct {v12}, Lcom/android/server/compat/overrides/AppCompatOverridesParser$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v5, v12}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v12, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_9b
    .catch Ljava/lang/NumberFormatException; {:try_start_85 .. :try_end_9b} :catch_9c

    goto :goto_b1

    :catch_9c
    move-exception v10

    .line 144
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid change ID in \'remove_overrides\' flag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b1
    add-int/lit8 v8, v8, 0x1

    goto :goto_81

    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    :cond_b7
    return-object v0

    :catch_b8
    move-exception p0

    .line 124
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid format in \'remove_overrides\' flag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final verifySignature(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "AppCompatOverridesParser"

    const/4 v1, 0x0

    .line 305
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_18

    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 307
    invoke-static {p2}, Llibcore/util/HexEncoding;->decode(Ljava/lang/String;)[B

    move-result-object v2

    .line 306
    invoke-virtual {p0, p1, v2, v3}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    move v3, v1

    :cond_18
    :goto_18
    if-nez v3, :cond_31

    .line 310
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not have expected signature: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_31} :catch_32

    :cond_31
    return v3

    :catch_32
    move-exception p0

    .line 314
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to verify signature "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
