.class final Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/ActivityChooserModel;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/ActivityChooserModel;)V
    .registers 2

    .line 1066
    iput-object p1, p0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 1066
    invoke-virtual {p0, p1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs blacklist doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .registers 19
    .param p1, "args"    # [Ljava/lang/Object;

    .line 1071
    move-object/from16 v1, p0

    const-string v0, "historical-record"

    const-string v2, "historical-records"

    const-string v3, "Error writing historical recrod file: "

    const/4 v4, 0x0

    aget-object v5, p1, v4

    check-cast v5, Ljava/util/List;

    .line 1072
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    const/4 v6, 0x1

    aget-object v7, p1, v6

    check-cast v7, Ljava/lang/String;

    .line 1074
    .local v7, "hostoryFileName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1077
    .local v8, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    :try_start_14
    iget-object v10, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v10}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmContext(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v7, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v10
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1e} :catch_12f

    move-object v8, v10

    .line 1081
    nop

    .line 1083
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v10

    .line 1086
    .local v10, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_24
    invoke-interface {v10, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1087
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v11}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1088
    invoke-interface {v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    .line 1091
    .local v11, "recordCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3c
    if-ge v12, v11, :cond_76

    .line 1092
    invoke-interface {v5, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 1093
    .local v13, "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1094
    const-string v14, "activity"

    iget-object v15, v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    .line 1095
    invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    .line 1094
    invoke-interface {v10, v9, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    const-string/jumbo v14, "time"
    :try_end_55
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_55} :catch_f0
    .catch Ljava/lang/IllegalStateException; {:try_start_24 .. :try_end_55} :catch_c3
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_55} :catch_96
    .catchall {:try_start_24 .. :try_end_55} :catchall_90

    move-object/from16 v16, v5

    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v16, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :try_start_57
    iget-wide v4, v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v10, v9, v14, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    const-string/jumbo v4, "weight"

    iget v5, v13, Landroid/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v9, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    invoke-interface {v10, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    nop

    .end local v13    # "record":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x0

    goto :goto_3c

    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :cond_76
    move-object/from16 v16, v5

    .line 1104
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v12    # "i":I
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v10, v9, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_7e} :catch_8e
    .catch Ljava/lang/IllegalStateException; {:try_start_57 .. :try_end_7e} :catch_8c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_7e} :catch_8a
    .catchall {:try_start_57 .. :try_end_7e} :catchall_120

    .line 1117
    .end local v11    # "recordCount":I
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v8, :cond_11f

    .line 1120
    :try_start_85
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_11d

    goto/16 :goto_11c

    .line 1114
    :catch_8a
    move-exception v0

    goto :goto_99

    .line 1112
    :catch_8c
    move-exception v0

    goto :goto_c6

    .line 1110
    :catch_8e
    move-exception v0

    goto :goto_f3

    .line 1117
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catchall_90
    move-exception v0

    move-object/from16 v16, v5

    move-object v2, v0

    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    goto/16 :goto_122

    .line 1114
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_96
    move-exception v0

    move-object/from16 v16, v5

    .line 1115
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_99
    :try_start_99
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_99 .. :try_end_b7} :catchall_120

    .line 1117
    nop

    .end local v0    # "ioe":Ljava/io/IOException;
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v8, :cond_11f

    .line 1120
    :try_start_bf
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_11d

    goto :goto_11c

    .line 1112
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_c3
    move-exception v0

    move-object/from16 v16, v5

    .line 1113
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "ise":Ljava/lang/IllegalStateException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_c6
    :try_start_c6
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e4
    .catchall {:try_start_c6 .. :try_end_e4} :catchall_120

    .line 1117
    nop

    .end local v0    # "ise":Ljava/lang/IllegalStateException;
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v8, :cond_11f

    .line 1120
    :try_start_ec
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_11d

    goto :goto_11c

    .line 1110
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_f0
    move-exception v0

    move-object/from16 v16, v5

    .line 1111
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :goto_f3
    :try_start_f3
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v4}, Landroid/widget/ActivityChooserModel;->-$$Nest$fgetmHistoryFileName(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_111
    .catchall {:try_start_f3 .. :try_end_111} :catchall_120

    .line 1117
    nop

    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v8, :cond_11f

    .line 1120
    :try_start_119
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_11c} :catch_11d

    .line 1123
    :goto_11c
    goto :goto_11f

    .line 1121
    :catch_11d
    move-exception v0

    goto :goto_11c

    .line 1126
    :cond_11f
    :goto_11f
    return-object v9

    .line 1117
    :catchall_120
    move-exception v0

    move-object v2, v0

    :goto_122
    iget-object v0, v1, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/widget/ActivityChooserModel;

    invoke-static {v0, v6}, Landroid/widget/ActivityChooserModel;->-$$Nest$fputmCanReadHistoricalData(Landroid/widget/ActivityChooserModel;Z)V

    .line 1118
    if-eqz v8, :cond_12e

    .line 1120
    :try_start_129
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_129 .. :try_end_12c} :catch_12d

    .line 1123
    goto :goto_12e

    .line 1121
    :catch_12d
    move-exception v0

    .line 1125
    :cond_12e
    :goto_12e
    throw v2

    .line 1078
    .end local v10    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    :catch_12f
    move-exception v0

    move-object/from16 v16, v5

    .line 1079
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .local v0, "fnfe":Ljava/io/FileNotFoundException;
    .restart local v16    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-static {}, Landroid/widget/ActivityChooserModel;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    return-object v9
.end method
