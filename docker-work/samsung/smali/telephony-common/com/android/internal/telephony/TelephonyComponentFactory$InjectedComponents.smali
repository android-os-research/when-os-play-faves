.class Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;
.super Ljava/lang/Object;
.source "TelephonyComponentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyComponentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InjectedComponents"
.end annotation


# instance fields
.field private final blacklist mComponentNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

.field private blacklist mJarPath:Ljava/lang/String;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public static synthetic blacklist $r8$lambda$NKSnxnbvmcbw0TG5MazU9OQd4yg(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$getValidatedPaths$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$NbAWyv9_i92Qu-bq7geULPcvFIM(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$parseComponents$4(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$R1cDUO8mbjY3es7D_aI4dAJhNyU(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$parseXml$2(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cd0hI0F60p9kOrcsXQzyZnHhKk4(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$getValidatedPaths$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$r7Ew0Mk5Gl8jRYkpqbF2wMfnUs0(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->lambda$parseInjection$3(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmComponentNames(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInjectedInstance(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Lcom/android/internal/telephony/TelephonyComponentFactory;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetValidatedPaths(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->getValidatedPaths()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misComponentInjected(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->isComponentInjected(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mmakeInjectedInstance(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->makeInjectedInstance()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mparseXml(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;-><init>()V

    return-void
.end method

.method private blacklist getValidatedPaths()Ljava/lang/String;
    .registers 3

    .line 110
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mJarPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3e

    .line 114
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mJarPath:Ljava/lang/String;

    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda0;-><init>()V

    .line 115
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda1;-><init>()V

    .line 117
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 127
    invoke-interface {p0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object p0

    .line 128
    invoke-static {v0}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3e
    :goto_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist isComponentInjected(Ljava/lang/String;)Z
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 152
    :cond_6
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic blacklist lambda$getValidatedPaths$0(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "/system/"

    .line 115
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "/product/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, "/system_ext/"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method private static synthetic blacklist lambda$getValidatedPaths$1(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 120
    :try_start_1
    invoke-static {p0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object v1

    .line 121
    iget-wide v1, v1, Landroid/system/StructStatVfs;->f_flag:J

    sget p0, Landroid/system/OsConstants;->ST_RDONLY:I
    :try_end_9
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_9} :catch_13

    int-to-long v3, p0

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    :catch_13
    move-exception v1

    .line 123
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Injection jar is not protected , path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 123
    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic blacklist lambda$parseComponents$4(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 176
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseComponent(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private synthetic blacklist lambda$parseInjection$3(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseComponents(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private synthetic blacklist lambda$parseXml$2(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 2

    .line 160
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->setAttributes(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseInjection(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method private blacklist makeInjectedInstance()V
    .registers 5

    .line 132
    invoke-direct {p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->getValidatedPaths()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "validated paths: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_75

    .line 136
    :try_start_22
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 137
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 138
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/TelephonyComponentFactory;

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mInjectedInstance:Lcom/android/internal/telephony/TelephonyComponentFactory;
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_39} :catch_58
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_39} :catch_3a
    .catch Ljava/lang/InstantiationException; {:try_start_22 .. :try_end_39} :catch_3a

    goto :goto_75

    :catch_3a
    move-exception p0

    .line 143
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injection failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    :catch_58
    move-exception p0

    .line 141
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_75
    :goto_75
    return-void
.end method

.method private blacklist parseComponent(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 184
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    .line 186
    :cond_4
    :goto_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 187
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v0, :cond_2b

    :cond_14
    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 189
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mComponentNames:Ljava/util/Set;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_4

    :catch_21
    move-exception p0

    .line 193
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to parse the component."

    invoke-static {p1, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2b
    return-void
.end method

.method private blacklist parseComponents(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 176
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    const/4 v1, 0x1

    const-string v2, "component"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseInjection(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 169
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    const/4 v1, 0x0

    const-string v2, "components"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 5

    .line 159
    new-instance v0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;)V

    const/4 v1, 0x0

    const-string v2, "injection"

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseXmlByTag(Lorg/xmlpull/v1/XmlPullParser;ZLjava/util/function/Consumer;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 203
    :try_start_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    .line 205
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_40

    const/4 v1, 0x3

    if-ne v0, v1, :cond_14

    .line 206
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, p0, :cond_40

    :cond_14
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 207
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_24
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_24} :catch_27
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_24} :catch_27

    if-nez p2, :cond_4

    return-void

    :catch_27
    move-exception p0

    .line 215
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to parse or find tag: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_40
    return-void
.end method

.method private blacklist setAttributes(Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 6

    const/4 v0, 0x0

    .line 225
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 226
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    .line 228
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 229
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mPackageName:Ljava/lang/String;

    goto :goto_24

    :cond_1a
    const-string v3, "jar"

    .line 230
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 231
    iput-object v2, p0, Lcom/android/internal/telephony/TelephonyComponentFactory$InjectedComponents;->mJarPath:Ljava/lang/String;

    :cond_24
    :goto_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method
