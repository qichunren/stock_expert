class Stock < ActiveRecord::Base
  # http://www.sse.com.cn/sseportal/webapp/datapresent/SSEQueryStockInfoAct?reportName=BizCompStockInfoRpt&PRODUCTID=&PRODUCTJP=&PRODUCTNAME=&keyword=&tab_flg=&CURSOR=1
  # http://www.sse.com.cn/sseportal/webapp/datapresent/SSEQueryStockInfoAct?reportName=BizCompStockInfoRpt&PRODUCTID=&PRODUCTJP=&PRODUCTNAME=&keyword=&tab_flg=&CURSOR=51
  
    def self.fetch_stocks
      doc = Nokogiri::HTML(open('http://www.sse.com.cn/sseportal/webapp/datapresent/SSEQueryStockInfoAct?reportName=BizCompStockInfoRpt&PRODUCTID=&PRODUCTJP=&PRODUCTNAME=&keyword=&tab_flg=&CURSOR=1'))
      table = doc.xpath("//table[@bgcolor=\"#337fb2\"]/tr/td[@class=\"table3\"]")
      table.each do |item|
        new_stock = Stock.new
        if item.inner_html =~ /\<a/
          a_item = item.xpath("a")
          a_item.inner_text.gsub!(/\n/, "")
          puts "code:" + a_item.inner_text
        else
          item.inner_text.gsub!(/\n/, "")
          puts "name:" + item.inner_text
        end
      end # end each
    end
end
