.class public Landroid/app/AliasActivity;
.super Landroid/app/Activity;
.source "AliasActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final greylist-max-o ALIAS_META_DATA:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const-string v0, "android.app.alias"

    iput-object v0, p0, Landroid/app/AliasActivity;->ALIAS_META_DATA:Ljava/lang/String;

    return-void
.end method

.method private greylist-max-o parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;
    .registers 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 94
    .local v0, "attrs":Landroid/util/AttributeSet;
    const/4 v1, 0x0

    .line 97
    .local v1, "intent":Landroid/content/Intent;
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_11

    const/4 v2, 0x2

    if-eq v3, v2, :cond_11

    goto :goto_5

    .line 101
    :cond_11
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "nodeName":Ljava/lang/String;
    const-string v5, "alias"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 108
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 109
    .local v5, "outerDepth":I
    :cond_21
    :goto_21
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v6

    move v3, v6

    if-eq v6, v4, :cond_53

    const/4 v6, 0x3

    if-ne v3, v6, :cond_31

    .line 110
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v5, :cond_53

    .line 111
    :cond_31
    if-eq v3, v6, :cond_21

    const/4 v6, 0x4

    if-ne v3, v6, :cond_37

    .line 112
    goto :goto_21

    .line 115
    :cond_37
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v6, "intent"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 117
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v0}, Landroid/content/Intent;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/content/Intent;

    move-result-object v6

    .line 118
    .local v6, "gotIntent":Landroid/content/Intent;
    if-nez v1, :cond_4e

    move-object v1, v6

    .line 119
    .end local v6    # "gotIntent":Landroid/content/Intent;
    :cond_4e
    goto :goto_21

    .line 120
    :cond_4f
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_21

    .line 124
    :cond_53
    return-object v1

    .line 103
    .end local v5    # "outerDepth":I
    :cond_54
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alias meta-data must start with <alias> tag; found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 105
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    const-string v0, "Error parsing alias"

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/4 v1, 0x0

    .line 61
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_6
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    const/16 v4, 0x80

    .line 61
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    .line 63
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    invoke-virtual {p0}, Landroid/app/AliasActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.app.alias"

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v1, v3

    .line 65
    if-eqz v1, :cond_3b

    .line 70
    invoke-direct {p0, v1}, Landroid/app/AliasActivity;->parseAlias(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v3

    .line 71
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_33

    .line 76
    invoke-virtual {p0, v3}, Landroid/app/AliasActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Landroid/app/AliasActivity;->finish()V
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_2d} :catch_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_2d} :catch_4c
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_2d} :catch_45
    .catchall {:try_start_6 .. :try_end_2d} :catchall_43

    .line 86
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    if-eqz v1, :cond_32

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 88
    :cond_32
    return-void

    .line 72
    .restart local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_33
    :try_start_33
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No <intent> tag found in alias description"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v4

    .line 66
    .end local v3    # "intent":Landroid/content/Intent;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_3b
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Alias requires a meta-data field android.app.alias"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v3
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_33 .. :try_end_43} :catch_53
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_33 .. :try_end_43} :catch_4c
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_43} :catch_45
    .catchall {:try_start_33 .. :try_end_43} :catchall_43

    .line 86
    .end local v2    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catchall_43
    move-exception v0

    goto :goto_5a

    .line 83
    :catch_45
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    :try_start_46
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v3

    .line 81
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_4c
    move-exception v2

    .line 82
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v3

    .line 79
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :catch_53
    move-exception v2

    .line 80
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/app/AliasActivity;
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    throw v3
    :try_end_5a
    .catchall {:try_start_46 .. :try_end_5a} :catchall_43

    .line 86
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/app/AliasActivity;
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :goto_5a
    if-eqz v1, :cond_5f

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 87
    :cond_5f
    throw v0
.end method
