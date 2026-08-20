.class public Lcom/mediatek/custom/CustomPropInterface;
.super Ljava/lang/Object;
.source "CustomPropInterface.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBrowserVersion()Ljava/lang/String;
    .registers 11

    .line 18
    const-string v0, "CustomProp"

    const/4 v1, 0x0

    .line 20
    .local v1, "result":Ljava/lang/String;
    :try_start_3
    const-string v2, "com.android.internal.R$string"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 21
    .local v2, "rClass":Ljava/lang/Class;
    const-string v3, "web_user_agent"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 22
    .local v3, "webUa":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    .line 24
    .local v4, "resID":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, "defaultAgent":Ljava/lang/String;
    const-string v6, "\\s+AppleWebKit\\/(\\d+\\.?\\d*)\\s+"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 26
    .local v6, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 28
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 29
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getBrowserVersion->matcher.find:true matcher.group(0):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    .line 30
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " matcher.group(1):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 31
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {v7, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_65

    .line 35
    :cond_60
    const-string v8, "getBrowserVersion->matcher.find:false"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_65} :catch_6c
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_65} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_65} :catch_68
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_65} :catch_66

    .line 45
    .end local v2    # "rClass":Ljava/lang/Class;
    .end local v3    # "webUa":Ljava/lang/reflect/Field;
    .end local v4    # "resID":I
    .end local v5    # "defaultAgent":Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    .end local v7    # "matcher":Ljava/util/regex/Matcher;
    :goto_65
    goto :goto_6e

    .line 43
    :catch_66
    move-exception v2

    goto :goto_6e

    .line 41
    :catch_68
    move-exception v2

    goto :goto_65

    .line 39
    :catch_6a
    move-exception v2

    goto :goto_65

    .line 37
    :catch_6c
    move-exception v2

    goto :goto_65

    .line 47
    :goto_6e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrowserVersion->result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-object v1
.end method

.method private static getReleaseDate(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "buildDate"    # Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReleaseDate->buildDate["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CustomProp"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Locale;

    const-string v3, "en"

    const-string v4, "CN"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EEE MMM dd HH:mm:ss zzz yyyy"

    invoke-direct {v0, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 59
    .local v0, "format":Ljava/text/SimpleDateFormat;
    :try_start_2e
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_32
    .catch Ljava/text/ParseException; {:try_start_2e .. :try_end_32} :catch_33

    .line 62
    .local v2, "date":Ljava/util/Date;
    goto :goto_36

    .line 60
    .end local v2    # "date":Ljava/util/Date;
    :catch_33
    move-exception v2

    .line 61
    .local v2, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    move-object v2, v3

    .line 64
    .local v2, "date":Ljava/util/Date;
    :goto_36
    if-eqz v2, :cond_7f

    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getCalendar()Ljava/util/Calendar;

    move-result-object v1

    .line 67
    .local v1, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "%02d.%02d.%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "result":Ljava/lang/String;
    goto :goto_80

    .line 70
    .end local v1    # "result":Ljava/lang/String;
    :cond_7f
    const/4 v1, 0x0

    .line 72
    .restart local v1    # "result":Ljava/lang/String;
    :goto_80
    return-object v1
.end method
