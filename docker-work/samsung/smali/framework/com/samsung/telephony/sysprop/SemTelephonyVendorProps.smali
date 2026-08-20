.class public final Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;
.super Ljava/lang/Object;
.source "SemTelephonyVendorProps.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist build_characteristics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    const-string/jumbo v0, "ro.vendor.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "value":Ljava/lang/String;
    new-instance v1, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist cp_debug_level()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    const-string/jumbo v0, "ro.vendor.boot.cp_debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist debug_level()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 163
    const-string/jumbo v0, "ro.vendor.boot.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist escape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 119
    const-string v0, "([\\\\,])"

    const-string v1, "\\\\$1"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist force_upload()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    const-string/jumbo v0, "ro.vendor.boot.force_upload"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatEnumList(Ljava/util/List;Ljava/util/function/Function;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 153
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "elementFormatter":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 156
    .local v2, "element":Ljava/lang/Enum;, "TT;"
    if-nez v2, :cond_1c

    const-string v3, ""

    goto :goto_22

    :cond_1c
    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    :goto_22
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 157
    .end local v2    # "element":Ljava/lang/Enum;, "TT;"
    goto :goto_b

    .line 159
    :cond_26
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatList(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 123
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 126
    .local v2, "element":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1a

    const-string v3, ""

    goto :goto_22

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_22
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    .end local v2    # "element":Ljava/lang/Object;, "TT;"
    goto :goto_b

    .line 129
    :cond_26
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatUIntList(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 133
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 135
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 136
    .local v2, "element":Ljava/lang/Integer;
    if-nez v2, :cond_1c

    const-string v3, ""

    goto :goto_28

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toUnsignedString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_28
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    .end local v2    # "element":Ljava/lang/Integer;
    goto :goto_b

    .line 139
    :cond_2c
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist formatULongList(Ljava/util/List;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 143
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .local v0, "joiner":Ljava/util/StringJoiner;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 146
    .local v2, "element":Ljava/lang/Long;
    if-nez v2, :cond_1c

    const-string v3, ""

    goto :goto_28

    :cond_1c
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toUnsignedString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_28
    invoke-virtual {v0, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 147
    .end local v2    # "element":Ljava/lang/Long;
    goto :goto_b

    .line 149
    :cond_2c
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$build_characteristics$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "v"    # Ljava/lang/String;

    .line 179
    invoke-static {p0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist radio_default_network()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 183
    const-string/jumbo v0, "ro.vendor.radio.default_network"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist radio_default_network(Ljava/lang/Integer;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/Integer;

    .line 188
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "ro.vendor.radio.default_network"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public static blacklist radio_default_network_by()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    const-string/jumbo v0, "ro.vendor.radio.default_network_by"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist radio_default_network_by(Ljava/lang/String;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 197
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "ro.vendor.radio.default_network_by"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static blacklist sec_radio_def_network()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 201
    const-string/jumbo v0, "ro.vendor.sec.radio.def_network"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sec_radio_def_network(Ljava/lang/String;)V
    .registers 3
    .param p0, "value"    # Ljava/lang/String;

    .line 206
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_9
    const-string/jumbo v1, "ro.vendor.sec.radio.def_network"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method private static blacklist tryParseBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 21
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_44

    :cond_d
    goto :goto_37

    :sswitch_e
    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x3

    goto :goto_38

    :sswitch_18
    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_38

    :sswitch_23
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_38

    :sswitch_2d
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x2

    goto :goto_38

    :goto_37
    const/4 v0, -0x1

    :goto_38
    packed-switch v0, :pswitch_data_56

    .line 29
    const/4 v0, 0x0

    return-object v0

    .line 27
    :pswitch_3d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 24
    :pswitch_40
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    nop

    :sswitch_data_44
    .sparse-switch
        0x30 -> :sswitch_2d
        0x31 -> :sswitch_23
        0x36758e -> :sswitch_18
        0x5cb1923 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_40
        :pswitch_40
        :pswitch_3d
        :pswitch_3d
    .end packed-switch
.end method

.method private static blacklist tryParseDouble(Ljava/lang/String;)Ljava/lang/Double;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 67
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 68
    :catch_5
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 79
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v0

    .line 80
    :catch_b
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseEnumList(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 107
    .local p0, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 109
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_29

    aget-object v4, v1, v3

    .line 112
    .local v4, "element":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseEnum(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v4    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 115
    :cond_29
    return-object v0
.end method

.method private static blacklist tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 35
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 36
    :catch_5
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseList(Ljava/util/function/Function;Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 86
    .local p0, "elementParser":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/String;TT;>;"
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 88
    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .line 92
    .local v1, "p":I
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v2, "sb":Ljava/lang/StringBuilder;
    :goto_19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_43

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_43

    .line 94
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_31

    add-int/lit8 v1, v1, 0x1

    .line 95
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_38

    goto :goto_43

    .line 96
    :cond_38
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "p":I
    .local v3, "p":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_19

    .line 98
    .end local v3    # "p":I
    .restart local v1    # "p":I
    :cond_43
    :goto_43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_55

    .line 103
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    return-object v0

    .line 100
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_55
    nop

    .end local v2    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v1, v1, 0x1

    .line 101
    goto :goto_14
.end method

.method private static blacklist tryParseLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 52
    :catch_5
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 74
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    goto :goto_b

    :cond_a
    move-object v0, p0

    :goto_b
    return-object v0
.end method

.method private static blacklist tryParseUInt(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 43
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseUnsignedInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 44
    :catch_9
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static blacklist tryParseULong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 59
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseUnsignedLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 60
    :catch_9
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist vendor_api_level()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 210
    const-string/jumbo v0, "ro.vendor.api_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/telephony/sysprop/SemTelephonyVendorProps;->tryParseInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    return-object v1
.end method
