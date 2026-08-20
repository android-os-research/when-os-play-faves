.class public Lcom/android/server/enterprise/auditlog/Filter;
.super Ljava/lang/Object;
.source "Filter.java"


# instance fields
.field public mMatcher:Ljava/util/regex/Matcher;

.field public mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filtering(Ljava/lang/String;)Z
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/Filter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Filter;->mMatcher:Ljava/util/regex/Matcher;

    .line 51
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public setFilter(Ljava/lang/String;)Z
    .registers 2

    .line 42
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/Filter;->mPattern:Ljava/util/regex/Pattern;
    :try_end_6
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_6} :catch_8

    const/4 p0, 0x1

    return p0

    :catch_8
    const/4 p0, 0x0

    return p0
.end method
