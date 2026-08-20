.class final Landroid/net/http/LegacyHttpDateTime;
.super Ljava/lang/Object;
.source "LegacyHttpDateTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    }
.end annotation


# static fields
.field private static final HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_ANSIC_REGEXP:Ljava/lang/String; = "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

.field private static final HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

.field private static final HTTP_DATE_RFC_REGEXP:Ljava/lang/String; = "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 68
    nop

    .line 69
    const-string v0, "([0-9]{1,2})[- ]([A-Za-z]{3,9})[- ]([0-9]{2,4})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    .line 70
    nop

    .line 71
    const-string v0, "[ ]([A-Za-z]{3,9})[ ]+([0-9]{1,2})[ ]([0-9]{1,2}:[0-9][0-9]:[0-9][0-9])[ ]([0-9]{2,4})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    .line 70
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDate(Ljava/lang/String;)I
    .registers 4
    .param p0, "dateString"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_19

    .line 125
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    .line 126
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 125
    return v0

    .line 128
    :cond_19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    return v0
.end method

.method private static getMonth(Ljava/lang/String;)I
    .registers 6
    .param p0, "monthString"    # Ljava/lang/String;

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 148
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    add-int/2addr v1, v3

    .line 149
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v4

    add-int/2addr v1, v4

    add-int/lit16 v1, v1, -0x123

    .line 150
    .local v1, "hash":I
    sparse-switch v1, :sswitch_data_42

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 172
    :sswitch_28
    const/16 v0, 0xa

    return v0

    .line 162
    :sswitch_2b
    const/4 v0, 0x5

    return v0

    .line 164
    :sswitch_2d
    const/4 v0, 0x6

    return v0

    .line 168
    :sswitch_2f
    const/16 v0, 0x8

    return v0

    .line 160
    :sswitch_32
    const/4 v0, 0x4

    return v0

    .line 170
    :sswitch_34
    const/16 v0, 0x9

    return v0

    .line 158
    :sswitch_37
    const/4 v0, 0x3

    return v0

    .line 156
    :sswitch_39
    return v3

    .line 166
    :sswitch_3a
    const/4 v0, 0x7

    return v0

    .line 152
    :sswitch_3c
    return v0

    .line 154
    :sswitch_3d
    return v2

    .line 174
    :sswitch_3e
    const/16 v0, 0xb

    return v0

    nop

    :sswitch_data_42
    .sparse-switch
        0x9 -> :sswitch_3e
        0xa -> :sswitch_3d
        0x16 -> :sswitch_3c
        0x1a -> :sswitch_3a
        0x1d -> :sswitch_39
        0x20 -> :sswitch_37
        0x23 -> :sswitch_34
        0x24 -> :sswitch_32
        0x25 -> :sswitch_2f
        0x28 -> :sswitch_2d
        0x2a -> :sswitch_2b
        0x30 -> :sswitch_28
    .end sparse-switch
.end method

.method private static getTime(Ljava/lang/String;)Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    .registers 6
    .param p0, "timeString"    # Ljava/lang/String;

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "i":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    .line 209
    .local v0, "hour":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-eq v2, v3, :cond_1e

    .line 210
    mul-int/lit8 v2, v0, 0xa

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int v0, v2, v1

    move v1, v3

    .line 212
    .end local v3    # "i":I
    .restart local v1    # "i":I
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    .line 214
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 v3, v2, 0x1

    .line 215
    .end local v2    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v1, v2

    .line 217
    .local v1, "minute":I
    add-int/lit8 v3, v3, 0x1

    .line 219
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v4, v2, 0x1

    .line 220
    .end local v2    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/2addr v3, v2

    .line 222
    .local v3, "second":I
    new-instance v2, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;

    invoke-direct {v2, v0, v1, v3}, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;-><init>(III)V

    return-object v2
.end method

.method private static getYear(Ljava/lang/String;)I
    .registers 7
    .param p0, "yearString"    # Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_22

    .line 182
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0xa

    .line 183
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 184
    .local v0, "year":I
    const/16 v1, 0x46

    if-lt v0, v1, :cond_1f

    .line 185
    add-int/lit16 v1, v0, 0x76c

    return v1

    .line 187
    :cond_1f
    add-int/lit16 v1, v0, 0x7d0

    return v1

    .line 189
    .end local v0    # "year":I
    :cond_22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_44

    .line 191
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit8 v0, v0, 0x64

    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 193
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 194
    .restart local v0    # "year":I
    add-int/lit16 v1, v0, 0x76c

    return v1

    .line 195
    .end local v0    # "year":I
    :cond_44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_6d

    .line 196
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    mul-int/lit16 v0, v0, 0x3e8

    .line 197
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 198
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    .line 199
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v0, v1

    .line 196
    return v0

    .line 201
    :cond_6d
    const/16 v0, 0x7b2

    return v0
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 11
    .param p0, "timeString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, "date":I
    const/4 v1, 0x0

    .line 90
    .local v1, "month":I
    const/16 v2, 0x7b2

    .line 93
    .local v2, "year":I
    sget-object v3, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_RFC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 94
    .local v3, "rfcMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_35

    .line 95
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/http/LegacyHttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v0

    .line 96
    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/http/LegacyHttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v1

    .line 97
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/http/LegacyHttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v2

    .line 98
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/http/LegacyHttpDateTime;->getTime(Ljava/lang/String;)Landroid/net/http/LegacyHttpDateTime$TimeOfDay;

    move-result-object v4

    .local v4, "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    goto :goto_62

    .line 100
    .end local v4    # "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    :cond_35
    sget-object v4, Landroid/net/http/LegacyHttpDateTime;->HTTP_DATE_ANSIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 101
    .local v4, "ansicMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_97

    .line 102
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/LegacyHttpDateTime;->getMonth(Ljava/lang/String;)I

    move-result v1

    .line 103
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/http/LegacyHttpDateTime;->getDate(Ljava/lang/String;)I

    move-result v0

    .line 104
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/http/LegacyHttpDateTime;->getTime(Ljava/lang/String;)Landroid/net/http/LegacyHttpDateTime$TimeOfDay;

    move-result-object v6

    .line 105
    .local v6, "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/http/LegacyHttpDateTime;->getYear(Ljava/lang/String;)I

    move-result v2

    move-object v4, v6

    .line 111
    .end local v6    # "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    .local v4, "timeOfDay":Landroid/net/http/LegacyHttpDateTime$TimeOfDay;
    :goto_62
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    .line 112
    .local v5, "utc":Ljava/util/TimeZone;
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-direct {v6, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 113
    .local v6, "calendar":Ljava/util/GregorianCalendar;
    invoke-virtual {v6, v8, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 114
    invoke-virtual {v6, v7, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 115
    const/4 v7, 0x5

    invoke-virtual {v6, v7, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 116
    const/16 v7, 0xb

    iget v8, v4, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;->hour:I

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 117
    const/16 v7, 0xc

    iget v8, v4, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;->minute:I

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 118
    const/16 v7, 0xd

    iget v8, v4, Landroid/net/http/LegacyHttpDateTime$TimeOfDay;->second:I

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 119
    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 120
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    return-wide v7

    .line 107
    .end local v5    # "utc":Ljava/util/TimeZone;
    .end local v6    # "calendar":Ljava/util/GregorianCalendar;
    .local v4, "ansicMatcher":Ljava/util/regex/Matcher;
    :cond_97
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5
.end method
