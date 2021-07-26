class EnsaladasController < InheritedResources::Base

  private

    def ensalada_params
      params.require(:ensalada).permit(:nombre, :precio)
    end

end
